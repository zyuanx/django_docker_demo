FROM python:3.7
ENV PYTHONUNBUFFERED 1
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt -i https://pypi.mirrors.ustc.edu.cn/simple/
#CMD ["uwsgi", "--ini", "/code/uwsgi/uwsgi.ini"]
RUN chmod +x ./start.sh
CMD ["/bin/sh", "-c", "./start.sh"]