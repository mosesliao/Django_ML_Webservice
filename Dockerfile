FROM bluedata/ubuntu18:latest

RUN apt-get update \
  && apt-get install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 --no-cache-dir install --upgrade pip \
  && rm -rf /var/lib/apt/lists/*

RUN python -m pip install Django \
  numpy \
  pandas \
  scikit-learn \
  djangorestframework \
  markdown \
  django-filter

WORKDIR /app
COPY . .

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
