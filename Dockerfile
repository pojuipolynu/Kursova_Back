FROM python:3.11-alpine

WORKDIR /app
COPY requirements.txt .


RUN pip install -r requirements.txt
RUN pip install alembic

COPY . .

EXPOSE 8000


CMD python main.py