FROM ubuntu:20.04
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y python3 python3-pip
CMD ["python3", "-m", "http.Server"]
