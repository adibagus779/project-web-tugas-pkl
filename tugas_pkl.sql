-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Nov 2026 pada 05.27
-- Versi server: 10.11.16-MariaDB
-- Versi PHP: 8.3.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Basis data: `tugas_pkl`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumpulan`
--

CREATE TABLE `pengumpulan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengumpulan`
--

INSERT INTO `pengumpulan` (`id`, `nama`, `judul`, `link`, `tanggal`) VALUES
(12, 'lia', 'Biaya Naturalisasi Jadi WNI Meningkat Jadi Rp75 Juta, Rekor Tertinggi di ASEAN Picu Perdebatan Kebijakan Imigrasi', 'https://teknopedia.teknokrat.ac.id//biaya-naturalisasi-jadi-wni-meningkat-jadi-rp75-juta-rekor-tertinggi-di-asean-picu-perdebatan-kebija', '2026-11-17 03:37:03'),
(13, 'lia', 'Kalender 2027 Diumumkan: 26 Hari Libur Nasional, Pemerintah Janji Dampak Positif pada Produktivitas dan Wisata', 'https://teknopedia.teknokrat.ac.id//kalender-2027-diumumkan-26-hari-libur-nasional-pemerintah-janji-dampak-positif-pada-produktivitas-da', '2026-11-17 03:37:03'),
(14, 'lia', 'Warren Buffett Tetap Pegang 6 Prinsip Frugal Living, Kisah Anti-Flexing Sang Investor Ini Menginspirasi Generasi Baru', 'https://teknopedia.teknokrat.ac.id//warren-buffett-tetap-pegang-6-prinsip-frugal-living-kisah-anti-flexing-sang-investor-ini-menginspira', '2026-11-17 03:37:03'),
(15, 'lia', 'Penelitian Ungkap Waktu Ideal Minum Kopi, Konsumsi Pagi Dapat Perpanjang Umur dan Tingkatkan Kesehatan Jantung', 'https://teknopedia.teknokrat.ac.id//penelitian-ungkap-waktu-ideal-minum-kopi-konsumsi-pagi-dapat-perpanjang-umur-dan-tingkatkan-kesehata', '2026-11-17 03:37:03'),
(16, 'lia', 'Warren Buffett Peringatkan 5 Pengeluaran yang Harus Dihindari Saat Ekonomi Lesu, Simak Alasan Mengapa Ini Bisa Bikin Keuangan Anda Runtuh', 'https://teknopedia.teknokrat.ac.id//warren-buffett-peringatkan-5-pengeluaran-yang-harus-dihindari-saat-ekonomi-lesu-simak-alasan-mengapa', '2026-11-17 03:37:03'),
(17, 'lia', 'Psikolog Ungkap Faktor Utama yang Memicu Perselingkuhan, Mengapa Rasa Takut Kehilangan dan Kesepian Menjadi Pemicu No.1 dalam Hubungan', 'https://teknopedia.teknokrat.ac.id//psikolog-ungkap-faktor-utama-yang-memicu-perselingkuhan-mengapa-rasa-takut-kehilangan-dan-kesepian-m', '2026-11-17 03:37:03'),
(18, 'lia', 'Katy Perry dan Justin Trudeau Tampil Mesra di Red Carpet, Kedekatan Mereka Memicu Spekulasi Publik dan Media tentang Hubungan Politik‑Budaya', 'https://teknopedia.teknokrat.ac.id//katy-perry-dan-justin-trudeau-tampil-mesra-di-red-carpet-kedekatan-mereka-memicu-spekulasi-publik-da', '2026-11-17 03:37:03'),
(19, 'lia', 'BOL4, Band Indie Korea yang Sedang Naik Daun, Resmi Umumkan Rencana Kolaborasi Besar dengan Artis Indonesia, Siap Guncang Pasar Musik Asia', 'https://teknopedia.teknokrat.ac.id//bol4-band-indie-korea-yang-sedang-naik-daun-resmi-umumkan-rencana-kolaborasi-besar-dengan-artis-indo', '2026-11-17 03:37:03'),
(20, 'lia', 'Tragedi Konser LANY Berujung Batal, Tiang Baja Ambruk Menyebabkan Panik Penonton dan Kritik Tajam Terhadap Keamanan Acara Musik Besar', 'https://teknopedia.teknokrat.ac.id//tragedi-konser-lany-berujung-batal-tiang-baja-ambruk-menyebabkan-panik-penonton-dan-kritik-tajam-ter', '2026-11-17 03:37:03'),
(21, 'lia', 'Biaya Produksi Bukan Satu-Satunya Penentu Harga BBM: Inilah Faktor Ekonomi Lain yang Membentuk Harga Bensin di Indonesia Secara Kompleks', 'https://teknopedia.teknokrat.ac.id//biaya-produksi-bukan-satu-satunya-penentu-harga-bbm-inilah-faktor-ekonomi-lain-yang-membentuk-harga-', '2026-11-17 03:37:03'),
(22, 'lia', 'Remaja yang Sering Mood Swing, Penelitian Ungkap Risiko Makan Berlebihan yang Bisa Merusak Kesehatan Jangka Panjang dan Mengubah Pola Hidup', 'https://teknopedia.teknokrat.ac.id//remaja-yang-sering-mood-swing-penelitian-ungkap-risiko-makan-berlebihan-yang-bisa-merusak-kesehatan-', '2026-11-17 03:37:03'),
(23, 'lia', 'Hari Buruk Terasa Lebih Lama Karena Otak Memproses Stres Lebih Intens, Penelitian Ungkap Mekanisme Psikologis di Balik Perasaan yang Menggantung Lama', 'https://teknopedia.teknokrat.ac.id//hari-buruk-terasa-lebih-lama-karena-otak-memproses-stres-lebih-intens-penelitian-ungkap-mekanisme-ps', '2026-11-17 03:37:03'),
(24, 'lia', 'Banteng Jawa Terancam Punah di Tanah Asal, Namun Populasi Berkembang Hingga Ribuan di Australia: Bagaimana Keberhasilan Konservasi Luar Negeri Ini Terjadi', 'https://teknopedia.teknokrat.ac.id//banteng-jawa-terancam-punah-di-tanah-asal-namun-populasi-berkembang-hingga-ribuan-di-australia-bagai', '2026-11-17 03:37:03'),
(25, 'lia', 'Permintaan Global Naik 45% dalam 2 Tahun, Semikonduktor Jadi Nyawa Teknologi Modern yang Tak Bisa Dilepas', 'https://teknopedia.teknokrat.ac.id//permintaan-global-naik-45-dalam-2-tahun-semikonduktor-jadi-nyawa-teknologi-modern-yang-tak-bisa-dile', '2026-11-17 03:37:03'),
(26, 'lia', '5 Barang yang Dikenai Cukai Besar, Kenapa Rokok dan Alkohol Selalu Jadi Target Utama Pemerintah', 'https://teknopedia.teknokrat.ac.id//5-barang-yang-dikenai-cukai-besar-kenapa-rokok-dan-alkohol-selalu-jadi-target-utama-pemerintah', '2026-11-17 03:37:03'),
(27, 'lia', 'Terjebak Ego, Keputusan Karier Salah dan Hoaks Menyebar, Begini Risiko Fatal Karena Terlalu Percaya Diri', 'https://teknopedia.teknokrat.ac.id//terjebak-ego-keputusan-karier-salah-dan-hoaks-menyebar-begini-risiko-fatal-karena-terlalu-percaya-di', '2026-11-17 03:37:03'),
(28, 'lia', 'Mengapa Indonesia Mengemudi di Jalur Kiri Sementara Amerika di Jalur Kanan? Sejarah Panjang dan Dampaknya pada Keselamatan Lalu Lintas', 'https://teknopedia.teknokrat.ac.id//mengapa-indonesia-mengemudi-di-jalur-kiri-sementara-amerika-di-jalur-kanan-sejarah-panjang-dan-dampa', '2026-11-17 03:37:03'),
(29, 'lia', 'Setelah Sembuh dari Keracunan Makanan, Perut Masih Sakit? Kisah Nyata Penyebab Kronis dan Cara Memulihkan Sistem Pencernaan Secara Efektif', 'https://teknopedia.teknokrat.ac.id//setelah-sembuh-dari-keracunan-makanan-perut-masih-sakit-kisah-nyata-penyebab-kronis-dan-cara-memulih', '2026-11-17 03:37:03');

--
-- Indeks untuk tabel yang dibuang
--

--
-- Indeks untuk tabel `pengumpulan`
--
ALTER TABLE `pengumpulan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengumpulan`
--
ALTER TABLE `pengumpulan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
