from fastapi import FastAPI

app = FastAPI()

@app.get("/multiplication")
def addition(x:float, y:float):
    return x * y



