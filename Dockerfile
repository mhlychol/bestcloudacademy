# Python 3.10 tabanlı bir image kullan
FROM python:3.10-slim

# Çalışma dizinini ayarla
WORKDIR /app

# Gereksinimler dosyasını container'a kopyala
COPY requirements.txt requirements.txt

# Gereksinimler dosyasındaki bağımlılıkları yükle
RUN pip install -r requirements.txt

# Uygulama dosyalarını kopyala
COPY . .

# Uygulamayı başlat
CMD ["python", "app.py"]
