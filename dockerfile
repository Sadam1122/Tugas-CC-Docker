# Gunakan base image Python versi 3.9-slim
FROM python:3.9-slim

# Set working directory di dalam container ke /app
WORKDIR /app

# Salin semua file dari direktori lokal ke dalam direktori kerja container /app
COPY . .

# Install dependensi dari requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# (Opsional) Inisialisasi database jika ada script seperti initdb.py
# RUN python initdb.py

# (Opsional) Verifikasi isi database jika ada script seperti querydb.py
# RUN python querydb.py

# Expose port 5000 (port yang digunakan oleh Flask)
EXPOSE 5000

# Jalankan aplikasi Flask
CMD ["python", "app.py"]
