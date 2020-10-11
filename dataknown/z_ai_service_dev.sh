docker-compose -f ./database.yml --env-file ./dataknown_dev.env up -d
docker-compose -f ./user_auth.yml --env-file ./dataknown_dev.env up -d
docker-compose -f ./z_ai_service.yml --env-file ./dataknown_dev.env up -d