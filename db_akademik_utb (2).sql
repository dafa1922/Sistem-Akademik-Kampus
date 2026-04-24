-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Apr 2026 pada 13.58
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_akademik_utb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `kode_dosen` varchar(15) NOT NULL,
  `nama_dosen` varchar(100) NOT NULL,
  `jabatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`kode_dosen`, `nama_dosen`, `jabatan`) VALUES
('D001', 'Danny Aidil Rismayadi, S.SI., M.Kom.', 'Dosen Wali'),
('D002', 'Dhany Indra Gunawan, S.T., M.Kom.', 'Dosen'),
('D003', 'Hena Sulaeman, ST.', 'Kaprodi'),
('D004', 'Yasti Aisyah Primianjani, S.Kom.', 'Dosen'),
('D005', 'Iwan Ridwan, S.T., M.Kom.', 'Dosen'),
('D006', 'Erryck Norrys, S.Kom.', 'Dosen'),
('D007', 'Sri Kuswayati, S.Si., M.Kom.', 'Dosen'),
('D008', 'Fahmi Abdullah, S.T., M.Kom.', 'Dosen');

-- --------------------------------------------------------

--
-- Struktur dari tabel `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(11) NOT NULL,
  `nim` varchar(15) DEFAULT NULL,
  `kode_mk` varchar(15) DEFAULT NULL,
  `kode_dosen` varchar(15) DEFAULT NULL,
  `thn_akademik` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `krs`
--

INSERT INTO `krs` (`id_krs`, `nim`, `kode_mk`, `kode_dosen`, `thn_akademik`) VALUES
(77, '24552011130', 'IF-001', 'D001', '2026/2027 Genap'),
(78, '24552011130', 'IF-002', 'D001', '2026/2027 Genap'),
(79, '24552011130', 'IF-004', 'D001', '2026/2027 Genap'),
(80, '24552011130', 'IF-005', 'D001', '2026/2027 Genap'),
(81, '24552011130', 'IF-006', 'D001', '2026/2027 Genap'),
(82, '24552011130', 'IF-007', 'D001', '2026/2027 Genap'),
(83, '24552011130', 'IF-008', 'D001', '2026/2027 Genap'),
(84, '24552011130', 'IF-009', 'D001', '2026/2027 Genap'),
(85, '24552011106', 'IF-001', 'D001', '2026/2027 Genap'),
(86, '24552011106', 'IF-002', 'D001', '2026/2027 Genap'),
(87, '24552011106', 'IF-003', 'D001', '2026/2027 Genap'),
(88, '24552011106', 'IF-004', 'D001', '2026/2027 Genap'),
(89, '24552011106', 'IF-005', 'D001', '2026/2027 Genap'),
(90, '24552011106', 'IF-006', 'D001', '2026/2027 Genap'),
(91, '24552011106', 'IF-007', 'D001', '2026/2027 Genap'),
(92, '24552011106', 'IF-008', 'D001', '2026/2027 Genap');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `alamat`) VALUES
('24552011106', 'Adrian Fathurrahman', 'Cilenyi'),
('24552011130', 'Ayipnoor Irfan Putra Wahyudin', 'Bojongsoang'),
('24552011194', 'Diky Raihan Subagja', 'Nanjung'),
('24552011198', 'Fajar Fathurahman', 'Cibeurem'),
('24552011287', 'Annisa Febrianti', 'Pangalengan'),
('24552011294', 'Adrian', 'Leuwipanjang'),
('24552011297', 'Ahmad Kurnia', 'Ujung Berung'),
('24552011306', 'Dafa Irsyad Nashrullah', 'Bandung'),
('24552011311', 'Dhenia Putri Nuraini', 'Pasteur'),
('24552011324', 'Muhammad Arga', 'Baleendah'),
('24552011978', 'Feisal Riyadi', 'Cileunyi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_mk` varchar(10) NOT NULL,
  `nama_mk` varchar(100) NOT NULL,
  `sks` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `nama_dosen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kode_mk`, `nama_mk`, `sks`, `semester`, `nama_dosen`) VALUES
