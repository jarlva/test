FROM ubuntu

COPY hello.py /
CMD ["python", "hello.py"]
