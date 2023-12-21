FROM python:3.10.8

WORKDIR /app

ENV PATH /root/.local/bin:${path},
COPY . /app

RUN echo $(python3 -m site --user-base)

RUN pip install -r requirements.txt
RUN pip install uvicorn

EXPOSE 8000

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