('IF-001', 'Keamanan Komputer', 3, 4, 'Yasti Aisyah Primianjani, S.Kom.'),
('IF-002', 'Pemrograman Mobile', 3, 4, 'Erryck Norrys, S.Kom.'),
('IF-003', 'Objek Oriented Analisys and Design', 3, 4, 'Danny Aidil Rismayadi, S.SI., M.Kom.'),
('IF-004', 'Digital Preneurship', 3, 4, 'Dhany Indra Gunawan, S.T., M.Kom.'),
('IF-005', 'Teknik Kompilasi', 3, 4, 'Fahmi Abdullah, S.T., M.Kom.'),
('IF-006', 'Data Mining', 3, 4, 'Sri Kuswayati, S.Si., M.Kom.'),
('IF-007', 'Pemrograman Berorientasi Objek II', 3, 4, 'Iwan Ridwan, S.T., M.Kom.'),
('IF-008', 'Jaringan Komputer 2', 3, 4, 'Hena Sulaeman, ST.'),
('IF-009', 'Sistem Operasi', 3, 3, 'Dhany Indra Gunawan, S.T., M.Kom.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `nim` varchar(20) DEFAULT NULL,
  `nama_mk` varchar(100) DEFAULT NULL,
  `uts` double DEFAULT NULL,
  `uas` double DEFAULT NULL,
  `tugas` double DEFAULT NULL,
  `absen` double DEFAULT NULL,
  `nilai_akhir` double DEFAULT NULL,
  `grade` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `nim`, `nama_mk`, `uts`, `uas`, `tugas`, `absen`, `nilai_akhir`, `grade`) VALUES
