FROM python:3.7.3-stretch

## Step 1:
WORKDIR /app

## Step 2:
COPY requirements.txt .

## Step 3:
# hadolint ignore=DL3008,DL3015
RUN apt-get update && apt-get install -y gfortran libopenblas-dev liblapack-dev\
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
# hadolint ignore=DL3013
RUN pip install --no-cache-dir --upgrade pip &&\
    pip install --no-cache-dir numpy==1.17.2 &&\
    pip install --no-cache-dir -r requirements.txt

COPY . .

## Step 4:
EXPOSE 80

## Step 5:
CMD ["python", "app.py"]
