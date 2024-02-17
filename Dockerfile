FROM python:3.9
USER root
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
RUN apt-get update && apt-get install -y docker-ce-cli
COPY . .
EXPOSE 80
CMD ["python", "app.py"]
