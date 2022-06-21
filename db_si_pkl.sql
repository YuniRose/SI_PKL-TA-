-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2020 at 02:11 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_si_pkl`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_adm_prodi`
--

CREATE TABLE `tb_adm_prodi` (
  `kd_prodi` int(15) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `jekel` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_adm_prodi`
--

INSERT INTO `tb_adm_prodi` (`kd_prodi`, `nama`, `jekel`, `alamat`, `username`, `password`, `email`) VALUES
(1, 'ADM Prodi', 'Perempuan', 'Padang', 'prodi', '32b404761d910d277789cd91076d1459', 'prodi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dosen`
--

CREATE TABLE `tb_dosen` (
  `nidn` varchar(15) NOT NULL,
  `nm_dosen` varchar(35) NOT NULL,
  `jekel` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dosen`
--

INSERT INTO `tb_dosen` (`nidn`, `nm_dosen`, `jekel`, `alamat`, `telp`, `email`, `username`, `password`) VALUES
('00233444', 'Jupriadi', 'Laki-laki', 'Padang', '082312312454', 'dosen@gmail.com', 'dosen', 'ce28eed1511f631af6b2a7bb0a85d636');

-- --------------------------------------------------------

--
-- Table structure for table `tb_instansi`
--

CREATE TABLE `tb_instansi` (
  `kd_instansi` varchar(15) NOT NULL,
  `nm_instansi` varchar(35) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `web` text NOT NULL,
  `logo` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_instansi`
--

INSERT INTO `tb_instansi` (`kd_instansi`, `nm_instansi`, `telp`, `fax`, `email`, `alamat`, `web`, `logo`, `username`, `password`) VALUES
('INS274982', 'Kejaksaan Sumbar', '(841231)23121', '(82131)23123123', 'kejati@gmail.com', 'Jln. Gajah Mada Gang Simeru', 'www.kejati.go.id', 'Hydrangeas.jpg', 'instansi', '4c333efbef7f557269b10c04dc184fd6'),
('INS664545', 'aSAsAS', '35325325', '97312312', 'instansi@gmail.com', 'padang', 'www.asdasdasd.com', 'Jellyfish.jpg', '123456', 'e10adc3949ba59abbe56e057f20f883e'),
('INS732880', 'Polda Sumatera Barat', '(5812)3123123', '(5812)31231233', 'polda@gmail.com', 'padang', 'www.polda.go.id', 'Lighthouse.jpg', 'polda', '037b02a9bb1f9c637c0ec0dab219511d');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mhs`
--

CREATE TABLE `tb_mhs` (
  `nobp` varchar(10) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `jekel` enum('Laki-laki','Perempuan') NOT NULL,
  `agama` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `nidn_pembimbing` varchar(15) NOT NULL,
  `jd_lap_pkl` text,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` text NOT NULL,
  `periode` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mhs`
--

INSERT INTO `tb_mhs` (`nobp`, `nama`, `jekel`, `agama`, `alamat`, `telp`, `email`, `tgl_lahir`, `nidn_pembimbing`, `jd_lap_pkl`, `username`, `password`, `foto`, `periode`) VALUES
('08789798', 'aku coba', 'Laki-laki', 'Islam', 'khkh', '0812323', 'jhgjh@gmial.com', '1958-10-09', '00233444', 'sadasd', 'qwerty', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'asd.jpg', '2020/2021'),
('2132131', 'nosan', 'Laki-laki', '', '', '0812321312', 'nosan@gmail.com', '1970-01-01', '', '', 'nosan', '44696adda0ba4f164b2cddb2517d58cc', 'Koala.jpg', ''),
('21389081', 'Ardi', 'Laki-laki', 'Kristen', 'padang', '0812312312312', 'ardi@gmail.com', '1961-11-13', '00233444', '', 'ardi', '0264391c340e4d3cbba430cee7836eaf', 'Koala.jpg', '2017/2018'),
('324234', 'Novi Arini', 'Perempuan', 'Kristen', 'SADASDA', '085765756', 'noepn@gmail.com', '1951-03-03', '00233444', 'jtrkytytnytr yrtyrt yyuu utiyu', 'novi', '832f72b7a13b2cedcfb108603a10e2a6', 'Penguins.jpg', '2017/2018'),
('3423423', 'Aripin', 'Perempuan', 'Islam', 'padang', '08423423432', 'asdasdasdas@gmail.com', '1951-02-02', '00233444', 'oi4po9epwqkelqwemlqwe', 'coba', 'b41d59fbf6820910aa4d80e3657b9cd7', 'Koala.jpg', '2017/2018'),
('9071902312', 'nopri', 'Laki-laki', 'Kristen', 'asdasdasd', '08123123123', 'asdasdasdas@gmail.com', '1959-10-13', '00233444', 'fjgh truytui uoiu ouo', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Lighthouse.jpg', '2017/2018');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai_dosen`
--

CREATE TABLE `tb_nilai_dosen` (
  `kd_nilai_dosen` int(10) NOT NULL,
  `penguasaan_bahasa` int(3) NOT NULL,
  `kemampuan_pengembangan` int(3) NOT NULL,
  `penguasaan_kaidah` int(3) NOT NULL,
  `kelengkapan_laporan` int(3) NOT NULL,
  `nobp` varchar(15) NOT NULL,
  `nidn` varchar(15) NOT NULL,
  `stt_nilai` enum('Belum','Sudah') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nilai_dosen`
--

INSERT INTO `tb_nilai_dosen` (`kd_nilai_dosen`, `penguasaan_bahasa`, `kemampuan_pengembangan`, `penguasaan_kaidah`, `kelengkapan_laporan`, `nobp`, `nidn`, `stt_nilai`) VALUES
(2, 30, 70, 90, 99, '3423423', '00233444', 'Sudah'),
(3, 30, 100, 100, 100, '9071902312', '00233444', 'Sudah'),
(4, 43, 34, 34, 54, '08789798', '00233444', 'Sudah');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai_instansi`
--

CREATE TABLE `tb_nilai_instansi` (
  `kd_nilai_instansi` int(10) NOT NULL,
  `nobp` varchar(15) NOT NULL,
  `disiplin` int(3) NOT NULL,
  `jujur` int(3) NOT NULL,
  `sosialisasi` int(3) NOT NULL,
  `komunikasi` int(3) NOT NULL,
  `k_manajerial` int(3) NOT NULL,
  `k_tim` int(3) NOT NULL,
  `k_komputer` int(3) NOT NULL,
  `p_ilmu_penunjang` int(3) NOT NULL,
  `kwa_hasil_kerja` int(3) NOT NULL,
  `motivasi_hal_baru` int(3) NOT NULL,
  `kd_instansi` varchar(15) NOT NULL,
  `nm_pbb_instansi` varchar(35) DEFAULT NULL,
  `nip` int(25) DEFAULT NULL,
  `jabatan` varchar(35) DEFAULT NULL,
  `stt_nilai` enum('Belum','Sudah') NOT NULL DEFAULT 'Belum'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nilai_instansi`
--

INSERT INTO `tb_nilai_instansi` (`kd_nilai_instansi`, `nobp`, `disiplin`, `jujur`, `sosialisasi`, `komunikasi`, `k_manajerial`, `k_tim`, `k_komputer`, `p_ilmu_penunjang`, `kwa_hasil_kerja`, `motivasi_hal_baru`, `kd_instansi`, `nm_pbb_instansi`, `nip`, `jabatan`, `stt_nilai`) VALUES
(5, '324234', 90, 80, 99, 100, 50, 90, 70, 88, 85, 33, 'INS274982', 'Nopen Rianto', 2147483647, 'Programmer', 'Sudah'),
(6, '3423423', 100, 100, 100, 100, 100, 100, 100, 100, 100, 97, 'INS274982', 'Nopen Rianto', 123123123, 'dasdasda', 'Sudah'),
(7, '9071902312', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'INS274982', '', 0, '', 'Belum'),
(9, '21389081', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'INS274982', '', 0, '', 'Belum'),
(10, '08789798', 45, 34, 44, 32, 67, 67, 77, 78, 87, 77, 'INS732880', 'asdasdas', 453453, 'asdasdas', 'Sudah');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penempatan`
--

CREATE TABLE `tb_penempatan` (
  `kd_penempatan` int(11) NOT NULL,
  `nobp` varchar(15) NOT NULL,
  `kd_instansi` varchar(15) NOT NULL,
  `posisi` varchar(35) DEFAULT NULL,
  `status` enum('Pending','Diterima','Ditolak') NOT NULL DEFAULT 'Pending',
  `periode` varchar(25) NOT NULL,
  `tgl_mulai_pkl` date NOT NULL,
  `tgl_akhir_pkl` date NOT NULL,
  `ket` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penempatan`
--

INSERT INTO `tb_penempatan` (`kd_penempatan`, `nobp`, `kd_instansi`, `posisi`, `status`, `periode`, `tgl_mulai_pkl`, `tgl_akhir_pkl`, `ket`) VALUES
(1, '3423423', 'INS274982', 'Kepegawaian', 'Diterima', '2017/2018', '2019-01-17', '2019-03-01', ''),
(3, '324234', 'INS274982', '', 'Diterima', '2017/2018', '2019-01-17', '2019-03-03', ''),
(4, '9071902312', 'INS274982', '', 'Diterima', '2018/2019', '2019-01-17', '2019-03-03', ''),
(5, '21389081', 'INS274982', 'Bagian Umum', 'Diterima', '2017/2018', '2019-01-20', '2019-01-21', ''),
(6, '08789798', 'INS732880', 'adasdas', 'Diterima', '2020/2021', '2020-04-01', '2020-04-30', 'sada');

-- --------------------------------------------------------

--
-- Table structure for table `tb_periode_penilaian`
--

CREATE TABLE `tb_periode_penilaian` (
  `kd_periode` int(11) NOT NULL,
  `untuk` enum('Dosen','Instansi') NOT NULL,
  `tgl_mulai` datetime NOT NULL,
  `batas_periode` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_periode_penilaian`
--

INSERT INTO `tb_periode_penilaian` (`kd_periode`, `untuk`, `tgl_mulai`, `batas_periode`) VALUES
(1, 'Dosen', '2019-01-14 06:12:29', '2020-05-17 06:12:29'),
(2, 'Instansi', '2019-01-14 06:12:29', '2020-05-30 06:12:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_adm_prodi`
--
ALTER TABLE `tb_adm_prodi`
  ADD PRIMARY KEY (`kd_prodi`);

--
-- Indexes for table `tb_dosen`
--
ALTER TABLE `tb_dosen`
  ADD PRIMARY KEY (`nidn`);

--
-- Indexes for table `tb_instansi`
--
ALTER TABLE `tb_instansi`
  ADD PRIMARY KEY (`kd_instansi`);

--
-- Indexes for table `tb_mhs`
--
ALTER TABLE `tb_mhs`
  ADD PRIMARY KEY (`nobp`);

--
-- Indexes for table `tb_nilai_dosen`
--
ALTER TABLE `tb_nilai_dosen`
  ADD PRIMARY KEY (`kd_nilai_dosen`),
  ADD KEY `tb_nilai_dosen_ibfk_1` (`nidn`),
  ADD KEY `nobp` (`nobp`);

--
-- Indexes for table `tb_nilai_instansi`
--
ALTER TABLE `tb_nilai_instansi`
  ADD PRIMARY KEY (`kd_nilai_instansi`),
  ADD KEY `nobp` (`nobp`),
  ADD KEY `kd_instansi` (`kd_instansi`);

--
-- Indexes for table `tb_penempatan`
--
ALTER TABLE `tb_penempatan`
  ADD PRIMARY KEY (`kd_penempatan`),
  ADD KEY `kd_instansi` (`kd_instansi`),
  ADD KEY `nobp` (`nobp`);

--
-- Indexes for table `tb_periode_penilaian`
--
ALTER TABLE `tb_periode_penilaian`
  ADD PRIMARY KEY (`kd_periode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_adm_prodi`
--
ALTER TABLE `tb_adm_prodi`
  MODIFY `kd_prodi` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_nilai_dosen`
--
ALTER TABLE `tb_nilai_dosen`
  MODIFY `kd_nilai_dosen` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_nilai_instansi`
--
ALTER TABLE `tb_nilai_instansi`
  MODIFY `kd_nilai_instansi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_penempatan`
--
ALTER TABLE `tb_penempatan`
  MODIFY `kd_penempatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_periode_penilaian`
--
ALTER TABLE `tb_periode_penilaian`
  MODIFY `kd_periode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_nilai_dosen`
--
ALTER TABLE `tb_nilai_dosen`
  ADD CONSTRAINT `tb_nilai_dosen_ibfk_1` FOREIGN KEY (`nidn`) REFERENCES `tb_dosen` (`nidn`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tb_nilai_dosen_ibfk_2` FOREIGN KEY (`nobp`) REFERENCES `tb_mhs` (`nobp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tb_nilai_instansi`
--
ALTER TABLE `tb_nilai_instansi`
  ADD CONSTRAINT `tb_nilai_instansi_ibfk_1` FOREIGN KEY (`nobp`) REFERENCES `tb_mhs` (`nobp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tb_nilai_instansi_ibfk_2` FOREIGN KEY (`kd_instansi`) REFERENCES `tb_instansi` (`kd_instansi`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tb_penempatan`
--
ALTER TABLE `tb_penempatan`
  ADD CONSTRAINT `tb_penempatan_ibfk_1` FOREIGN KEY (`kd_instansi`) REFERENCES `tb_instansi` (`kd_instansi`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tb_penempatan_ibfk_2` FOREIGN KEY (`nobp`) REFERENCES `tb_mhs` (`nobp`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
