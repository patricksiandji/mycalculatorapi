from fastapi import FastAPI

app = FastAPI()



@app.get("/addition")
def addition(x:float, y:float):
    return x + y

@app.get("/difference")
def addition(x:float, y:float):
    return x - y



