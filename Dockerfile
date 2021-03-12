FROM python:3.7
ENV PYTHONUNBUFFERED 1
COPY . /code
WORKDIR /code
RUN pip install -r requirements.txt -i https://pypi.mirrors.ustc.edu.cn/simple/
RUN python manage.py collectstatic --noinput
RUN python manage.py migrate --no-input
CMD ["uwsgi", "--ini", "uwsgi.ini"]