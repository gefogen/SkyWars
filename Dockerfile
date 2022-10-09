FROM python:3.10-slim

#Установить рабочий каталог
WORKDIR /app

#Установить зависимости
COPY requirements.txt .
RUN pip install -r requirements.txt

#Копировать проект
COPY . .

ENTRYPOINT [ "sh", "entrypoint.sh" ]
