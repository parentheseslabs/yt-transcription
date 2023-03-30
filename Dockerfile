# FROM python:3.8.10

# # WORKDIR /app

# # RUN apt-get -y update && apt-get install -y python3-dev \
# #                                              apt-utils \
# #                                              python-dev \
# #                                              build-essentials && rm -rf  /var/lib/apt/lists/*
# RUN apt-get -y update
# RUN apt-get -y upgrade
# RUN apt-get install -y ffmpeg
# RUN mkdir app
# RUN mkdir app/yt


# # COPY requirements.txt app/yt
# COPY . /app/yt
# RUN pip3 install --upgrade pip==22.0.3

# # RUN pip3 install Cython==0.29.32

# WORKDIR /app/yt

# RUN pip3 install -r requirements.txt --use-deprecated=legacy-resolver

# # COPY manage.py manage.py
# # COPY transcription  transcription
# # COPY yt  yt
# # COPY .env  .env

# EXPOSE 8000

# RUN source .env

# ENTRYPOINT python3 manage.py runserver 0.0.0.0:8000
