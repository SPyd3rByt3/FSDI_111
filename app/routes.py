from flask import Flask

app = Flask(__name__)

@app.get("/")
def index():
    me = {
        "first_name": "Seth",
        "last_name": "Patterson",
        "in_online": True,
        "hobbies": ["reading", "writing", "coding"]
    }

    return me

