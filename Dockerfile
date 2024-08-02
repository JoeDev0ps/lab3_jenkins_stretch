# Use Python 3.6 or later as a base image
FROM python:latest
# Copy contents into image
WORKDIR /app
# Install pip dependencies from requirements
COPY requirements.txt /app
# Set YOUR_NAME environment variable
RUN pip install --no-cache-dir -r requirements.txt
# Expose the correct port
COPY . /app
# Create an entrypoint
ENTRYPOINT ["python","app.py"]
EXPOSE 5500
ENV YOUR_NAME=Joe
