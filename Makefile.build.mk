
#
# ref: https://juejin.im/post/6844903844745314317
#

build-explorer:
	docker build --file ./DockerfileExplorer --tag "betterblockchain/blockscout:explorer-0.1.0" .

build-db:
	docker build --file ./DockerfilePostgres --tag "betterblockchain/blockscout:pg-0.1.0" .

build-geth:
	docker build --file ./DockerfileGeth --tag "betterblockchain/blockscout:geth-0.1.0" .


#
# docker hub login
#
login:
	docker login
	# username + pwd

#
# https://hub.docker.com/repository/docker/betterblockchain/blockscout
#	- docker push betterblockchain/blockscout:tagname
push-explorer:
	docker push betterblockchain/blockscout:explorer-0.1.0

push-db:
	docker push betterblockchain/blockscout:pg-0.1.0

push-geth:
	docker push betterblockchain/blockscout:geth-0.1.0

