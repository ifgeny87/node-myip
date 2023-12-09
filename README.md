# node-myip


## Description

Вебсервер на Express.js.
В качестве ответа на любой запрос сервер вернет строку, которая будет содержать IP адрес клиента.


## Deploy on Docker

Скприт `./scripts/build_n_run.sh` соберет Docker Image и выполнит запуск Docker Container.

Чтобы собрать Docker Image вручную, сначала скопируйте файл `./deploy/Dockerfile` в корень.
