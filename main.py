from flask import Flask
app = Flask(__name__)

from sorter import sorter

@app.route('/sorter', methods=['GET'])
def api_sorter():
    return sorter()


@app.route('/', methods=['GET'])
def say_hello():
    return "Goliv API v.1.0.3"


if __name__ == '__main__':
    app.run(host='127.0.0.1', port=8080, debug=True)