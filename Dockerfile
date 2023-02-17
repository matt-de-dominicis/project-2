FROM python:3
ADD matthew.py /
RUN pip install pystrich
CMD [ "python", "./matthew.py" ]