FROM python:3.8

# make sure log works
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt /app/

RUN pip install -r requirements.txt

COPY . /app/

CMD [ "bash", "entrypoint.bash" ]
