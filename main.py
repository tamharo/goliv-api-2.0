from flask import Flask, request

app = Flask(__name__)

@app.route('/', methods=['GET'])
def say_hello():
    return "Goliv API v1.0.10"


if __name__ == '__main__':
    app.run(host='127.0.0.1', port=8080, debug=True)