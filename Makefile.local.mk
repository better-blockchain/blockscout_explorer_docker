
#######################################################################################
# git clone + local build + run
#######################################################################################

build-run:
	docker-compose -f ./compose-build.yml up -d
	docker-compose -f ./compose-build.yml ps

build-restart:
	docker-compose -f ./compose-build.yml restart
	docker-compose -f ./compose-build.yml ps

build-stop:
	docker-compose -f ./compose-build.yml down
	docker-compose -f ./compose-build.yml ps

build-log:
	docker-compose -f ./compose-build.yml logs -f -t

