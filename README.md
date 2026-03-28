# MINPRO_2_PBW_004_Indah-Putri-Lestari

Nama: Indah Putri Lestari

NIM: 2409116004

Kelas: A

# Section Hero

<img width="3200" height="2000" alt="image" src="https://github.com/user-attachments/assets/e7272068-4e7b-4cf4-9b76-f89f945d0022" />

Section ini digunakan sebagai bagian pembuka website yang menampilkan identitas utama seperti nama, NIM, dan deskripsi singkat. Struktur dibangun menggunakan elemen `<section id="home">` dan memanfaatkan class Bootstrap seperti `container` dan `text-center` untuk mengatur tata letak agar berada di tengah.

Data profil seperti nama, NIM, dan bio tidak ditulis langsung di dalam kode, melainkan diambil dari database menggunakan PHP. Data tersebut disimpan dalam tabel `profile`.

Proses pengambilan data dilakukan menggunakan query:

```php
$profile = mysqli_query($conn, "SELECT * FROM profile LIMIT 1");
$data = mysqli_fetch_assoc($profile);
```

Data kemudian ditampilkan menggunakan PHP:
```php
<h1 class="fw-bold"><?= $data['nama']; ?></h1>
<h4 class="fw-bold"><?= $data['nim']; ?></h4>
<p class="lead"><?= $data['bio']; ?></p>
```

# Section About Me

<img width="3200" height="2000" alt="image" src="https://github.com/user-attachments/assets/63da88d6-bfcb-4476-b543-ed12fada568c" />

Section ini digunakan untuk menampilkan informasi profil seperti deskripsi diri dan tujuan karier. Struktur dibangun menggunakan elemen `<section id="about">` serta memanfaatkan Bootstrap Grid System (`container`, `row`, dan `col-md-*`) agar tampilan tetap rapi dan responsif.

Bagian deskripsi dan tujuan karier ditampilkan dalam dua kolom menggunakan `col-md-8` dan `col-md-4`, sehingga pada layar besar tampil berdampingan dan pada layar kecil otomatis tersusun vertikal.

Data deskripsi dan tujuan karier diambil dari tabel `profile` menggunakan PHP:

```php
<p><?= $data['deskripsi']; ?></p>
<p class="dream-text"><?= $data['tujuan']; ?></p>
```

## Section Pengalaman & Aktivitas

Section ini digunakan untuk menampilkan daftar pengalaman dan aktivitas yang pernah diikuti. Data tidak lagi ditulis secara langsung di dalam HTML, melainkan diambil dari database.

Data disimpan dalam tabel `pengalaman` dengan atribut `kegiatan`.

Proses pengambilan data dilakukan menggunakan query:

```php
$pengalaman = mysqli_query($conn, "SELECT * FROM pengalaman");
```

Data kemudian ditampilkan menggunakan perulangan:

```php
<?php while($p = mysqli_fetch_assoc($pengalaman)): ?>
    <li>
        <i class="bi bi-star-fill text-purple me-2"></i>
        <?= $p['kegiatan']; ?>
    </li>
<?php endwhile; ?>
```

## Section Pendidikan

Section ini digunakan untuk menampilkan riwayat pendidikan dalam bentuk daftar terstruktur. Struktur utama dibangun menggunakan elemen `<div class="edu-list">` yang berisi beberapa item pendidikan, serta memanfaatkan Bootstrap Grid System (`col-md-6`) agar tampil berdampingan dengan section lain dan tetap responsif.

Setiap data pendidikan ditampilkan dalam bentuk baris menggunakan class `.edu-item` yang disusun dengan Flexbox (`display: flex`) sehingga ikon dan teks dapat sejajar secara horizontal. Ikon ditampilkan menggunakan Bootstrap Icons, di mana jenis ikon disesuaikan berdasarkan data yang tersimpan di database.

Data pendidikan diambil dari database dan disimpan dalam tabel `pendidikan` yang memiliki atribut `jenjang`, `nama_sekolah`, `tahun`, dan `icon`.

Proses pengambilan data dilakukan menggunakan query:

```php
$pendidikan = mysqli_query($conn, "SELECT * FROM pendidikan");
```

Data kemudian ditampilkan menggunakan perulangan:
```php
<?php while($edu = mysqli_fetch_assoc($pendidikan)): ?>
```

Setiap item pendidikan ditampilkan sebagai berikut:
```php
<h6><?= $edu['jenjang']; ?></h6>
<?php if(!empty($edu['nama_sekolah'])): ?>
    <p><?= $edu['nama_sekolah']; ?></p>
<?php endif; ?>
<span><?= $edu['tahun']; ?></span>
```

Ikon ditampilkan secara dinamis berdasarkan data:
```php
<i class="bi <?= $edu['icon']; ?> edu-icon"></i>
```

## Section Progress Skills

<img width="3200" height="2000" alt="image" src="https://github.com/user-attachments/assets/a7fc0d89-3191-4589-b377-9248aed1a477" />

Section ini digunakan untuk menampilkan kemampuan dalam bentuk progress bar. Struktur menggunakan komponen Bootstrap yaitu `progress` dan `progress-bar`.

Data skill diambil dari database yang disimpan dalam tabel `skills` dengan atribut `nama_skill` dan `persen`.

Proses pengambilan data:

```php
$skills = mysqli_query($conn, "SELECT * FROM skills");
```

Data ditampilkan menggunakan perulangan:

```php
<?php while($skill = mysqli_fetch_assoc($skills)): ?>
```

Nilai persentase digunakan untuk mengatur lebar progress bar melalui atribut `data-width`.

```php
data-width="<?= $skill['persen']; ?>%"
```

Animasi progress bar dijalankan menggunakan JavaScript saat halaman di-scroll sehingga bar akan terisi secara bertahap.

# Section Certificates

<img width="3200" height="2000" alt="image" src="https://github.com/user-attachments/assets/e54a6717-fdea-4445-b8f3-5f76cff27ec3" />

Section ini digunakan untuk menampilkan daftar sertifikat yang dimiliki dalam bentuk card. Struktur utama dibangun menggunakan elemen `<section id="certificates">` dan memanfaatkan komponen Bootstrap seperti `container`, `row`, dan `col-md-4` untuk menyusun layout dalam bentuk grid yang responsif.

Setiap sertifikat ditampilkan dalam bentuk card menggunakan class `card` dari Bootstrap yang berisi gambar, judul, dan tahun. Layout grid dengan `col-md-4` memungkinkan tampilan menjadi tiga kolom pada layar desktop dan otomatis menyesuaikan menjadi satu kolom pada perangkat mobile.

Data sertifikat tidak lagi ditulis langsung di dalam kode (hardcoded), melainkan diambil dari database menggunakan PHP. Data tersebut disimpan dalam tabel `certificates` yang memiliki atribut `title`, `year`, dan `image`.

Proses pengambilan data dilakukan menggunakan query berikut:

```php
$certs = mysqli_query($conn, "SELECT * FROM certificates");
```

Data ditampilkan menggunakan perulangan:

```php
<?php while($c = mysqli_fetch_assoc($certs)): ?>
```

Gambar ditampilkan berdasarkan path yang disimpan di database:

```php
<img src="<?= $c['image']; ?>" class="card-img-top">
```
