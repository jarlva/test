FROM python:3.7-alpha

COPY hello.py /
CMD ["python", "hello.py"]
