# Python 3.11 tabanlı bir image kullan
FROM python:3.11-slim

# Çalışma dizinini ayarla
WORKDIR /app


# Uygulama dosyalarını kopyala
COPY . .

# Uygulamanın dışarıya hangi portu dinleyeceğini belirt
EXPOSE 5000

# Uygulamayı başlat
CMD ["python", "app.py"]
