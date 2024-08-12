from flask import Flask, jsonify

app = Flask(__name__)
@app.route('/', methods=['GET'])
def home():
    return jsonify({"msg": "BC4M"})
@app.route('/health', methods=['GET'])
def health():
    return jsonify({"status": "OK"})
@app.route('/', methods=['POST'])
def echo():
    data = request.json
    return jsonify(data)
if __name__ == '__main__':
    app.run(debug=True)
