# Gunakan image Python 3.9 sebagai base image
FROM python:3.9-slim

# Tetapkan direktori kerja di dalam container
WORKDIR /app

# Salin file requirements.txt (jika ada) dan instal dependensi
# Untuk aplikasi ini, kita hanya butuh Flask
COPY requirements.txt .

# Instal dependensi Python
RUN pip install --no-cache-dir -r requirements.txt

# Salin semua file dari direktori lokal ke direktori kerja di container
COPY . .

# Buat file requirements.txt
RUN echo "Flask" > requirements.txt

# Ekspos port 5000, yang digunakan oleh aplikasi Flask
EXPOSE 5000

# Tetapkan perintah yang akan dieksekusi saat container dijalankan
# Ini akan menjalankan aplikasi `app.py`
CMD ["python", "app.py"]

