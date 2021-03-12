python manage.py collectstatic --noinput &&
  python manage.py makemigrations &&
  python manage.py migrate --no-input &&
  uwsgi --ini /code/uwsgi/uwsgi.ini
