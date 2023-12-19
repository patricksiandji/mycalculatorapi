from fastapi import FastAPI

app = FastAPI()


@app.get("/addition")
def addition(x:float, y:float):
    return x + y

@app.get("/difference")
def difference(x:float, y:float):
    return x - y

@app.get("/multiplication")
def multiplication(x:float, y:float):
    return x * y

@app.get("/division")
def division(x:float, y:float):
        try:
            result = x / y
            return result

        except ZeroDivisionError:
            print("y darf nicht 0 sein !!!")
        

