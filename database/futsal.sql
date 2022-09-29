-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Sep 2022 pada 07.07
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `futsal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about`
--

CREATE TABLE `about` (
  `id_about` int(11) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `about`
--

INSERT INTO `about` (`id_about`, `isi`) VALUES
(1, '<p><strong>Sewa Futsal Bos</strong></p>\r\n\r\n<p>Nama&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Abi Futsal</p>\r\n\r\n<p>Kode Pos &nbsp; &nbsp; &nbsp; : 123456</p>\r\n\r\n<p>Fax/Telp. &nbsp; &nbsp; &nbsp; &nbsp;: 082141150529</p>\r\n\r\n<p>Anak Muda Maupun Tua Jangan lelah Untuk Berolahraga Dengan Cara Main Futsal Ditempat Kami</p>\r\n'),
(2, '<ul>\r\n	<li>Dilarang membuang puntung rokok yang masih menyala di sembarang tempat</li>\r\n	<li>Dilarang bermain api dan membawa bahan kimia yang membahayakan</li>\r\n	<li>Dilarang membawa minuman keras dan obat-obatan terlarang ke dalam kompleks</li>\r\n	<li>Dilarang mencoret dinding dan merusak fasilitas olah raga&nbsp;</li>\r\n	<li>Dilarang membawa senjata tajam atau senjata api kecuali yang bertugas khusus</li>\r\n	<li>Dilarang berbuat tindakan amoral (judi, asusila dan pornografi lainnya)</li>\r\n	<li>Dilarang membuang sampah atau sisa makanan di sembarang tempat</li>\r\n	<li>Seluruh pengunjung tetap bertanggung jawab terhadap bawaan barang pribadi kecuali dititipkan secara sah dan disertai surat tanda terima</li>\r\n	<li>Kehilangan barang berharga atau barang lainnya yang tidak dititipkan secara sah kepada pengelola yang bertugas di luar tanggung jawab kami</li>\r\n	<li>Untuk menghindari risiko kehilangan barang-barang berharga seperti uang dan perhiasan, sebaiknya tidak dititipkan dan disimpan/diamankan secara pribadi oleh pengunjung sendiri</li>\r\n	<li>Kenyamanan dan keamanan bersama selalu menjadi perhatian kami, namun sebaliknya koordinasi, laporan dan kritik atas segala keterbatasan dan kekurangan pelayanan kami menjadi harapan guna perbaikan selanjutnya.</li>\r\n	<li>Ketentuan Futsal</li>\r\n</ul>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `email` varchar(35) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama`, `email`, `foto`) VALUES
(25, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin Lapangan Futsal', 'adminlapanganfutsal@gmail.com', '25user3.jpg'),
(28, 'admin2', 'c84258e9c39059a89ab77d846ddab909', 'Admin 2', 'admin2@gmail.com', '46admin.png'),
(29, 'admin3', '32cacb2f994f6b42183a1300d9a3e8d6', 'Admin 3', 'admin3@gmail.com', '27user4.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga`
--

CREATE TABLE `harga` (
  `id_harga` int(11) NOT NULL,
  `waktu` varchar(40) NOT NULL,
  `harga` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `harga`
--

INSERT INTO `harga` (`id_harga`, `waktu`, `harga`) VALUES
(1, 'siang', '150000'),
(2, 'malam', '300000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hari`
--

CREATE TABLE `hari` (
  `id` int(2) NOT NULL,
  `nama_hari` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hari`
--

INSERT INTO `hari` (`id`, `nama_hari`) VALUES
(1, 'senin'),
(2, 'selasa'),
(3, 'rabu'),
(4, 'kamis'),
(5, 'jumat'),
(6, 'sabtu'),
(7, 'minggu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `jam` time NOT NULL,
  `id_harga` int(11) NOT NULL,
  `jams` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `jam`, `id_harga`, `jams`) VALUES
(1, '08:00:00', 1, '08.00-09.00'),
(3, '09:00:00', 1, '09.00-10.00'),
(4, '10:00:00', 1, '10.00-11.00'),
(5, '11:00:00', 1, '11.00-12.00'),
(6, '12:00:00', 1, '12.00-13.00'),
(7, '13:00:00', 1, '13.00-14.00'),
(8, '14:00:00', 1, '14.00-15.00'),
(9, '15:00:00', 1, '15.00-16.00'),
(10, '16:00:00', 1, '16.00-17.00'),
(11, '18:00:00', 2, '18.00-19.00'),
(12, '19:00:00', 2, '19.00-20.00'),
(13, '20:00:00', 2, '20.00-21.00'),
(14, '21:00:00', 2, '21.00-22.00'),
(15, '22:00:00', 2, '22.00-23.00'),
(16, '23:00:00', 2, '23.00-24.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `nama_klub` varchar(30) NOT NULL,
  `email` varchar(35) NOT NULL,
  `alamat` text NOT NULL,
  `no_telpon` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `username`, `password`, `nama`, `nama_klub`, `email`, `alamat`, `no_telpon`) VALUES
(27, 'P001', '33efbb16ece8550ff8eff9fd435442fc', 'Fiqih Ardiansyah', 'Ankers FC', 'Ankers@gmail.com', 'raas', '085963090921'),
(28, 'P002', '8208a34c870ec1cddb1b092f464b3392', 'Khairil Anwar', 'Fa', 'ardi@gmail.com', 'sumenp', '267'),
(29, 'P003', '99b45daa8741b15e14d942abe462a263', 'Ach. Aden Ferdiansyah S.Pd M.pd', 'aa', 'bondan@gmail.com', 'pangarangan', '467'),
(30, 'isman', '0200cb38f8ae5547650a8d106ec4939f', 'isman', 'ankers', 'isman@gmail.com', 'kersetan', '123456');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_harga` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `nama_klub` varchar(35) NOT NULL,
  `alamat` text NOT NULL,
  `no_telpon` char(12) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` varchar(100) NOT NULL,
  `harga` char(10) NOT NULL,
  `dp` char(10) NOT NULL,
  `sisa` char(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `id_admin`, `id_pelanggan`, `id_harga`, `id_jadwal`, `username`, `nama_klub`, `alamat`, `no_telpon`, `tanggal`, `jam`, `harga`, `dp`, `sisa`, `status`) VALUES
(71, 0, 27, 1, 1, 'P001', 'Ankers FC', 'raas', '085963090921', '2022-05-09', '08.00-09.00', '150000', '0', '0', 'Lunas'),
(72, 0, 28, 2, 11, 'P002', 'Fa', 'sumenp', '267', '2022-05-09', '18.00-19.00', '300000', '0', '0', 'Lunas'),
(73, 25, 0, 1, 3, 'P003', 'aa', 'pangarangan', '467', '2022-05-09', '09.00-10.00', '150000', '0', '0', 'Lunas'),
(74, 25, 0, 1, 1, 'isman', 'ankers', 'kersetan', '123456', '0000-00-00', '08.00-09.00', '150000', '0', '0', 'Lunas'),
(75, 25, 0, 1, 1, 'isman', 'ankers', 'kersetan', '123456', '2022-09-09', '08.00-09.00', '150000', '0', '0', 'Lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `id_profil` int(11) NOT NULL,
  `namafutsal` varchar(35) NOT NULL,
  `alamat` text NOT NULL,
  `kodepos` varchar(5) NOT NULL,
  `fax` char(20) NOT NULL,
  `no_hp` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`id_profil`, `namafutsal`, `alamat`, `kodepos`, `fax`, `no_hp`) VALUES
(1, 'Abi Futsal', 'Bangkalan', '01234', '021455678', '085963090921');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id_about`);

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `harga`
--
ALTER TABLE `harga`
  ADD PRIMARY KEY (`id_harga`);

--
-- Indeks untuk tabel `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indeks untuk tabel `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about`
--
ALTER TABLE `about`
  MODIFY `id_about` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `harga`
--
ALTER TABLE `harga`
  MODIFY `id_harga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `hari`
--
ALTER TABLE `hari`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT untuk tabel `profil`
--
ALTER TABLE `profil`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
