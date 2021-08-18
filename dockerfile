FROM python:3

RUN sudo pip install pystrich

ADD server.py /
ADD client.py /

CMD [ "python" , "./server.py" ]
CMD [ "python" , "./client.py" ]
