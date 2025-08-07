# app.py
from flask import Flask

# Buat instance aplikasi Flask
app = Flask(__name__)

# Definisikan rute untuk halaman utama
@app.route('/')
def hello_world():
    # Mengembalikan string "Halo, Dunia!" saat diakses
    return 'Halo, Dunia!'

# Jalankan aplikasi jika skrip ini dieksekusi secara langsung
if __name__ == '__main__':
    # Aplikasi akan berjalan di semua alamat IP yang tersedia
    # dan menggunakan port default 5000
    app.run(host='0.0.0.0', port=5000)

