SERVICE:= gnn
SRC := /work/gnn/src


help:
	@echo cat Makefile

# fooks
dir-fook:
	@make --directory $(path) $(target)

# frontend 
.PHONY: r-install
r-install:
	R -e "renv::install("$(pkj)")"

.PHONY: r-snap
r-snap:
	R -e "renv::snapshot()"
# @make dir-fook path=$(SRC) target=create-r-snap

# backend


# env
.PHONY: up
up:
	docker-compose up

.PHONY: up/d
up/d:
	docker-compose up -d
	docker exec -it $(SERVICE) /bin/bash

.PHONY: stop
stop:
	docker-compose stop

.PHONY: down
down:
	docker-compose down

.PHONY: rm
rm: 
	docker-compose down --rmi all --volumes --remove-orphans

.PHONY: logs
logs:
	docker-compose logs -f

### なんかlibが壊れた🙃
.PHONY: lib-init
lib-init:
	cd ./lib
	git clone https://github.com/hosseinmoein/DataFrame.git
	git clone https://github.com/dpilger26/NumCpp.git
	wget https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-linux-x86_64-2.6.0.tar


# health check
.PHONY: docker-icheck
docker-ichekc:
	docker image ls
.PHONY: docker-check
docker-check:
	docker ps -a

# docker native
.PHONY: docker-build
docker-build:
	docker build -t $(IMAGE_NAME):$(TAG) .

.PHONY: docker-up
docker-up: 
	# this command need arg = IID
	# check IID: make docker-ichekc
	docker run --name $(COTEINA_NAME) -itd $(IID)
	docker exec -it $(COTEINA_NAME) bash

.PHONY: docker-stop
docker-stop:
	docker stop $(COTEINA_NAME)

.PHONY: docker-down
docker-down:
	docker stop $(COTEINA_NAME)
	docker rm $(COTEINA_NAME)
	docker rmi $(IMAGE_NAME):$(TAG)