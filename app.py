from fastapi import FastAPI

app = FastAPI()


@app.get("/multiplication")
def addition(x:float, y:float):
    return x * y

@app.get("/division")
def addition(x:float, y:float):
        try:
            result = x / y
            return result

        except ZeroDivisionError:
            print("y darf nicht 0 sein !!!")
        

