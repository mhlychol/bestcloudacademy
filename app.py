from flask import Flask, request, jsonify

# Flask uygulaması oluşturuluyor
app = Flask(__name__)

# Ana endpoint: "/" GET isteği aldığında "BC4M" mesajını döner
@app.route('/', methods=['GET'])
def home():
    return jsonify({"msg": "BC4M"})
    
# Sağlık durumu endpointi: "/health" GET isteği aldığında uygulamanın sağlık durumunu döner
@app.route('/health', methods=['GET'])
def health():
    return jsonify({"status": "OK"}), 200
    
# POST isteği endpointi: "/" POST isteği ile gelen veriyi aynen geri döner
@app.route('/', methods=['POST'])
def echo_post():
    data = request.get_json()
    return jsonify(data), 200
    
# Uygulama başlatma: Uygulama 0.0.0.0 adresinde ve 5000 portunda çalıştırılır
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
