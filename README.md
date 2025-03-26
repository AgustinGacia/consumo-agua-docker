# Steps:

## 1. Create docker container
```
docker-compose create
```

## 2. Start container
```
docker-compose start
```

## 3. Create InfluxDB Token & Update the .env file
```
docker-compose exec influxdb influxdb3 create token
```
### Add to the .env file the bearer token
```
INFLUXDB_TOKEN=your_new_token_here
```

## 4. Restart Docker
```
docker-compose restart
```

## 5. Check data in InfluxDB
```

docker-compose exec influxdb query --database consumo_agua "SHOW TABLES"
docker-compose exec influxdb influxdb3 query --database consumo_agua "SELECT * FROM mqtt_consumer WHERE time > NOW() - INTERVAL '1 hour'"
```
