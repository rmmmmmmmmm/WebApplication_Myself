FROM python:3.9.0

WORKDIR /home/

RUN echo 'cwoojelc'

RUN git clone https://github.com/rmmmmmmmmm/WebApplication_Myself.git

WORKDIR /home/WebApplication_Myself/

RUN pip install -r requirements.txt

RUN pip install gunicorn

RUN pip install mysqlclient

EXPOSE 8000

CMD ["bash", "-c", "python manage.py migrate --settings=WebApplication_Myself.settings.deploy && python manage.py collectstatic --noinput --settings=WebApplication_Myself.settings.deploy && gunicorn --env DJANGO_SETTINGS_MODULE=WebApplication_Myself.settings.deploy WebApplication_Myself.wsgi --bind 0.0.0.0:8000"]
