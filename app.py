from fastapi import FastAPI

app = FastAPI()


@app.get("/difference")
def addition(x:float, y:float):
    return x - y



