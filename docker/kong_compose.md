```shell
# init kong databse 
docker run --rm \
    --link kong-database:kong-database \
    -e "KONG_DATABASE=postgres" \
    -e "KONG_PG_HOST=172.17.0.1" \
    -e "KONG_PG_PORT=31014" \
    -e "KONG_PG_USER=postgres" \
    -e "KONG_PG_PASSWORD=dataknown1234" \
    -e "KONG_PG_DB=kong" \
    kong kong migrations bootstrap
```

```shell
# init kong databse 
docker run --rm pantsel/konga:latest -c postgres -a postgresql://postgres:dataknown1234@172.17.0.1:31014/dataknown
```
