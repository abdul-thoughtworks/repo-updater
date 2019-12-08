FROM python:3.7-slim
RUN pip install -U pytest
RUN pip install pytest-bdd
CMD [ "pytest" ]