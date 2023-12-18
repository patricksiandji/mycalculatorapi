from fastapi import FastAPI

app = FastAPI()

@app.get("/product")
def addition(x:float, y:float):
    return x * y



