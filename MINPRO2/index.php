<?php
include 'koneksi.php';

$profile = mysqli_query($conn, "SELECT * FROM profile LIMIT 1");
$data = mysqli_fetch_assoc($profile);
$pengalaman = mysqli_query($conn, "SELECT * FROM pengalaman");
$skills = mysqli_query($conn, "SELECT * FROM skills");
$certs = mysqli_query($conn, "SELECT * FROM certificates");
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portfolio Indah Putri Lestari</title>

    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm fixed-top">
    <div class="container">
        <a class="navbar-brand fw-bold text-purple" href="#">Portfolio Indah Putri Lestari</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="#home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#about">About Me</a></li>
                <li class="nav-item"><a class="nav-link" href="#certificates">Certificates</a></li>
            </ul>
        </div>
    </div>
</nav>

<section id="home" class="hero d-flex align-items-center text-center">
    <div class="container">
        <img src="images/foto_profil.png" class="profile-img mb-4">
        <h1 class="fw-bold"><?= $data['nama']; ?></h1>
        <h4 class="fw-bold"><?= $data['nim']; ?></h4>
        <p class="lead">Mahasiswi Sistem Informasi Semester 4 yang aktif belajar dan mengembangkan diri</p>
        <a href="#about" class="btn btn-purple mt-3">Explore More</a>
    </div>
</section>

<section id="about" class="py-5 about-section">
    <div class="container">
        <div class="about-container">
            <h2 class="fw-bold section-title mb-5">About Me</h2>
            <div class="row align-items-start mb-5">
                <div class="col-md-8">
                    <p><?= $data['deskripsi']; ?></p>
                </div>
                <div class="col-md-4">
                    <div class="career-box">
                        <h6 class="dream-title mb-2">Tujuan Karier</h6>
                        <p class="dream-text"><?= $data['tujuan']; ?></p>
                    </div>
                </div>
            </div>
            <div class="row mt-4 about-divider">
                <div class="col-md-6">
                    <h5 class="mb-4">Pengalaman & Aktivitas</h5>
                    <ul class="activity-list">
                    <?php while($p = mysqli_fetch_assoc($pengalaman)): ?>
                        <li>
                            <i class="bi bi-star-fill text-purple me-2"></i>
                            <?= $p['kegiatan']; ?>
                        </li>
                    <?php endwhile; ?>
                    </ul>
                </div>
                <div class="col-md-6">
                    <h5 class="mb-4">Pendidikan</h5>
                    <div class="edu-list">
                        <div class="edu-item">
                            <i class="bi bi-mortarboard-fill edu-icon"></i>
                            <div>
                                <h6>S1 Sistem Informasi</h6>
                                <p>Universitas Mulawarman</p>
                                <span>2024 – Sekarang</span>
                            </div>
                        </div>
                        <div class="edu-item">
                            <i class="bi bi-book-fill edu-icon"></i>
                            <div>
                                <h6>SMA Negeri 5 Samarinda</h6>
                                <span>2021 – 2024</span>
                            </div>
                        </div>
                        <div class="edu-item">
                            <i class="bi bi-book-fill edu-icon"></i>
                            <div>
                                <h6>SMP Negeri 4 Samarinda</h6>
                                <span>2018 – 2021</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-12">
                    <h5 class="mb-4">Skills</h5>
                    <?php while($skill = mysqli_fetch_assoc($skills)): ?>
                        <p><?= $skill['nama_skill']; ?></p>
                        <div class="progress mb-3">
                            <div class="progress-bar bg-purple"
                                 data-width="<?= $skill['persen']; ?>%"
                                 style="width: 0%">
                                <?= $skill['persen']; ?>%
                            </div>
                        </div>
                    <?php endwhile; ?>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="certificates" class="py-5 bg-soft">
    <div class="container">
        <h2 class="text-center mb-5 fw-bold">Certificates</h2>
        <div class="row">
            <?php while($c = mysqli_fetch_assoc($certs)): ?>
                <div class="col-md-4 mb-4">
                    <div class="card certificate-card">
                        <img src="<?= $c['image']; ?>" class="card-img-top">
                        <div class="card-body text-center">
                            <h5 class="card-title"><?= $c['title']; ?></h5>
                            <p class="card-text"><?= $c['year']; ?></p>
                        </div>
                    </div>
                </div>
            <?php endwhile; ?>
        </div>
    </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
window.addEventListener('scroll', () => {
    document.querySelectorAll('.progress-bar').forEach(bar => {
        const rect = bar.getBoundingClientRect();
        if (rect.top < window.innerHeight - 100) {
            bar.style.width = bar.getAttribute('data-width');
        }
    });
});
</script>
</body>
</html>