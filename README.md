[![Build Status](https://app.travis-ci.com/oisab/software-tech-labs.svg?branch=main)](https://app.travis-ci.com/github/oisab/software-tech-labs)

# Технологии разработки программного обеспечения<br>Исаев Осман Абдурахманович, МАС2131
## Лабораторная работа №1: Создание микросервиса на Spring Boot с базой данных.<br>Лабораторная работа №2: Cоздание кластера Kubernetes и деплой приложения.
Цель лабораторной работы №1: Знакомство с проектированием многослойной архитектуры Web-API (веб-приложений, микро-сервисов).<br>
Цель лабораторной работы №2: Знакомство с кластерной архитектурой на примере Kubernetes и деплой приложения в кластер.<br>

## Сборка и запуск проекта
Для сборки и запуска проекта необходимо:
* Клонировать репозиторий: ```git clone https://github.com/oisab/software-tech-labs.git```
* Открыть его в среде разработки IntelliJ IDEA Ultimate Edition
* Запустить БД в Docker командой в терминале: ```docker run -e POSTGRES_PASSWORD=root -p 5432:5432 postgres```
* Собрать приложение, открыв терминал в папке проекта и введя команду: ```mvn package -Dmaven.test.skip=true```
* Запустить программу в Docker-контейнере командой в терминале: ```docker build . -t simpleapi:latest```

## Ендпоинты
* GET (GET) ```http://localhost:8080/api/v1/delivery/{id}```
* GET ALL (GET) ```http://localhost:8080/api/v1/delivery```
* SAVE (POST) ```http://localhost:8080/api/v1/delivery {"purchase_code": "3gv3253y", "last_name": "Avetov", "first_name": "Vitaliy","patronymic": "Sergeevich", "phone_number": "+7-999-843-34-53", "postal_code": "121345", "country": "Russia", "city": "Tomsk", "area": "Leninskiy", "address": "Kutuzova 8", "credit": false}```
* DELETE (DELETE) ```http://localhost:8080//api/v1/delivery/{id}```
* GET HOSTNAME (GET) ```http://localhost:8080/api/v1/status```

## CURL-запросы
* Получить конкретный экземпляр таблицы delivery по id : ```curl GET {adress}/api/v1/delivery/{id}```
* Получить содержимое таблицы delivery: ```curl GET {adress}/api/v1/delivery```
* Добавить элемент в таблицу delivery: ```curl POST {adress}/api/v1/delivery -d '{"purchase_code": "{код товара}", "last_name": "{фамилия}", "first_name": "{имя}","patronymic": "{отчество}", "phone_number": "{номер телефона}", "postal_code": "{почтовый индекс}", "country": "{страна}", "city": "{город}", "area": "{район}", "address": "{адрес}", "credit": {кредит}}' -H "Content-Type: application/json"```
* Удалить элемент из таблицы delivery: ```curl DELETE {adress}/api/v1/delivery/{id}```
* Получить hostname: ```curl -X GET http://localhost:8080/api/v1/status```

## Лабораторная работа №3: CI/CD и деплой приложения в Heroku.
Цель лабораторной работы №3: Знакомство с CI/CD и его реализацией на примере Travis CI и Heroku.

Ссылка на приложение, развернутое на платформе Heroku: https://oisabsimpleapi.herokuapp.com/api/v1/delivery
