FROM python:3.12-slim


WORKDIR /app


COPY . .


RUN pip install --no-cache-dir flask gunicorn


EXPOSE 8000


CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:8000", "app:app"]
