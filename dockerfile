FROM python:latest

WORKDIR /usr/src/app

RUN python -m pip install Django

RUN apt-get update && apt-get install -y sqlite3 libsqlite3-dev

RUN python -m pip install django-debug-toolbar  

COPY . .

EXPOSE 8000

WORKDIR /usr/src/app/djangotutorial

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]