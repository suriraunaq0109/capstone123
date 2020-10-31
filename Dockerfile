FROM python:3

ADD . /Downloads/crud/crudb
WORKDIR /Downloads/crud/crudb
COPY requirements.txt ./
RUN pip install  --no-cache-dir -r requirements.txt
EXPOSE 8080
CMD [ "python", "manage.py", "runserver"]
