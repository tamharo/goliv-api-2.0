from flask import Flask, request
from sorter import sorter
import vaex

app = Flask(__name__)

@app.route('/sorter', methods=['GET'])
def api_sorter():
    return sorter()

@app.route('/', methods=['GET'])
def say_hello():
    return "Goliv API v1.0.9"


if __name__ == '__main__':
    app.run(host='127.0.0.1', port=8080, debug=True)