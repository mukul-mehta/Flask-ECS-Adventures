from flask import Flask, jsonify
from datetime import datetime

app = Flask(__name__)
PORT = 8000


@app.route("/")
def index():
    return "Hello World!", 200


@app.route("/health")
def healthz():
    t = {
        'status': 'OK',
        'timestamp': datetime.now(),
    }
    return jsonify(t), 200


if __name__ == "__main__":
    app.run(port=PORT)
