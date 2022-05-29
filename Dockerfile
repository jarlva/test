# https://docs.aws.amazon.com/AmazonECR/latest/userguide/docker-push-ecr-image.html
# FROM ubuntu:20.04
# COPY hello.py /
FROM nginx:1.22
RUN apt-get update && apt-get upgrade -y
# install --no-install-recommends --no-install-suggests -y
COPY index.html /usr/share/nginx/html/index.html

# CMD [ "cat <<EOF > /usr/share/nginx/html/hostname.html" ]
# CMD ["python", "hello.py"]
# RUN echo $(hostname) >> /usr/share/nginx/html/index.html
# RUN date >> /usr/share/nginx/html/index.html
# ENTRYPOINT [ "cat date >> time.txt" ]
# CMD date >> /usr/share/nginx/html/index.html
# RUN echo date >> /usr/share/nginx/html/index.html

# next line only if token expited
# aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 492841471723.dkr.ecr.us-east-2.amazonaws.com

# docker build . -t 492841471723.dkr.ecr.us-east-2.amazonaws.com/my-registry:test1
# docker push 492841471723.dkr.ecr.us-east-2.amazonaws.com/my-registry:test1