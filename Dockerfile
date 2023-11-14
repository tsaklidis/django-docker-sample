FROM python:3.11

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the working directory
WORKDIR /compare

# Copy your script into the container
COPY requirements.txt /compare/

# Install requirements
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /compare/
