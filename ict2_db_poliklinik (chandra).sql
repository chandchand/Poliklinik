-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 05:43 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ict2_db_poliklinik`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_dokter`
--

CREATE TABLE `tb_dokter` (
  `kode_dok` varchar(10) NOT NULL,
  `nama_dok` varchar(50) NOT NULL,
  `alamat_dok` varchar(100) NOT NULL,
  `telp_dok` varchar(12) NOT NULL,
  `kode_poli` varchar(10) NOT NULL,
  `kode_jadwal` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dokter`
--

INSERT INTO `tb_dokter` (`kode_dok`, `nama_dok`, `alamat_dok`, `telp_dok`, `kode_poli`, `kode_jadwal`) VALUES
('DOKT000001', 'Dr.Maryam', 'dfff', '0998890239', 'POLI000001', 'JDWL000006'),
('DOKT000002', 'Dr.Marimas', 'dfgh', '0987647', 'POLI000003', 'JDWL000004');

-- --------------------------------------------------------

--
-- Table structure for table `tb_informasi`
--

CREATE TABLE `tb_informasi` (
  `id_informasi` int(11) NOT NULL,
  `nama_poliklinik` varchar(100) NOT NULL,
  `deskripsi_poliklinik` text NOT NULL,
  `alamat_poliklinik` text NOT NULL,
  `kec_poliklinik` varchar(70) NOT NULL,
  `kab_poliklinik` varchar(70) NOT NULL,
  `prov_poliklinik` varchar(70) NOT NULL,
  `kode_pos_poliklinik` int(6) NOT NULL,
  `telp_poliklinik` varchar(14) NOT NULL,
  `email_poliklinik` varchar(50) NOT NULL,
  `logo_poliklinik` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_informasi`
--

INSERT INTO `tb_informasi` (`id_informasi`, `nama_poliklinik`, `deskripsi_poliklinik`, `alamat_poliklinik`, `kec_poliklinik`, `kab_poliklinik`, `prov_poliklinik`, `kode_pos_poliklinik`, `telp_poliklinik`, `email_poliklinik`, `logo_poliklinik`) VALUES
(1, 'Kliknik Sehat Wal Afiats', 'Aplikasi Pengelola Data Poliklinik\"', '\"MVP ARS\"', 'Kiara Condong', 'bandung', 'Jawa Barat', 7218021, '081221373113', 'felisyaus@gmail.com', 'icons8-doctors-bag-100.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwal_praktik`
--

CREATE TABLE `tb_jadwal_praktik` (
  `kode_jadwal` varchar(10) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jadwal_praktik`
--

INSERT INTO `tb_jadwal_praktik` (`kode_jadwal`, `hari`, `jam_mulai`, `jam_selesai`) VALUES
('JDWL000001', 'Senin', '08:00:00', '11:00:00'),
('JDWL000002', 'Selasa', '08:00:00', '11:00:00'),
('JDWL000003', 'Rabu', '08:00:00', '11:00:00'),
('JDWL000004', 'Kamis', '08:00:00', '11:00:00'),
('JDWL000005', 'Jumat', '08:00:00', '11:00:00'),
('JDWL000006', 'Sabtu', '08:00:00', '11:00:00'),
('JDWL000007', 'Minggu', '04:04:00', '06:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis_biaya`
--

CREATE TABLE `tb_jenis_biaya` (
  `kode_jenis_biaya` varchar(10) NOT NULL,
  `nama_biaya` varchar(30) NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jenis_biaya`
--

INSERT INTO `tb_jenis_biaya` (`kode_jenis_biaya`, `nama_biaya`, `tarif`) VALUES
('BIYA000001', 'Pemeriksaan', 15000),
('BIYA000003', 'Cek Darah', 5000),
('BIYA000004', 'Cek Kolestelor', 30000),
('BIYA000005', 'Konsultasi', 15000),
('BIYA000006', 'Checkup', 50000),
('BIYA000007', 'BCA', 34444);

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE `tb_login` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `password` varchar(60) NOT NULL,
  `type_user` varchar(20) NOT NULL,
  `nip` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`username`, `password`, `type_user`, `nip`) VALUES
('admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 'PGW0000001'),
('coba1', 'e10adc3949ba59abbe56e057f20f883e', 'pendaftar', 'PGW0000005'),
('coba2', 'e10adc3949ba59abbe56e057f20f883e', 'kasir', 'PGW0000006'),
('coba3', 'e10adc3949ba59abbe56e057f20f883e', 'dokter', 'PGW0000007'),
('coba4', '14e1b600b1fd579f47433b88e8d85291', 'Pendaftar', 'PGW0000008'),
('dokter', 'e10adc3949ba59abbe56e057f20f883e', 'dokter', 'PGW0000002'),
('dsdsd', 'c91f1c4bc7d8a12f6d4a6fe45c84e1d5', 'admin', 'PGW0000009'),
('ferry', '25f9e794323b453885f5181f1b624d0b', 'admin', 'PGW0000010'),
('kasir', 'e10adc3949ba59abbe56e057f20f883e', 'kasir', 'PGW0000003'),
('pendaftar', '8edc6a0b2e5880aa676b9d229e52d667', 'pendaftar', 'PGW0000004');

-- --------------------------------------------------------

--
-- Table structure for table `tb_obat`
--

CREATE TABLE `tb_obat` (
  `kode_obat` varchar(10) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `merk` varchar(30) NOT NULL,
  `satuan` varchar(10) NOT NULL,
  `harga_jual` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_obat`
--

INSERT INTO `tb_obat` (`kode_obat`, `nama_obat`, `merk`, `satuan`, `harga_jual`) VALUES
('OBT0000001', 'Anti Alergi', 'Crolag', 'Tablet', 8000),
('OBT0000002', 'Obat untuk migran', 'Ergotamin', 'Kapsul', 9000),
('OBT0000003', 'Antiseptik Alami', 'Etoposid', 'Kapsul', 2000),
('OBT0000004', 'Obat penurun panas', 'Parasetamol', 'Tablet', 4000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE `tb_pasien` (
  `kode_pas` varchar(10) NOT NULL,
  `nama_pas` varchar(50) NOT NULL,
  `alamat_pas` varchar(100) NOT NULL,
  `telp_pas` varchar(12) NOT NULL,
  `tanggal_lahir_pas` date NOT NULL,
  `jenis_kelamin_pas` enum('Pria','Wanita') NOT NULL,
  `tanggal_reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`kode_pas`, `nama_pas`, `alamat_pas`, `telp_pas`, `tanggal_lahir_pas`, `jenis_kelamin_pas`, `tanggal_reg`) VALUES
('PAS0000001', 'Suparnoooo', 'Ds. Sawahan', '081873789232', '2016-10-20', 'Pria', '2016-10-24'),
('PAS0000002', 'Ngatinah', 'Ds. Pamotan', '088739409138', '2016-10-18', 'Wanita', '2016-10-24'),
('PAS0000003', 'Berta', 'Ds. Polandak', '063891773661', '2019-10-04', 'Wanita', '2016-10-24'),
('PAS0000004', 'Chandraaa', 'ujung berung', '342423423423', '0000-00-00', 'Pria', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `nip` varchar(10) NOT NULL,
  `nama_peg` varchar(50) NOT NULL,
  `alamat_peg` varchar(100) NOT NULL,
  `telp_peg` varchar(12) NOT NULL,
  `jenis_kelamin_peg` enum('Pria','Wanita') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`nip`, `nama_peg`, `alamat_peg`, `telp_peg`, `jenis_kelamin_peg`) VALUES
('PGW0000001', 'Cahyohartono Admin', 'Jl. Plered XI No. 2 Antapani - Bandung', '98888881', 'Pria'),
('PGW0000002', 'Cahyohartono Dokter', 'Jl. Plered XI No. 2 Antapani - Bandung', '081229999', 'Pria'),
('PGW0000003', 'Cahyohartono Kasir', 'Jl. Plered XI No. 2 Antapani - Bandung', '022 7218021', 'Wanita'),
('PGW0000004', 'Cahyohartono Pendaftar', 'Jl. Plered XI No. 2 Antapani - Bandung', '081221373113', 'Wanita'),
('PGW0000005', 'Nama Coba 1', 'Alamat Coba 1', '022 7218021', 'Wanita'),
('PGW0000006', 'Nama Coba 2', 'Alamat Coba 2', 'Telp-Coba2', 'Pria'),
('PGW0000007', 'Nama Coba 3', 'Alamat Coba 3', 'Telp-Coba3', 'Pria'),
('PGW0000008', 'Nama Coba 4', 'Alamat Coba 4', '65432178', 'Wanita'),
('PGW0000009', 'caaaasaaa', 'dsdsd', '232313123123', ''),
('PGW0000010', 'ferry', 'padasuka', '085721206777', 'Pria');

--
-- Triggers `tb_pegawai`
--
DELIMITER $$
CREATE TRIGGER `tb_hapus_login` BEFORE DELETE ON `tb_pegawai` FOR EACH ROW DELETE FROM tb_login WHERE nip = OLD.nip
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemeriksaan`
--

CREATE TABLE `tb_pemeriksaan` (
  `kode_pemeriksaan` varchar(10) NOT NULL,
  `tanggal_pemeriksaan` date NOT NULL,
  `keluhan` varchar(100) NOT NULL,
  `diagnosa` varchar(100) NOT NULL,
  `perawatan` varchar(100) NOT NULL,
  `tindakan` varchar(100) NOT NULL,
  `berat_badan` int(5) NOT NULL,
  `tensi_diastolik` int(5) NOT NULL,
  `tensi_sistolik` int(5) NOT NULL,
  `no_pendaftaran` int(11) NOT NULL,
  `rincian_pemeriksaan` enum('0','1') NOT NULL,
  `status_pemeriksaan` enum('0','1') NOT NULL,
  `kode_dok` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pemeriksaan`
--

INSERT INTO `tb_pemeriksaan` (`kode_pemeriksaan`, `tanggal_pemeriksaan`, `keluhan`, `diagnosa`, `perawatan`, `tindakan`, `berat_badan`, `tensi_diastolik`, `tensi_sistolik`, `no_pendaftaran`, `rincian_pemeriksaan`, `status_pemeriksaan`, `kode_dok`) VALUES
('PRS0000002', '2088-09-08', 'Berak terusssssss', 'eekee', 'nyiksa', 'minum obat', 50, 60, 77, 26, '1', '0', 'DOKT000002'),
('PRS0000003', '2090-04-04', 'freerer', 'a', 'dd', 'aaaadddd', 990, 9, 88, 25, '1', '0', 'DOKT000001'),
('PRS0000005', '2019-11-20', 'mmmm', 'mmm', 'mmm', 'mmm', 996, 94, 99, 25, '1', '0', 'DOKT000001'),
('PRS0000007', '2222-02-22', 'cccccc', 'ccc', 'cc', 'ccc', 333, 333, 33, 25, '1', '0', 'DOKT000001'),
('PRS0000008', '2019-11-12', 'erererererr', 'rrrrree', 'nyiksa', 'bdbdb', 44, 3, 2, 26, '1', '0', 'DOKT000002'),
('PRS0000009', '2019-11-06', 'ererrqqqqq', 'rrt', 'erwwwwq', 'rrr', 99, 33, 33, 27, '0', '0', 'DOKT000001'),
('PRS0000010', '2019-11-15', 'reretr', 'ceq', 'wewq', 'req', 33, 22, 22, 26, '1', '0', 'DOKT000002');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pendaftaran`
--

CREATE TABLE `tb_pendaftaran` (
  `no_pendaftaran` int(11) NOT NULL,
  `tanggal_daftar` date NOT NULL,
  `no_urut` int(11) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `kode_pas` varchar(10) NOT NULL,
  `kode_jadwal` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pendaftaran`
--

INSERT INTO `tb_pendaftaran` (`no_pendaftaran`, `tanggal_daftar`, `no_urut`, `nip`, `kode_pas`, `kode_jadwal`) VALUES
(25, '2019-02-22', 1, 'PGW0000004', 'PAS0000002', 'JDWL000003'),
(26, '2020-03-04', 2, 'PGW0000004', 'PAS0000003', 'JDWL000003'),
(27, '1111-12-02', 3, 'PGW0000004', 'PAS0000002', 'JDWL000001');

-- --------------------------------------------------------

--
-- Table structure for table `tb_poliklinik`
--

CREATE TABLE `tb_poliklinik` (
  `kode_poli` varchar(10) NOT NULL,
  `nama_poli` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_poliklinik`
--

INSERT INTO `tb_poliklinik` (`kode_poli`, `nama_poli`) VALUES
('POLI000001', 'Poli Hewan'),
('POLI000002', 'Poli Hati'),
('POLI000003', 'Poli Umum');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rekam_medis_biaya`
--

CREATE TABLE `tb_rekam_medis_biaya` (
  `id_rekam_medis_biaya` int(10) NOT NULL,
  `kode_pemeriksaan` varchar(10) NOT NULL,
  `kode_jenis_biaya` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rekam_medis_biaya`
--

INSERT INTO `tb_rekam_medis_biaya` (`id_rekam_medis_biaya`, `kode_pemeriksaan`, `kode_jenis_biaya`) VALUES
(3, 'PRS0000002', 'BIYA000003');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rekam_medis_obat`
--

CREATE TABLE `tb_rekam_medis_obat` (
  `id_rekam_medis_obat` int(10) NOT NULL,
  `kode_pemeriksaan_obat` varchar(11) NOT NULL,
  `kode_obat` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rekam_medis_obat`
--

INSERT INTO `tb_rekam_medis_obat` (`id_rekam_medis_obat`, `kode_pemeriksaan_obat`, `kode_obat`) VALUES
(1, 'PRS0000002', 'OBT0000002'),
(2, 'PRS0000003', 'OBT0000003'),
(3, 'PRS0000010', 'OBT0000003');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rekam_medis_resep`
--

CREATE TABLE `tb_rekam_medis_resep` (
  `id_rekam_medis_resep` int(10) NOT NULL,
  `kode_pemeriksaan_resep` varchar(11) NOT NULL,
  `kode_resep` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rekam_medis_resep`
--

INSERT INTO `tb_rekam_medis_resep` (`id_rekam_medis_resep`, `kode_pemeriksaan_resep`, `kode_resep`) VALUES
(1, 'PRS0000002', 'RESP000002');

-- --------------------------------------------------------

--
-- Table structure for table `tb_resep`
--

CREATE TABLE `tb_resep` (
  `kode_resep` varchar(10) NOT NULL,
  `dosis` varchar(30) NOT NULL,
  `jumlah` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_resep`
--

INSERT INTO `tb_resep` (`kode_resep`, `dosis`, `jumlah`) VALUES
('RESP000001', '2 x 1 / Hari', 12),
('RESP000002', '2 x 1 / Hari', 18),
('RESP000003', '2 x 1 / Hari', 12),
('RESP000004', '1 X 1 / Hari', 99);

-- --------------------------------------------------------

--
-- Table structure for table `tb_rincian_jenis_biaya`
--

CREATE TABLE `tb_rincian_jenis_biaya` (
  `kode_rincian_biaya` int(11) NOT NULL,
  `no_pendaftaran` int(11) NOT NULL,
  `kode_jenis_biaya` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_rincian_resep`
--

CREATE TABLE `tb_rincian_resep` (
  `kode_rincian_resep` int(11) NOT NULL,
  `kode_resep` varchar(10) NOT NULL,
  `kode_obat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dokter`
--
ALTER TABLE `tb_dokter`
  ADD PRIMARY KEY (`kode_dok`),
  ADD KEY `kode_poli` (`kode_poli`),
  ADD KEY `kode_jadwal` (`kode_jadwal`);

--
-- Indexes for table `tb_informasi`
--
ALTER TABLE `tb_informasi`
  ADD PRIMARY KEY (`id_informasi`);

--
-- Indexes for table `tb_jadwal_praktik`
--
ALTER TABLE `tb_jadwal_praktik`
  ADD PRIMARY KEY (`kode_jadwal`);

--
-- Indexes for table `tb_jenis_biaya`
--
ALTER TABLE `tb_jenis_biaya`
  ADD PRIMARY KEY (`kode_jenis_biaya`);

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`username`),
  ADD KEY `nip` (`nip`),
  ADD KEY `nip_2` (`nip`),
  ADD KEY `nip_3` (`nip`);

--
-- Indexes for table `tb_obat`
--
ALTER TABLE `tb_obat`
  ADD PRIMARY KEY (`kode_obat`);

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
  ADD PRIMARY KEY (`kode_pas`);

--
-- Indexes for table `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `tb_pemeriksaan`
--
ALTER TABLE `tb_pemeriksaan`
  ADD PRIMARY KEY (`kode_pemeriksaan`),
  ADD KEY `no_pendaftaran` (`no_pendaftaran`),
  ADD KEY `kode_dok` (`kode_dok`);

--
-- Indexes for table `tb_pendaftaran`
--
ALTER TABLE `tb_pendaftaran`
  ADD PRIMARY KEY (`no_pendaftaran`),
  ADD KEY `nip` (`nip`,`kode_pas`,`kode_jadwal`),
  ADD KEY `kode_jadwal` (`kode_jadwal`),
  ADD KEY `kode_pas` (`kode_pas`);

--
-- Indexes for table `tb_poliklinik`
--
ALTER TABLE `tb_poliklinik`
  ADD PRIMARY KEY (`kode_poli`);

--
-- Indexes for table `tb_rekam_medis_biaya`
--
ALTER TABLE `tb_rekam_medis_biaya`
  ADD PRIMARY KEY (`id_rekam_medis_biaya`),
  ADD KEY `kode_pemeriksaan` (`kode_pemeriksaan`),
  ADD KEY `kode_jenis_biaya` (`kode_jenis_biaya`);

--
-- Indexes for table `tb_rekam_medis_obat`
--
ALTER TABLE `tb_rekam_medis_obat`
  ADD PRIMARY KEY (`id_rekam_medis_obat`),
  ADD KEY `kode_pemeriksaan_obat` (`kode_pemeriksaan_obat`),
  ADD KEY `kode_obat` (`kode_obat`);

--
-- Indexes for table `tb_rekam_medis_resep`
--
ALTER TABLE `tb_rekam_medis_resep`
  ADD PRIMARY KEY (`id_rekam_medis_resep`),
  ADD KEY `kode_pemeriksaan_resep` (`kode_pemeriksaan_resep`),
  ADD KEY `kode_resep` (`kode_resep`);

--
-- Indexes for table `tb_resep`
--
ALTER TABLE `tb_resep`
  ADD PRIMARY KEY (`kode_resep`);

--
-- Indexes for table `tb_rincian_jenis_biaya`
--
ALTER TABLE `tb_rincian_jenis_biaya`
  ADD PRIMARY KEY (`kode_rincian_biaya`),
  ADD KEY `no_pendaftaran` (`no_pendaftaran`,`kode_jenis_biaya`),
  ADD KEY `kode_jenis_biaya` (`kode_jenis_biaya`);

--
-- Indexes for table `tb_rincian_resep`
--
ALTER TABLE `tb_rincian_resep`
  ADD PRIMARY KEY (`kode_rincian_resep`),
  ADD KEY `kode_resep` (`kode_resep`,`kode_obat`),
  ADD KEY `kode_obat` (`kode_obat`),
  ADD KEY `kode_resep_2` (`kode_resep`,`kode_obat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_informasi`
--
ALTER TABLE `tb_informasi`
  MODIFY `id_informasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_pendaftaran`
--
ALTER TABLE `tb_pendaftaran`
  MODIFY `no_pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tb_rekam_medis_biaya`
--
ALTER TABLE `tb_rekam_medis_biaya`
  MODIFY `id_rekam_medis_biaya` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tb_rekam_medis_obat`
--
ALTER TABLE `tb_rekam_medis_obat`
  MODIFY `id_rekam_medis_obat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_rekam_medis_resep`
--
ALTER TABLE `tb_rekam_medis_resep`
  MODIFY `id_rekam_medis_resep` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_rincian_jenis_biaya`
--
ALTER TABLE `tb_rincian_jenis_biaya`
  MODIFY `kode_rincian_biaya` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_rincian_resep`
--
ALTER TABLE `tb_rincian_resep`
  MODIFY `kode_rincian_resep` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_dokter`
--
ALTER TABLE `tb_dokter`
  ADD CONSTRAINT `tb_dokter_ibfk_2` FOREIGN KEY (`kode_jadwal`) REFERENCES `tb_jadwal_praktik` (`kode_jadwal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_dokter_ibfk_3` FOREIGN KEY (`kode_poli`) REFERENCES `tb_poliklinik` (`kode_poli`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_login`
--
ALTER TABLE `tb_login`
  ADD CONSTRAINT `tb_login_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `tb_pegawai` (`nip`);

--
-- Constraints for table `tb_pemeriksaan`
--
ALTER TABLE `tb_pemeriksaan`
  ADD CONSTRAINT `fk_no_pendaftaran` FOREIGN KEY (`no_pendaftaran`) REFERENCES `tb_pendaftaran` (`no_pendaftaran`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pemeriksaan_ibfk_1` FOREIGN KEY (`kode_dok`) REFERENCES `tb_dokter` (`kode_dok`);

--
-- Constraints for table `tb_pendaftaran`
--
ALTER TABLE `tb_pendaftaran`
  ADD CONSTRAINT `tb_pendaftaran_ibfk_3` FOREIGN KEY (`kode_jadwal`) REFERENCES `tb_jadwal_praktik` (`kode_jadwal`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pendaftaran_ibfk_5` FOREIGN KEY (`nip`) REFERENCES `tb_pegawai` (`nip`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_pendaftaran_ibfk_6` FOREIGN KEY (`kode_pas`) REFERENCES `tb_pasien` (`kode_pas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_rekam_medis_biaya`
--
ALTER TABLE `tb_rekam_medis_biaya`
  ADD CONSTRAINT `fk_medis_biaya_jenis_biaya` FOREIGN KEY (`kode_jenis_biaya`) REFERENCES `tb_jenis_biaya` (`kode_jenis_biaya`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_medis_biaya_pemeriksaan` FOREIGN KEY (`kode_pemeriksaan`) REFERENCES `tb_pemeriksaan` (`kode_pemeriksaan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_rekam_medis_obat`
--
ALTER TABLE `tb_rekam_medis_obat`
  ADD CONSTRAINT `fk_medis_obat_obat` FOREIGN KEY (`kode_obat`) REFERENCES `tb_obat` (`kode_obat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_medis_obat_pemeriksaan` FOREIGN KEY (`kode_pemeriksaan_obat`) REFERENCES `tb_pemeriksaan` (`kode_pemeriksaan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_rekam_medis_resep`
--
ALTER TABLE `tb_rekam_medis_resep`
  ADD CONSTRAINT `fk_medis_resep_pemeriksaan` FOREIGN KEY (`kode_pemeriksaan_resep`) REFERENCES `tb_pemeriksaan` (`kode_pemeriksaan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_medis_resep_resep` FOREIGN KEY (`kode_resep`) REFERENCES `tb_resep` (`kode_resep`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_rincian_jenis_biaya`
--
ALTER TABLE `tb_rincian_jenis_biaya`
  ADD CONSTRAINT `tb_rincian_jenis_biaya_ibfk_2` FOREIGN KEY (`kode_jenis_biaya`) REFERENCES `tb_jenis_biaya` (`kode_jenis_biaya`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_rincian_jenis_biaya_ibfk_3` FOREIGN KEY (`no_pendaftaran`) REFERENCES `tb_pendaftaran` (`no_pendaftaran`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_rincian_resep`
--
ALTER TABLE `tb_rincian_resep`
  ADD CONSTRAINT `tb_rincian_resep_ibfk_1` FOREIGN KEY (`kode_obat`) REFERENCES `tb_obat` (`kode_obat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_rincian_resep_ibfk_2` FOREIGN KEY (`kode_resep`) REFERENCES `tb_resep` (`kode_resep`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
