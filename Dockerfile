FROM python:stretch

# cp all -> <image>/app
COPY . /app
WORKDIR /app

# intall requeriments
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# gunicorn -b :8080 main:APP
ENTRYPOINT ["gunicorn", "-b :8080", "main:APP"]