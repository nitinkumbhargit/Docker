#Base Image
FROM python:latest

#Copy app to container
COPY app.py /app/app.py
WORKDIR /app

#Command to run
CMD ["python", "app.py"]