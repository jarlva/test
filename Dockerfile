# FROM ubuntu:20.04
# COPY hello.py /
FROM nginx:latest 
#nginx:latest
# RUN apt-get install apt-utils -y
RUN apt-get update
RUN apt-get upgrade -y 
# install --no-install-recommends --no-install-suggests -y
COPY index.html /usr/share/nginx/html/index.html
# CMD [ "cat <<EOF > /usr/share/nginx/html/hostname.html" ]
# CMD ["python", "hello.py"]
# RUN echo $(hostname) >> /usr/share/nginx/html/index.html
# RUN date >> /usr/share/nginx/html/index.html
# ENTRYPOINT [ "cat date >> time.txt" ]
# CMD date >> /usr/share/nginx/html/index.html
# RUN echo date >> /usr/share/nginx/html/index.html