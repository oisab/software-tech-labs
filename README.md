# Технологии разработки программного обеспечения<br>Исаев Осман Абдурахманович, МАС2131
## Лабораторная работа №1: Создание микросервиса на Spring Boot с базой данных.<br>Лабораторная работа №2: Cоздание кластера Kubernetes и деплой приложения.
Цель лабораторной работы №1: Знакомство с проектированием многослойной архитектуры Web-API (веб-приложений, микро-сервисов).<br>
Цель лабораторной работы №2: Знакомство с кластерной архитектурой на примере Kubernetes и деплой приложения в кластер.<br>

## Сборка и запуск проекта
Для сборки и запуска проекта необходимо:
* Клонировать репозиторий: ```git clone https://github.com/ZenovichNikita/mtusi_lab1.git```
* Открыть его в среде разработки IntelliJ IDEA Ultimate Edition
* Запустить БД в Docker командой в терминале: ```docker run -e POSTGRES_PASSWORD=root -p 5432:5432 postgres```
* Собрать приложение, открыв терминал в папке проекта и введя команду: ```mvn package -Dmaven.test.skip=true```
* Запустить программу в Docker-контейнере командой в терминале: ```docker build . -t simpleapi:latest```

## Ендпоинты
* GET (GET) ```http://localhost:8080/api/v1/products/{id}```
* GET ALL (GET) ```http://localhost:8080/api/v1/products```
* SAVE (POST) ```http://localhost:8080/api/v1/products {"name": "имя","brand": "бренд","price": 1500,"quantity": 3}```
* DELETE (DELETE) ```http://localhost:8080//api/v1/products/{id}```
* GET HOSTNAME (GET) ```http://localhost:8080/api/v1/status```

## CURL-запросы
* Получить конкретный экземпляр таблицы products по id : ```curl GET {adress}/api/v1/products/{id}```
* Получить содержимое таблицы products: ```curl GET {adress}/api/v1/products```
* Добавить элемент в таблицу products: ```curl POST {adress}/api/v1/products -d '{"name": "{имя}","brand": "{брэнд}","price": {цена},"quantity": {количество}}' -H "Content-Type: application/json"```
* Удалить элемент из таблицы products: ```curl DELETE {adress}/api/v1/products/{id}```
* Получить hostname: ```curl -X GET http://localhost:8080/api/v1/status```

## Лабораторная работа №3: CI/CD и деплой приложения в Heroku.
Цель лабораторной работы №3: Знакомство с CI/CD и его реализацией на примере Travis CI и Heroku.

Ссылка на приложение, развернутое на платформе Heroku: ```http://mtusisimpleapi.herokuapp.com/api/v1/status```
