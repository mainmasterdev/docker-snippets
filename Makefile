
python-django:
	docker run -v ${PWD}/$(name):/app --rm python:3.11.0b5-alpine3.16 sh -c "pip install Django==4.1 && cd /app && django-admin startproject app . && pip freeze > requirements.txt && wget https://raw.githubusercontent.com/mainmasterdev/docker-snippets/main/python/django/Makefile"
	echo $(name) created



node-nestjs-create:
	docker run -v ${PWD}/$(PROJECT):/app --rm node:18-alpine3.15 sh -c "npm i -g @nestjs/cli && cd /app && nest new . -p npm"
	echo $(PROJECT) created
ruby-rails-create:
	docker run -v ${PWD}/$(PROJECT):/app --rm ruby:3.1.2-alpine3.16 sh -c "ruby --version && apk add ruby-dev build-base libxml2-dev libxslt-dev libpq-dev git tzdata && gem update --system  && gem install tzinfo tzinfo-data rails pg && rails new app/ --database=postgresql"
	echo $(PROJECT) created
go-gin-create:
	docker run -v ${PWD}/$(PROJECT):/app --rm golang:1.19.0-alpine3.16 sh -c "ls && cd /app && go mod init github.com/venttures/$(PROJECT) && go get github.com/spf13/viper github.com/gin-gonic/gin gorm.io/gorm gorm.io/driver/postgres && mkdir -p cmd pkg/common/db pkg/common/envs pkg/common/models"
