from typing import Union
from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def root():
    return {"Wellcome to": "DevOps World"}


@app.get("/health")
def read_health():
    return {"Wellcome to": "DevOps World"}


@app.get("/items/{item_id}")
def read_item(item_id: int, q: Union[str, None] = None):
    return {"item_id": item_id, "q": q}