(6, '24552011194', 'Objek Oriented Analisys and Design', 90, 90, 50, 15, 74.5, 'B'),
(7, '24552011194', 'Pemrograman Berorientasi Objek', 50, 90, 20, 50, 60, 'BC'),
(8, '24552011194', 'Objek Oriented Analisys and Design', 90, 90, 50, 15, 74.5, 'B'),
(9, '24552011194', 'Pemrograman Berorientasi Objek', 50, 90, 20, 50, 60, 'BC'),
(10, '24552011194', 'Jaringan Komputer II', 50, 50, 50, 50, 50, 'C'),
(11, '24552011194', 'Digital Preneurship', 90, 70, 50, 90, 74, 'B'),
(12, '24552011194', 'Teknik Kompilasi', 90, 90, 90, 90, 90, 'A'),
(13, '24552011194', 'Pemrograman Mobile', 80, 80, 80, 80, 80, 'AB'),
(14, '24552011194', 'Data Mining', 80, 85, 90, 80, 84, 'AB'),
(15, '24552011194', 'Keamanan Komputer', 90, 95, 90, 90, 92, 'A'),
(16, '24552011194', 'Objek Oriented Analisys and Design', 90, 90, 90, 90, 90, 'A'),
(17, '24552011194', 'Pemrograman Berorientasi Objek', 90, 90, 90, 90, 90, 'A'),
(18, '24552011194', 'Jaringan Komputer II', 90, 90, 90, 90, 90, 'A'),
(19, '24552011194', 'Digital Preneurship', 90, 90, 90, 90, 90, 'A'),
(20, '24552011194', 'Teknik Kompilasi', 90, 90, 90, 90, 90, 'A'),
(21, '24552011194', 'Pemrograman Mobile', 30, 30, 30, 30, 30, 'E'),
(22, '24552011194', 'Data Mining', 50, 50, 50, 50, 50, 'C'),
(23, '24552011194', 'Keamanan Komputer', 70, 70, 70, 70, 70, 'B'),
(24, '24552011311', 'Keamanan Komputer', 90, 90, 90, 90, 90, 'A'),
(25, '24552011306', 'Keamanan Komputer', 90, 90, 90, 90, 90, 'A'),
(26, '24552011294', 'Keamanan Komputer', 80, 80, 80, 80, 80, 'AB'),
(27, '24552011294', 'Pemrograman Mobile', 50, 50, 90, 75, 60.5, 'BC'),
(28, '24552011294', 'Objek Oriented Analisys and Design', 90, 90, 90, 90, 90, 'A'),
(29, '24552011294', 'Digital Preneurship', 80, 80, 50, 10, 67, 'BC'),
(30, '24552011294', 'Teknik Kompilasi', 90, 90, 90, 90, 90, 'A'),
(31, '24552011294', 'Data Mining', 30, 30, 50, 90, 40, 'D'),
(32, '24552011294', 'Pemrograman Berorientasi Objek II', 10, 10, 20, 20, 13, 'E'),
(33, '12121212', 'Jaringan Komputer 2', 80, 80, 80, 80, 80, 'AB'),
(34, '12121212', 'Jaringan Komputer 2', 90, 90, 90, 90, 90, 'A'),
(35, '12121212', 'Keamanan Komputer', 90, 90, 90, 60, 87, 'A'),
(36, '12121212', 'Sistem Operasi', 90, 20, 90, 10, 54, 'C'),
(37, '24552011130', 'Keamanan Komputer', 90, 90, 90, 90, 90, 'A'),
(38, '24552011130', 'Pemrograman Mobile', 90, 90, 90, 90, 90, 'A'),
(39, '24552011130', 'Digital Preneurship', 90, 90, 90, 90, 90, 'A'),
(40, '24552011130', 'Teknik Kompilasi', 90, 90, 90, 90, 90, 'A'),
(41, '24552011130', 'Data Mining', 80, 85, 80, 50, 79, 'B'),
(42, '24552011130', 'Pemrograman Berorientasi Objek II', 90, 50, 50, 50, 62, 'BC'),
(43, '24552011130', 'Jaringan Komputer 2', 10, 10, 10, 15, 10.5, 'E'),
(44, '24552011130', 'Sistem Operasi', 80, 85, 75, 20, 75, 'B'),
(45, '24552011106', 'Keamanan Komputer', 90, 90, 90, 90, 90, 'A'),
(46, '24552011106', 'Pemrograman Mobile', 80, 38, 34, 29, 48.900000000000006, 'D'),
(47, '24552011106', 'Objek Oriented Analisys and Design', 20, 90, 90, 90, 69, 'BC'),
(48, '24552011106', 'Digital Preneurship', 10, 90, 90, 80, 65, 'BC'),
(49, '24552011106', 'Teknik Kompilasi', 80, 80, 80, 80, 80, 'AB'),
(50, '24552011106', 'Data Mining', 70, 57, 80, 90, 68.8, 'BC'),
(51, '24552011106', 'Pemrograman Berorientasi Objek II', 10, 30, 90, 90, 42, 'D'),
(52, '24552011106', 'Jaringan Komputer 2', 20, 90, 90, 90, 69, 'BC');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('Admin','Operator') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', 'adminaja', 'Admin'),
(6, 'op', 'op1', 'Operator'),
(7, 'Ujang', '123', 'Operator'),
(8, 'dafa', '1', 'Operator'),
(9, 'Operator 1', '123', 'Operator'),
(10, 'op3', '123', 'Operator'),
(11, '', '', 'Operator');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`kode_dosen`);

--
-- Indeks untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`),
  ADD KEY `fk_mahasiswa` (`nim`),
  ADD KEY `fk_matakuliah` (`kode_mk`),
  ADD KEY `fk_dosen` (`kode_dosen`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `krs`
--
ALTER TABLE `krs`
  MODIFY `id_krs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `fk_dosen` FOREIGN KEY (`kode_dosen`) REFERENCES `dosen` (`kode_dosen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mahasiswa` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_matakuliah` FOREIGN KEY (`kode_mk`) REFERENCES `matakuliah` (`kode_mk`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
