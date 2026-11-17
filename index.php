<?php require_once 'config/koneksi.php'; ?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pustaka Tugas Artikel</title>
    
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <!-- Navbar Atas -->
    <nav class="top-navbar">
        <div class="container d-flex flex-wrap justify-content-between align-items-center gap-2">
            <div class="brand-pill">
                <span>📘</span>
                <span>Pustaka Tugas Artikel</span>
            </div>
            <div class="d-flex align-items-center gap-2">
                <span class="stat-chip">Total Koleksi: <?= $totalRows ?> Artikel</span>
            </div>
        </div>
    </nav>

    <div class="container pb-5">

        <!-- Panel Input Horizontal di Bagian Atas (Berbeda dari layout samping di gambar) -->
        <section class="hero-panel">
            <div class="d-flex flex-wrap justify-content-between align-items-center mb-3 gap-2">
                <div>
                    <span class="section-badge">✨ FORM PENGUMPULAN</span>
                    <h5 class="fw-bold mb-0">Simpan Referensi & Publikasi Artikel</h5>
                </div>
                <small class="text-muted">Tips: Bisa copy-paste banyak baris judul/link sekaligus dari Excel</small>
            </div>

            <form method="POST" action="index.php" id="formKumpul">
                <div class="row g-3 mb-3">
                    <div class="col-md-4">
                        <label class="form-label small fw-semibold text-muted">Nama Penulis</label>
                        <input type="text" name="nama" class="form-control" placeholder="Ketik nama penulis..." required>
                    </div>
                    <div class="col-md-8 d-flex align-items-end gap-2">
                        <button type="button" class="btn btn-mint-soft" onclick="tambahArtikel()">+ Tambah Baris</button>
                        <button type="button" class="btn btn-peach-soft" onclick="kurangiArtikel()">- Kurangi Baris</button>
                    </div>
                </div>

                <!-- Baris Input Judul & Link -->
                <div id="artikelContainer">
                    <div class="artikel-item">
                        <div class="row g-2">
                            <div class="col-md-6">
                                <input type="text" name="judul[]" class="form-control judulInput" placeholder="Masukkan judul artikel..." required>
                            </div>
                            <div class="col-md-6">
                                <input type="url" name="link[]" class="form-control linkInput" placeholder="https://domain.com/judul-artikel" required>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="d-flex justify-content-end mt-3">
                    <button type="submit" name="kumpul" class="btn btn-blue-soft">
                        Simpan ke Pustaka ✓
                    </button>
                </div>
            </form>
        </section>

        <!-- Bar Pencarian & Filter -->
        <section class="filter-bar">
            <form method="GET" action="index.php" class="row g-2 align-items-center">
                <div class="col-lg-5 col-md-12">
                    <input type="text" name="search" value="<?= htmlspecialchars($search) ?>" class="form-control" placeholder="🔍 Cari judul artikel, nama penulis, atau domain...">
                </div>
                <div class="col-lg-3 col-md-5">
                    <input type="date" name="filter_tanggal" value="<?= htmlspecialchars($filter_tanggal) ?>" class="form-control">
                </div>
                <div class="col-lg-2 col-md-4">
                    <select name="sort" class="form-select">
                        <option value="tanggal_desc" <?= $sort === 'tanggal_desc' ? 'selected' : '' ?>>Urut: Terbaru</option>
                        <option value="tanggal_asc" <?= $sort === 'tanggal_asc' ? 'selected' : '' ?>>Urut: Terlama</option>
                        <option value="nama_asc" <?= $sort === 'nama_asc' ? 'selected' : '' ?>>Penulis (A-Z)</option>
                    </select>
                </div>
                <div class="col-lg-2 col-md-3 d-flex gap-2">
                    <button type="submit" class="btn btn-blue-soft w-100">Cari</button>
                    <a href="index.php" class="btn btn-outline-secondary rounded-3 d-flex align-items-center" title="Reset">↺</a>
                </div>
            </form>
        </section>

        <!-- Daftar Artikel Berbentuk Grid Kartu (Pengganti Tabel) -->
        <section>
            <?php if ($result && $result->num_rows > 0): ?>
                <div class="row g-4">
                    <?php $no = $offset + 1; while ($row = $result->fetch_assoc()): ?>
                        <div class="col-lg-4 col-md-6">
                            <div class="article-card">
                                <div>
                                    <div class="card-meta-top">
                                        <span class="domain-tag" title="<?= htmlspecialchars(getDomain($row['link'])) ?>">
                                            🌐 <?= htmlspecialchars(getDomain($row['link'])) ?>
                                        </span>
                                        <span class="date-tag">
                                            📅 <?= date('d M Y', strtotime($row['tanggal'])) ?>
                                        </span>
                                    </div>
                                    <h6 class="article-card-title">
                                        <?= htmlspecialchars($row['judul']) ?>
                                    </h6>
                                    <div class="author-tag">
                                        ✍️ Penulis: <strong><?= htmlspecialchars($row['nama']) ?></strong>
                                    </div>
                                </div>

                                <div class="card-actions">
                                    <a href="<?= htmlspecialchars($row['link']) ?>" target="_blank" rel="noopener noreferrer" class="btn-read">
                                        Buka Artikel ↗
                                    </a>
                                    <button type="button" class="btn-del-icon" onclick="konfirmasiHapus(<?= $row['id'] ?>)">
                                        Hapus
                                    </button>
                                </div>
                            </div>
                        </div>
                    <?php endwhile; ?>
                </div>
            <?php else: ?>
                <div class="empty-box">
                    <div class="fs-1 mb-2">📂</div>
                    <h5 class="fw-bold">Belum Ada Artikel Ditemukan</h5>
                    <p class="text-muted mb-0">Silakan tambahkan artikel baru pada form di atas atau ubah kata kunci pencarian.</p>
                </div>
            <?php endif; ?>

            <!-- Pagination -->
            <?php if ($totalPages > 1): ?>
                <div class="mt-4 d-flex justify-content-center">
                    <nav>
                        <ul class="pagination">
                            <?php for ($p = 1; $p <= $totalPages; $p++): ?>
                                <li class="page-item <?= $p == $page ? 'active' : '' ?>">
                                    <a class="page-link" href="?page=<?= $p ?>&search=<?= urlencode($search) ?>&filter_tanggal=<?= urlencode($filter_tanggal) ?>&sort=<?= urlencode($sort) ?>">
                                        <?= $p ?>
                                    </a>
                                </li>
                            <?php endfor; ?>
                        </ul>
                    </nav>
                </div>
            <?php endif; ?>
        </section>

    </div>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="js/script.js"></script>
</body>
</html>