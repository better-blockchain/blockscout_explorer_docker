
include ./Makefile.build.mk



run:
	docker-compose -f ./compose-app.yml up -d
	docker-compose -f ./compose-app.yml ps

restart:
	docker-compose -f ./compose-app.yml restart
	docker-compose -f ./compose-app.yml ps


stop:
	docker-compose -f ./compose-app.yml down
	docker-compose -f ./compose-app.yml ps

log:
	docker-compose -f ./compose-app.yml logs -f -t



