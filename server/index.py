from flask import Flask
import os
app = Flask(__name__)


@app.route('/', methods=['GET'])
def getTuiton():
    return "hola"


if __name__ == "__main__":
    port = int(os.environ.get('PORT', 6000))
    app.run(debug=True, host='0.0.0.0', port=port)
