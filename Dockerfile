# Python 3.11 tabanlı bir image kullan
FROM python:3.11-slim

# Çalışma dizinini ayarla
WORKDIR /app

# Gereksinimler dosyasını container'a kopyala
COPY requirements.txt requirements.txt

# Gereksinimler dosyasındaki bağımlılıkları yükle
RUN pip install --no-cache-dir -r requirements.txt

# Uygulama dosyalarını kopyala
COPY . .

# Uygulamanın dışarıya hangi portu dinleyeceğini belirt
EXPOSE 5000

# Uygulamayı başlat
CMD ["python", "app.py"]
