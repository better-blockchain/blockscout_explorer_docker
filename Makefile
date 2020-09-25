
include ./Makefile.build.mk
include ./Makefile.local.mk

#######################################################################################

run:
	docker-compose -f ./compose-app.yml up -d
	docker-compose -f ./compose-app.yml ps
	open http://localhost:16001

restart:
	docker-compose -f ./compose-app.yml restart
	docker-compose -f ./compose-app.yml ps
	open http://localhost:16001

stop:
	docker-compose -f ./compose-app.yml down
	docker-compose -f ./compose-app.yml ps

log:
	docker-compose -f ./compose-app.yml logs -f -t


#######################################################################################


git-push:
	git push origin fix:fix --tags



