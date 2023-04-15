-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Apr 2023 pada 06.46
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipariwisata_dompuntb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_atraksi`
--

CREATE TABLE `tb_atraksi` (
  `id_objek_atraksi` varchar(20) NOT NULL,
  `id_tempat_wisata` varchar(20) NOT NULL,
  `Nama_atraksi` varchar(25) NOT NULL,
  `Jenis_atraksi` varchar(25) NOT NULL,
  `tarif_atraksi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_fasilitas`
--

CREATE TABLE `tb_fasilitas` (
  `id_fasilitas` varchar(20) NOT NULL,
  `id_Tempat_Wisata` varchar(20) NOT NULL,
  `id_kamar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_hotel`
--

CREATE TABLE `tb_hotel` (
  `id_Hotel` varchar(20) NOT NULL,
  `id_Jenis_Hotel` varchar(20) NOT NULL,
  `Nama_Hotel` varchar(25) NOT NULL,
  `Alamat` varchar(20) NOT NULL,
  `Jumlah_Kamar` int(11) NOT NULL,
  `Check_in` varchar(20) NOT NULL,
  `Check_out` varchar(20) NOT NULL,
  `Harga` int(11) NOT NULL,
  `No_Kamar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jenis_hotel`
--

CREATE TABLE `tb_jenis_hotel` (
  `id_jenis_hotel` varchar(20) NOT NULL,
  `id_hotel` varchar(20) NOT NULL,
  `nama` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jenis_tempat_wisata`
--

