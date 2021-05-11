init:
	docker-compose run --rm  terraform  terraform init 

plan:
	docker-compose run --rm  terraform  terraform plan 

deploy:
	docker-compose run --rm  terraform  terraform deploy 

destroy:
	docker-compose run --rm  terraform  terraform destroy 
