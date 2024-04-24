FROM python:3.7-slim
MAINTAINER ShoavlAndDor
WORKDIR /app
COPY . .
RUN pip install pipenv
RUN pipenv install --deploy --ignore-pipfile
EXPOSE 5000
ENV DATABASE_URL /data.db
ENTRYPOINT ["pipenv", "run", "python", "app.py"]