CREATE TABLE `tb_jenis_tempat_wisata` (
  `id_jenis_tempat_wisata` varchar(20) NOT NULL,
  `id_kriteria_Tempat_wisata` varchar(20) NOT NULL,
  `nama` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kamar`
--

CREATE TABLE `tb_kamar` (
  `id_Kamar` varchar(20) NOT NULL,
  `id_Hotel` varchar(20) NOT NULL,
  `tipe_kamar` varchar(20) NOT NULL,
  `no_kamar` int(11) NOT NULL,
  `nama_kamar` varchar(20) NOT NULL,
  `jumlah_kamar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kriteria_hotel`
--

CREATE TABLE `tb_kriteria_hotel` (
  `id_kriteria_hotel` varchar(20) NOT NULL,
  `id_hotel` varchar(20) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `Nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kriteria_tempatwisata`
--

CREATE TABLE `tb_kriteria_tempatwisata` (
  `id_kriteria_Tempatwisata` varchar(10) NOT NULL,
  `id_Tempat_Wisata` varchar(10) NOT NULL,
  `nama` varchar(10) NOT NULL,
  `penilaian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `ID_Pegawai` varchar(20) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `Alamat` varchar(10) NOT NULL,
  `No HP` varchar(20) NOT NULL,
  `Unsername` varchar(20) NOT NULL,
  `Pasword` varchar(10) NOT NULL,
  `id_user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pemesanan`
--

CREATE TABLE `tb_pemesanan` (
  `id_pemesanan` varchar(20) NOT NULL,
  `id_hotel` varchar(20) NOT NULL,
  `id_tempat_wisata` varchar(20) NOT NULL,
  `id_objek_atraksi` varchar(20) NOT NULL,
  `tgl_pemesanan` date NOT NULL,
  `nama_pengunjung` varchar(20) NOT NULL,
  `alamat_pengunjung` varchar(20) NOT NULL,
  `no_telp` int(11) NOT NULL,
  `total_lokasi` int(11) NOT NULL,
  `id_pengunjung` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengunjung`
--

CREATE TABLE `tb_pengunjung` (
  `id_pengunjung` varchar(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `Alamat` varchar(20) NOT NULL,
  `No HP` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `id_user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penilaian`
--

CREATE TABLE `tb_penilaian` (
  `id_penilaian` varchar(20) NOT NULL,
  `id_hotel` varchar(20) NOT NULL,
  `id_tempat_wisata` varchar(20) NOT NULL,
  `komentar` varchar(30) NOT NULL,
  `tgl_penilaian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tempatwisata`
--

CREATE TABLE `tb_tempatwisata` (
  `id_Tempat_Wisata` varchar(20) NOT NULL,
  `Lokasi` varchar(25) NOT NULL,
  `Fasilitas` varchar(20) NOT NULL,
  `Jam_Kerja` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` varchar(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `jabatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_atraksi`
--
ALTER TABLE `tb_atraksi`
  ADD PRIMARY KEY (`id_objek_atraksi`),
  ADD KEY `id_tempat_wisata` (`id_tempat_wisata`);

--
-- Indeks untuk tabel `tb_fasilitas`
--
ALTER TABLE `tb_fasilitas`
  ADD PRIMARY KEY (`id_fasilitas`),
  ADD KEY `id_Tempat_Wisata` (`id_Tempat_Wisata`);

--
-- Indeks untuk tabel `tb_hotel`
--
ALTER TABLE `tb_hotel`
  ADD PRIMARY KEY (`id_Hotel`),
  ADD KEY `id_Jenis_Hotel` (`id_Jenis_Hotel`);

--
-- Indeks untuk tabel `tb_jenis_hotel`
--
ALTER TABLE `tb_jenis_hotel`
  ADD PRIMARY KEY (`id_jenis_hotel`),
  ADD KEY `id_hotel` (`id_hotel`);

--
-- Indeks untuk tabel `tb_jenis_tempat_wisata`
--
ALTER TABLE `tb_jenis_tempat_wisata`
  ADD PRIMARY KEY (`id_jenis_tempat_wisata`),
  ADD KEY `id_kriteria_Tempat_wisata` (`id_kriteria_Tempat_wisata`);

--
-- Indeks untuk tabel `tb_kamar`
--
ALTER TABLE `tb_kamar`
  ADD PRIMARY KEY (`id_Kamar`),
  ADD KEY `id_Hotel` (`id_Hotel`);

--
-- Indeks untuk tabel `tb_kriteria_hotel`
--
ALTER TABLE `tb_kriteria_hotel`
  ADD PRIMARY KEY (`id_kriteria_hotel`),
  ADD KEY `id_hotel` (`id_hotel`);

--
-- Indeks untuk tabel `tb_kriteria_tempatwisata`
--
ALTER TABLE `tb_kriteria_tempatwisata`
  ADD PRIMARY KEY (`id_kriteria_Tempatwisata`),
  ADD KEY `id_Tempat_Wisata` (`id_Tempat_Wisata`);

--
-- Indeks untuk tabel `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`ID_Pegawai`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD KEY `id_objek_atraksi` (`id_objek_atraksi`),
  ADD KEY `id_pengunjung` (`id_pengunjung`);

--
-- Indeks untuk tabel `tb_pengunjung`
--
ALTER TABLE `tb_pengunjung`
  ADD PRIMARY KEY (`id_pengunjung`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tb_penilaian`
--
ALTER TABLE `tb_penilaian`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD KEY `id_tempat_wisata` (`id_tempat_wisata`),
  ADD KEY `id_hotel` (`id_hotel`);

--
-- Indeks untuk tabel `tb_tempatwisata`
--
ALTER TABLE `tb_tempatwisata`
  ADD PRIMARY KEY (`id_Tempat_Wisata`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_atraksi`
--
ALTER TABLE `tb_atraksi`
  ADD CONSTRAINT `tb_atraksi_ibfk_1` FOREIGN KEY (`id_tempat_wisata`) REFERENCES `tb_tempatwisata` (`id_Tempat_Wisata`);

--
-- Ketidakleluasaan untuk tabel `tb_fasilitas`
--
ALTER TABLE `tb_fasilitas`
  ADD CONSTRAINT `tb_fasilitas_ibfk_1` FOREIGN KEY (`id_Tempat_Wisata`) REFERENCES `tb_tempatwisata` (`id_Tempat_Wisata`);

--
-- Ketidakleluasaan untuk tabel `tb_hotel`
--
ALTER TABLE `tb_hotel`
  ADD CONSTRAINT `tb_hotel_ibfk_1` FOREIGN KEY (`id_Jenis_Hotel`) REFERENCES `tb_jenis_hotel` (`id_jenis_hotel`);

--
-- Ketidakleluasaan untuk tabel `tb_jenis_hotel`
--
ALTER TABLE `tb_jenis_hotel`
  ADD CONSTRAINT `tb_jenis_hotel_ibfk_1` FOREIGN KEY (`id_hotel`) REFERENCES `tb_hotel` (`id_Hotel`);

--
-- Ketidakleluasaan untuk tabel `tb_jenis_tempat_wisata`
--
ALTER TABLE `tb_jenis_tempat_wisata`
  ADD CONSTRAINT `tb_jenis_tempat_wisata_ibfk_1` FOREIGN KEY (`id_kriteria_Tempat_wisata`) REFERENCES `tb_kriteria_tempatwisata` (`id_kriteria_Tempatwisata`);

--
-- Ketidakleluasaan untuk tabel `tb_kamar`
--
ALTER TABLE `tb_kamar`
  ADD CONSTRAINT `tb_kamar_ibfk_1` FOREIGN KEY (`id_Hotel`) REFERENCES `tb_hotel` (`id_Hotel`),
  ADD CONSTRAINT `tb_kamar_ibfk_2` FOREIGN KEY (`id_Hotel`) REFERENCES `tb_hotel` (`id_Hotel`);

--
-- Ketidakleluasaan untuk tabel `tb_kriteria_hotel`
--
ALTER TABLE `tb_kriteria_hotel`
  ADD CONSTRAINT `tb_kriteria_hotel_ibfk_1` FOREIGN KEY (`id_hotel`) REFERENCES `tb_hotel` (`id_Hotel`);

--
-- Ketidakleluasaan untuk tabel `tb_kriteria_tempatwisata`
--
ALTER TABLE `tb_kriteria_tempatwisata`
  ADD CONSTRAINT `tb_kriteria_tempatwisata_ibfk_1` FOREIGN KEY (`id_Tempat_Wisata`) REFERENCES `tb_tempatwisata` (`id_Tempat_Wisata`);

--
-- Ketidakleluasaan untuk tabel `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD CONSTRAINT `tb_pegawai_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `tb_pemesanan`
--
ALTER TABLE `tb_pemesanan`
  ADD CONSTRAINT `tb_pemesanan_ibfk_2` FOREIGN KEY (`id_objek_atraksi`) REFERENCES `tb_atraksi` (`id_objek_atraksi`),
  ADD CONSTRAINT `tb_pemesanan_ibfk_3` FOREIGN KEY (`id_pengunjung`) REFERENCES `tb_pengunjung` (`id_pengunjung`);

--
-- Ketidakleluasaan untuk tabel `tb_pengunjung`
--
ALTER TABLE `tb_pengunjung`
  ADD CONSTRAINT `tb_pengunjung_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `tb_penilaian`
--
ALTER TABLE `tb_penilaian`
  ADD CONSTRAINT `tb_penilaian_ibfk_1` FOREIGN KEY (`id_tempat_wisata`) REFERENCES `tb_tempatwisata` (`id_Tempat_Wisata`),
  ADD CONSTRAINT `tb_penilaian_ibfk_2` FOREIGN KEY (`id_hotel`) REFERENCES `tb_hotel` (`id_Hotel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
