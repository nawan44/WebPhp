-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 23 Feb 2016 pada 00.49
-- Versi Server: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nawina`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(16) NOT NULL,
  `id_jenis` varchar(10) NOT NULL,
  `nm_barang` varchar(30) NOT NULL,
  `stok` int(11) NOT NULL,
  `hrg_beli` int(11) NOT NULL,
  `hrg_jual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `id_jenis`, `nm_barang`, `stok`, `hrg_beli`, `hrg_jual`) VALUES
('B00000001', 'JB001', 'Tenun 1720', 299, 20000, 25000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id_keluar` varchar(30) NOT NULL,
  `tgl_keluar` date NOT NULL,
  `id_user` varchar(16) NOT NULL,
  `id_outlet` varchar(16) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang_keluar`
--

INSERT INTO `barang_keluar` (`id_keluar`, `tgl_keluar`, `id_user`, `id_outlet`, `time`) VALUES
('OUT1014201300001', '2013-10-14', '00', 'MB001', '2013-10-14 14:11:02'),
('OUT1014201300002', '2013-10-14', '00', 'MB001', '2013-10-14 14:11:32'),
('OUT1111201300003', '2013-11-11', '', 'RB002', '2013-11-11 07:59:34'),
('OUT1111201300004', '2013-11-11', '001', 'RB002', '2013-11-11 08:04:56'),
('OUT1114201300005', '2013-11-14', '001', 'RB001', '2013-11-14 08:16:06'),
('OUT1119201300006', '2013-11-19', '001', 'RB001', '2013-11-19 07:14:54'),
('OUT1125201300007', '2013-11-25', '001', 'RB001', '2013-11-25 07:39:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id_masuk` varchar(16) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `id_user` varchar(16) NOT NULL,
  `id_supplier` varchar(16) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang_masuk`
--

INSERT INTO `barang_masuk` (`id_masuk`, `tgl_masuk`, `id_user`, `id_supplier`, `time`) VALUES
('RES1024201300001', '2013-10-24', '00', 'SUP-001', '0000-00-00 00:00:00'),
('RES1024201300002', '2013-10-24', '00', 'SUP-001', '2013-10-24 03:46:36'),
('RES1107201300003', '2013-11-07', '00', 'SUP-001', '2013-11-07 03:45:58'),
('RES1114201300004', '2013-11-14', '001', 'SUP-002', '2013-11-14 08:11:40'),
('RES1114201300005', '2013-11-14', '001', 'SUP-001', '2013-11-14 08:16:54'),
('RES1125201300006', '2013-11-25', '001', 'SUP-001', '2013-11-25 07:36:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_outlet`
--

CREATE TABLE `barang_outlet` (
  `id_outlet` varchar(16) NOT NULL,
  `id_barang` varchar(16) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang_outlet`
--

INSERT INTO `barang_outlet` (`id_outlet`, `id_barang`, `stok`) VALUES
('RB001', 'B00000001', 107),
('RB001', 'B00000002', 20),
('RB001', 'B00000003', 84),
('RB001', 'B00000004', 30),
('RB001', 'B00000005', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `biaya_kurir`
--

CREATE TABLE `biaya_kurir` (
  `kd_kota` int(5) NOT NULL,
  `nm_kota` varchar(100) NOT NULL,
  `biaya_kirim` int(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_barang_keluar`
--

CREATE TABLE `detail_barang_keluar` (
  `no` int(11) NOT NULL,
  `id_keluar` varchar(16) NOT NULL,
  `id_barang` varchar(16) NOT NULL,
  `stok_awal` int(11) NOT NULL,
  `jml_keluar` int(11) NOT NULL,
  `hrg_beli` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_barang_keluar`
--

INSERT INTO `detail_barang_keluar` (`no`, `id_keluar`, `id_barang`, `stok_awal`, `jml_keluar`, `hrg_beli`, `sub_total`, `time`) VALUES
(70, 'OUT1014201300001', 'B00000001', 400, 10, 20000, 200000, '2013-10-14 14:05:46'),
(71, 'OUT1014201300001', 'B00000001', 390, 1, 20000, 20000, '2013-10-14 14:06:58'),
(72, 'OUT1014201300001', 'B00000001', 389, 1, 20000, 20000, '2013-10-14 14:08:09'),
(73, 'OUT1014201300002', 'B00000001', 388, 1, 20000, 20000, '2013-10-14 14:11:29'),
(74, 'OUT1111201300003', 'B00000001', 393, 12, 20000, 240000, '2013-11-11 07:59:11'),
(75, 'OUT1111201300003', 'B00000002', 366, 20, 10000, 200000, '2013-11-11 07:59:23'),
(76, 'OUT1111201300004', 'B00000001', 381, 10, 20000, 200000, '2013-11-11 08:04:05'),
(77, 'OUT1111201300004', 'B00000002', 346, 2, 10000, 20000, '2013-11-11 08:04:18'),
(78, 'OUT1111201300004', 'B00000003', 360, 5, 32000, 160000, '2013-11-11 08:04:30'),
(79, 'OUT1111201300004', 'B00000004', 164, 35, 12000, 420000, '2013-11-11 08:04:41'),
(80, 'OUT1114201300005', 'B00000001', 399, 20, 20000, 400000, '2013-11-14 08:15:49'),
(81, 'OUT1114201300005', 'B00000002', 356, 50, 10000, 500000, '2013-11-14 08:16:00'),
(82, 'OUT1119201300006', 'B00000001', 377, 77, 20000, 1540000, '2013-11-19 07:14:24'),
(83, 'OUT1119201300006', 'B00000002', 314, 14, 10000, 140000, '2013-11-19 07:14:34'),
(84, 'OUT1119201300006', 'B00000003', 360, 60, 32000, 1920000, '2013-11-19 07:14:45'),
(85, 'OUT1125201300007', 'B00000001', 334, 34, 20000, 680000, '2013-11-25 07:38:34'),
(86, 'OUT1125201300007', 'B00000002', 324, 10, 10000, 100000, '2013-11-25 07:38:48'),
(87, 'OUT1125201300007', 'B00000003', 349, 25, 32000, 800000, '2013-11-25 07:39:00'),
(88, 'OUT1125201300007', 'B00000004', 133, 30, 12000, 360000, '2013-11-25 07:39:10'),
(89, 'OUT1125201300007', 'B00000005', 558, 20, 12000, 240000, '2013-11-25 07:39:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_barang_masuk`
--

CREATE TABLE `detail_barang_masuk` (
  `no` int(11) NOT NULL,
  `id_masuk` varchar(16) NOT NULL,
  `id_barang` varchar(16) NOT NULL,
  `stok_awal` int(11) NOT NULL,
  `jml_masuk` int(11) NOT NULL,
  `hrg_beli` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_barang_masuk`
--

INSERT INTO `detail_barang_masuk` (`no`, `id_masuk`, `id_barang`, `stok_awal`, `jml_masuk`, `hrg_beli`, `sub_total`, `time`) VALUES
(4, 'RES1024201300001', 'B00000001', 110, 300, 20000, 6000000, '2013-10-24 03:43:37'),
(5, 'RES1024201300001', 'B00000002', 112, 250, 10000, 2500000, '2013-10-24 03:43:44'),
(6, 'RES1024201300001', 'B00000003', 112, 250, 32000, 8000000, '2013-10-24 03:43:51'),
(7, 'RES1024201300001', 'B00000004', 14, 150, 12000, 1800000, '2013-10-24 03:43:56'),
(8, 'RES1024201300001', 'B00000005', 28, 500, 12000, 6000000, '2013-10-24 03:42:58'),
(9, 'RES1024201300001', 'B00000006', 25, 500, 13000, 6500000, '2013-10-24 03:43:03'),
(10, 'RES1024201300001', 'B00000007', 96, 500, 50000, 25000000, '2013-10-24 03:43:08'),
(11, 'RES1024201300001', 'B00000008', 88, 200, 15000, 3000000, '2013-10-24 03:43:15'),
(12, 'RES1024201300001', 'B00000009', 90, 300, 152000, 45600000, '2013-10-24 03:43:23'),
(13, 'RES1024201300001', 'B00000010', 80, 150, 100000, 15000000, '2013-10-24 03:43:30'),
(14, 'RES1024201300002', 'B00000002', 362, 10, 10000, 100000, '2013-10-24 03:46:33'),
(15, 'RES1107201300003', 'B00000001', 384, 9, 20000, 20000, '2013-11-07 03:40:05'),
(16, 'RES1107201300003', 'B00000002', 361, 5, 10000, 50000, '2013-11-07 03:43:13'),
(17, 'RES1114201300004', 'B00000001', 389, 10, 20000, 200000, '2013-11-14 08:09:25'),
(18, 'RES1114201300004', 'B00000002', 344, 12, 10000, 120000, '2013-11-14 08:11:18'),
(19, 'RES1114201300004', 'B00000003', 355, 5, 32000, 160000, '2013-11-14 08:11:32'),
(20, 'RES1114201300005', 'B00000002', 306, 10, 10000, 100000, '2013-11-14 08:16:48'),
(21, 'RES1125201300006', 'B00000001', 299, 35, 20000, 700000, '2013-11-25 07:22:49'),
(22, 'RES1125201300006', 'B00000002', 299, 25, 10000, 250000, '2013-11-25 07:23:01'),
(23, 'RES1125201300006', 'B00000003', 299, 50, 32000, 1600000, '2013-11-25 07:23:12'),
(24, 'RES1125201300006', 'B00000004', 128, 5, 12000, 60000, '2013-11-25 07:23:22'),
(25, 'RES1125201300006', 'B00000005', 528, 30, 12000, 360000, '2013-11-25 07:23:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_jual`
--

CREATE TABLE `detail_jual` (
  `no` int(11) NOT NULL,
  `id_jual` varchar(30) NOT NULL,
  `id_barang` varchar(16) NOT NULL,
  `stok_awal` int(11) NOT NULL,
  `jml` int(11) NOT NULL,
  `hrg_jual` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_jual`
--

INSERT INTO `detail_jual` (`no`, `id_jual`, `id_barang`, `stok_awal`, `jml`, `hrg_jual`, `sub_total`, `time`) VALUES
(1, 'RB00113112000001', 'B00000001', 77, 1, 25000, 25000, '2013-11-20 08:42:59'),
(2, 'RB00113112000001', 'B00000002', 14, 1, 15000, 15000, '2013-11-20 08:43:46'),
(3, 'RB00113112000001', 'B00000003', 60, 1, 35000, 35000, '2013-11-20 08:43:14'),
(4, 'RB00113112000002', 'B00000001', 76, 3, 25000, 75000, '2013-11-20 08:56:11'),
(5, 'RB00113112000002', 'B00000002', 13, 2, 15000, 30000, '2013-11-20 08:56:24'),
(6, 'RB00113112000003', 'B00000001', 300, 1, 25000, 25000, '2013-11-20 08:57:37'),
(7, 'RB00113112000003', 'B00000002', 300, 1, 15000, 15000, '2013-11-20 08:57:45'),
(8, 'RB00113112000003', 'B00000003', 300, 1, 35000, 35000, '2013-11-20 08:57:52'),
(9, 'RB00113112000003', 'B00000004', 129, 1, 14000, 14000, '2013-11-20 08:57:58'),
(10, 'RB00113112000004', 'B00000002', 11, 1, 15000, 15000, '2013-11-20 08:58:44'),
(11, 'RB00113112000005', 'B00000006', 525, 1, 15000, 15000, '2013-11-20 09:00:45'),
(12, 'RB00113112000005', 'B00000008', 287, 3, 20000, 60000, '2013-11-20 09:00:26'),
(13, 'RB00113112000005', 'B00000009', 390, 1, 180000, 180000, '2013-11-20 09:00:36'),
(14, 'RB00113112500006', '', 0, 0, 0, 0, '2013-11-25 08:57:24'),
(15, 'RB00113112500006', 'B00000001', 300, 1, 25000, 25000, '2013-11-25 08:56:29'),
(16, 'RB00113112500006', 'B00000002', 314, 1, 15000, 15000, '2013-11-25 08:56:38'),
(17, 'RB00113112500006', 'B00000003', 324, 1, 35000, 35000, '2013-11-25 08:56:49'),
(18, 'RB00113112500006', 'B00000004', 103, 1, 14000, 14000, '2013-11-25 08:56:59'),
(19, 'RB00113112500006', 'B00000005', 538, 1, 14000, 14000, '2013-11-25 08:57:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_retur`
--

CREATE TABLE `detail_retur` (
  `no` int(11) NOT NULL,
  `id_retur` varchar(16) NOT NULL,
  `id_barang` varchar(16) NOT NULL,
  `stok_awal` int(11) NOT NULL,
  `jml` int(11) NOT NULL,
  `hrg` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_retur`
--

INSERT INTO `detail_retur` (`no`, `id_retur`, `id_barang`, `stok_awal`, `jml`, `hrg`, `sub_total`, `time`) VALUES
(1, 'RET1026201300001', 'B00000001', 387, 10, 20000, 200000, '2013-10-26 19:15:45'),
(2, 'RET1026201300001', 'B00000003', 361, 1, 32000, 32000, '2013-10-26 19:19:07'),
(3, 'RET1028201300002', 'B00000001', 377, 10, 20000, 200000, '2013-10-28 02:17:08'),
(4, 'RET1028201300003', 'B00000001', 387, 3, 20000, 60000, '2013-10-28 02:31:02'),
(5, 'RET1028201300003', 'B00000002', 371, 10, 10000, 100000, '2013-10-28 02:30:53'),
(6, 'RET1112201300004', 'B00000001', 371, 10, 20000, 200000, '2013-11-12 04:03:24'),
(7, 'RET1112201300005', 'B00000001', 381, 1, 20000, 20000, '2013-11-12 04:05:19'),
(8, 'RET1112201300006', 'B00000001', 382, 7, 20000, 100000, '2013-11-12 08:17:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungikami`
--

CREATE TABLE `hubungikami` (
  `id_pesan` int(7) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telp` varchar(30) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hubungikami`
--

INSERT INTO `hubungikami` (`id_pesan`, `nama`, `email`, `no_telp`, `pesan`) VALUES
(11, 'rachmat', 'gunawan@gmail.com', '085567878999', 'madnckjvnkjdvs'),
(12, 'nadiunviuds', 'bncskvd@bdsbvuiswb.com', '786876', 'jkhndjkhsvijhs'),
(13, 'jsdnvjsnvki', 'sdnvkjsfndvk@hguyu.com', 'lkdvnswn', 'hdcguysdgcuysd'),
(14, 'dbvisuhv', 'fvhh@ugsuyhg.com', '678678', 'gcqfcuyqtfcyuhw'),
(15, 'gunawan', 'jhjbkju@g.com', '76577', 'dbvguycuj'),
(16, 'ketiga', 'bkjbhnk@hbjkh.com', '09875445', 'bkjbgk,m bkibhiu'),
(17, 'kempat', 'jhgjug@knkjh.com', '00776565', 'jbdiugc dsnbvhsvs sjkdhvi'),
(18, '0802', '785@tftf.com', '8976786789', 'lknxsfbhvjkbsnfxjk c kjcbjfuhbsiu kjnoiiol'),
(19, 'ketujuh', 'hbg@gjkk.com', '98765544', 'lkdvsjbvoisf vnosdnvosf n fsonvbois'),
(20, 'kedelapam', 'kedelapan@hhh.com', '867564356', 'fnvldfgmbljgdfb d kdfb vidfb dndfkvbruvhbjdf   fdibhrtiuhgriu'),
(21, 'kesembilan', 'kedefggg@hhh.com', '89776543456', 'jhvgh  nlmn fxf'),
(22, 'kesepuluh', 'aku@hhh.com', '0987654567', ' bkjbjisd dn kdfnv khbkjfb m dfjkbgrtjk'),
(23, 'kesebelas', 'jkjjj@hhh.com', '098765678', 'kjfjv kdf  kjbdjk ndfjknkdfjk'),
(24, 'keduabelas', 'klkijuhh@hhh.com', '0987666778', 'ajhahsgsdbs  cbacsacnsdjkn'),
(25, 'kempatbelas', 'jdcncdjkk@ghjk.com', '987654567', 'jhzbjhfd bfbvusfd cfrighvfh fbiuf'),
(26, 'kelimabelas', 'iummdj@hsjjsj.com', '9876657', 'ncj s sd hjksdbfj  hfbusdfnjuksfk'),
(27, 'jjjj', 'jncksjnfkj@sbkjd.com', '987654', 'adcjks djkb ijksndfks'),
(28, 'kamu', 'kamu@kamu.com', 'i9987654', '1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10\r\n11\r\n12\r\n13\r\n14\r\n15\r\n'),
(29, 'jika', 'jika@kamu.com', '9876544334', '1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10\r\n11\r\n12\r\n13\r\n14\r\n15\r\n'),
(30, 'tes1', 'tes1@ku.com', '1234567890', '1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10\r\n11\r\n12\r\n13\r\n14\r\n15\r\n'),
(31, 'tes2', 'tes2@ku.com', '1234567890', '1\r\n2\r\n3\r\n4\r\n5\r\n6\r\n7\r\n8\r\n9\r\n10\r\n11\r\n12\r\n13\r\n14\r\n15\r\n'),
(32, 'tes3', 'tes3@kiu.com', '9767544556', 'kjdbhcsw  kjsbfckjsbvks skjfndbsk'),
(33, 'tes4', 'tes4@tes.com', '09987', 'kdbcwvbhiwvbekv'),
(34, 'tes5', 'tes5@tes.co', '009875678', 'kjdhcihwdiuchwui iwdbicniwjci'),
(35, 'tes6', 'test@tes.com', '9876546789', 'nsfiuvhofsidjhvoidfjvode'),
(36, 'tes7', 'tes7@scsc.co', '7645677', 'hgbdyugcyusgciufsvs  bfsbdhui'),
(37, 'test', 'yugvdw@gcyuu.com', '902u732', 'dnvkijsdfbviusvk'),
(38, 'nana', 'nana@gmail.com', '86567', 'alu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_barang`
--

CREATE TABLE `jenis_barang` (
  `id_jenis` varchar(10) NOT NULL,
  `nm_jenis` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_barang`
--

INSERT INTO `jenis_barang` (`id_jenis`, `nm_jenis`) VALUES
('JB001', 'Kain Tenun');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kd_kategori` int(5) NOT NULL,
  `nm_kategori` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `id` int(4) NOT NULL,
  `no_order` int(5) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `nama_trans` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `banktujuan` varchar(30) NOT NULL,
  `jumlah` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konfirmasi`
--

INSERT INTO `konfirmasi` (`id`, `no_order`, `no_telepon`, `nama_trans`, `tanggal`, `banktujuan`, `jumlah`) VALUES
(1, 643664, '8482468', 'svbsdkihbvi', '0000-00-00', '', '566667'),
(2, 643664, '8482468', 'svbsdkihbvi', '0000-00-00', '', '566667'),
(3, 643664, '8482468', 'svbsdkihbvi', '0000-00-00', '', '566667'),
(4, 643664, '8482468', 'svbsdkihbvi', '0000-00-00', '', '566667'),
(5, 643664, '8482468', 'svbsdkihbvi', '0000-00-00', '', '566667'),
(6, 67788, '987767788', 'nawan', '0000-00-00', '2', '788990'),
(7, 67788, '987767788', 'nawan', '0000-00-00', '2', '788990'),
(8, 67788, '987767788', 'nawan', '0000-00-00', '2', '788990'),
(9, 1234, '3344555', 'ddff', '0000-00-00', '1', '33444454'),
(10, 56678, '6677899', 'gvvygyvy ggubuybuyb', '0000-00-00', '1', '98765678'),
(11, 56678, '6677899', 'gvvygyvy ggubuybuyb', '0000-00-00', '1', '98765678'),
(12, 56678, '6677899', 'gvvygyvy ggubuybuyb', '0000-00-00', '1', '98765678'),
(13, 32445, '9878967786', 'raghhaj', '0000-00-00', '1', '97897897');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(5) NOT NULL,
  `nm_kota` varchar(100) NOT NULL,
  `ongkos_kurir` int(15) NOT NULL,
  `id_kurir` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurir`
--

CREATE TABLE `kurir` (
  `id_kurir` int(10) NOT NULL,
  `nama_kurir` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_kokab`
--

CREATE TABLE `master_kokab` (
  `kota_id` int(10) NOT NULL,
  `kokab_nama` varchar(30) DEFAULT NULL,
  `provinsi_id` int(10) DEFAULT NULL,
  `kd_kota` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_kokab`
--

INSERT INTO `master_kokab` (`kota_id`, `kokab_nama`, `provinsi_id`, `kd_kota`) VALUES
(1, 'Kabupaten Aceh Barat', 1, '0101'),
(2, 'Kabupaten Aceh Barat Daya', 1, '0102'),
(3, 'Kabupaten Aceh Besar', 1, '0103'),
(4, 'Kabupaten Aceh Jaya', 1, '0104'),
(5, 'Kabupaten Aceh Selatan', 1, '0105'),
(6, 'Kabupaten Aceh Singkil', 1, '0106'),
(7, 'Kabupaten Aceh Tamiang', 1, '0107'),
(8, 'Kabupaten Aceh Tengah', 1, '0108'),
(9, 'Kabupaten Aceh Tenggara', 1, '0109'),
(10, 'Kabupaten Aceh Timur', 1, '0110'),
(11, 'Kabupaten Aceh Utara', 1, '0111'),
(12, 'Kabupaten Bener Meriah', 1, '0112'),
(13, 'Kabupaten Bireuen', 1, '0113'),
(14, 'Kabupaten Gayo Luwes', 1, '0114'),
(15, 'Kabupaten Nagan Raya', 1, '0115'),
(16, 'Kabupaten Pidie', 1, '0116'),
(17, 'Kabupaten Pidie Jaya', 1, '0117'),
(18, 'Kabupaten Simeulue', 1, '0118'),
(19, 'Kota Banda Aceh', 1, '0119'),
(20, 'Kota Langsa', 1, '0120'),
(21, 'Kota Lhokseumawe', 1, '0121'),
(22, 'Kota Sabang', 1, '0122'),
(23, 'Kota Subulussalam', 1, '0123'),
(24, 'Kabupaten Asahan', 2, '0201'),
(25, 'Kabupaten Batubara', 2, '0202'),
(26, 'Kabupaten Dairi', 2, '0203'),
(27, 'Kabupaten Deli Serdang', 2, '0204'),
(28, 'Kabupaten Humbang Hasundutan', 2, '0205'),
(29, 'Kabupaten Karo', 2, '0206'),
(30, 'Kabupaten Labuhan Batu', 2, '0207'),
(31, 'Kabupaten Labuhanbatu Selatan', 2, '0208'),
(32, 'Kabupaten Labuhanbatu Utara', 2, '0209'),
(33, 'Kabupaten Langkat', 2, '0210'),
(34, 'Kabupaten Mandailing Natal', 2, '0211'),
(35, 'Kabupaten Nias', 2, '0212'),
(36, 'Kabupaten Nias Barat', 2, '0213'),
(37, 'Kabupaten Nias Selatan', 2, '0214'),
(38, 'Kabupaten Nias Utara', 2, '0215'),
(39, 'Kabupaten Padang Lawas', 2, '0216'),
(40, 'Kabupaten Padang Lawas Utara', 2, '0217'),
(41, 'Kabupaten Pakpak Barat', 2, '0218'),
(42, 'Kabupaten Samosir', 2, '0219'),
(43, 'Kabupaten Serdang Bedagai', 2, '0220'),
(44, 'Kabupaten Simalungun', 2, '0221'),
(45, 'Kabupaten Tapanuli Selatan', 2, '0222'),
(46, 'Kabupaten Tapanuli Tengah', 2, '0223'),
(47, 'Kabupaten Tapanuli Utara', 2, '0224'),
(48, 'Kabupaten Toba Samosir', 2, '0225'),
(49, 'Kota Binjai', 2, '0226'),
(50, 'Kota Gunung Sitoli', 2, '0227'),
(51, 'Kota Medan', 2, '0228'),
(52, 'Kota Padangsidempuan', 2, '0229'),
(53, 'Kota Pematang Siantar', 2, '0230'),
(54, 'Kota Sibolga', 2, '0231'),
(55, 'Kota Tanjung Balai', 2, '0232'),
(56, 'Kota Tebing Tinggi', 2, '0233'),
(57, 'Kabupaten Agam', 3, '0301'),
(58, 'Kabupaten Dharmas Raya', 3, '0302'),
(59, 'Kabupaten Kepulauan Mentawai', 3, '0303'),
(60, 'Kabupaten Lima Puluh Kota', 3, '0304'),
(61, 'Kabupaten Padang Pariaman', 3, '0305'),
(62, 'Kabupaten Pasaman', 3, '0306'),
(63, 'Kabupaten Pasaman Barat', 3, '0307'),
(64, 'Kabupaten Pesisir Selatan', 3, '0308'),
(65, 'Kabupaten Sijunjung', 3, '0309'),
(66, 'Kabupaten Solok', 3, '0310'),
(67, 'Kabupaten Solok Selatan', 3, '0311'),
(68, 'Kabupaten Tanah Datar', 3, '0312'),
(69, 'Kota Bukittinggi', 3, '0313'),
(70, 'Kota Padang', 3, '0314'),
(71, 'Kota Padang Panjang', 3, '0315'),
(72, 'Kota Pariaman', 3, '0316'),
(73, 'Kota Payakumbuh', 3, '0317'),
(74, 'Kota Sawah Lunto', 3, '0318'),
(75, 'Kota Solok', 3, '0319'),
(76, 'Kabupaten Bengkalis', 4, '0401'),
(77, 'Kabupaten Indragiri Hilir', 4, '0402'),
(78, 'Kabupaten Indragiri Hulu', 4, '0403'),
(79, 'Kabupaten Kampar', 4, '0404'),
(80, 'Kabupaten Kuantan Singingi', 4, '0405'),
(81, 'Kabupaten Meranti', 4, '0406'),
(82, 'Kabupaten Pelalawan', 4, '0407'),
(83, 'Kabupaten Rokan Hilir', 4, '0408'),
(84, 'Kabupaten Rokan Hulu', 4, '0409'),
(85, 'Kabupaten Siak', 4, '0410'),
(86, 'Kota Dumai', 4, '0411'),
(87, 'Kota Pekanbaru', 4, '0412'),
(88, 'Kabupaten Bintan', 5, '0501'),
(89, 'Kabupaten Karimun', 5, '0502'),
(90, 'Kabupaten Kepulauan Anambas', 5, '0503'),
(91, 'Kabupaten Lingga', 5, '0504'),
(92, 'Kabupaten Natuna', 5, '0505'),
(93, 'Kota Batam', 5, '0506'),
(94, 'Kota Tanjung Pinang', 5, '0507'),
(95, 'Kabupaten Bangka', 6, '0601'),
(96, 'Kabupaten Bangka Barat', 6, '0602'),
(97, 'Kabupaten Bangka Selatan', 6, '0603'),
(98, 'Kabupaten Bangka Tengah', 6, '0604'),
(99, 'Kabupaten Belitung', 6, '0605'),
(100, 'Kabupaten Belitung Timur', 6, '0606'),
(101, 'Kota Pangkal Pinang', 6, '0607'),
(102, 'Kabupaten Kerinci', 7, '0701'),
(103, 'Kabupaten Merangin', 7, '0702'),
(104, 'Kabupaten Sarolangun', 7, '0703'),
(105, 'Kabupaten Batang Hari', 7, '0704'),
(106, 'Kabupaten Muaro Jambi', 7, '0705'),
(107, 'Kabupaten Tanjung Jabung Timur', 7, '0706'),
(108, 'Kabupaten Tanjung Jabung Barat', 7, '0707'),
(109, 'Kabupaten Tebo', 7, '0708'),
(110, 'Kabupaten Bungo', 7, '0709'),
(111, 'Kota Jambi', 7, '0710'),
(112, 'Kota Sungai Penuh', 7, '0711'),
(113, 'Kabupaten Bengkulu Selatan', 8, '0801'),
(114, 'Kabupaten Bengkulu Tengah', 8, '0802'),
(115, 'Kabupaten Bengkulu Utara', 8, '0803'),
(116, 'Kabupaten Kaur', 8, '0804'),
(117, 'Kabupaten Kepahiang', 8, '0805'),
(118, 'Kabupaten Lebong', 8, '0806'),
(119, 'Kabupaten Mukomuko', 8, '0807'),
(120, 'Kabupaten Rejang Lebong', 8, '0808'),
(121, 'Kabupaten Seluma', 8, '0809'),
(122, 'Kota Bengkulu', 8, '0810'),
(123, 'Kabupaten Banyuasin', 9, '0901'),
(124, 'Kabupaten Empat Lawang', 9, '0902'),
(125, 'Kabupaten Lahat', 9, '0903'),
(126, 'Kabupaten Muara Enim', 9, '0904'),
(127, 'Kabupaten Musi Banyu Asin', 9, '0905'),
(128, 'Kabupaten Musi Rawas', 9, '0906'),
(129, 'Kabupaten Ogan Ilir', 9, '0907'),
(130, 'Kabupaten Ogan Komering Ilir', 9, '0908'),
(131, 'Kabupaten Ogan Komering Ulu', 9, '0909'),
(132, 'Kabupaten Ogan Komering Ulu Se', 9, '0910'),
(133, 'Kabupaten Ogan Komering Ulu Ti', 9, '0911'),
(134, 'Kota Lubuklinggau', 9, '0912'),
(135, 'Kota Pagar Alam', 9, '0913'),
(136, 'Kota Palembang', 9, '0914'),
(137, 'Kota Prabumulih', 9, '0915'),
(138, 'Kabupaten Lampung Barat', 10, '1001'),
(139, 'Kabupaten Lampung Selatan', 10, '1002'),
(140, 'Kabupaten Lampung Tengah', 10, '1003'),
(141, 'Kabupaten Lampung Timur', 10, '1004'),
(142, 'Kabupaten Lampung Utara', 10, '1005'),
(143, 'Kabupaten Mesuji', 10, '1006'),
(144, 'Kabupaten Pesawaran', 10, '1007'),
(145, 'Kabupaten Pringsewu', 10, '1008'),
(146, 'Kabupaten Tanggamus', 10, '1009'),
(147, 'Kabupaten Tulang Bawang', 10, '1010'),
(148, 'Kabupaten Tulang Bawang Barat', 10, '1011'),
(149, 'Kabupaten Way Kanan', 10, '1012'),
(150, 'Kota Bandar Lampung', 10, '1013'),
(151, 'Kota Metro', 10, '1014'),
(152, 'Kabupaten Lebak', 11, '1101'),
(153, 'Kabupaten Pandeglang', 11, '1102'),
(154, 'Kabupaten Serang', 11, '1103'),
(155, 'Kabupaten Tangerang', 11, '1104'),
(156, 'Kota Cilegon', 11, '1105'),
(157, 'Kota Serang', 11, '1106'),
(158, 'Kota Tangerang', 11, '1107'),
(159, 'Kota Tangerang Selatan', 11, '1108'),
(160, 'Kabupaten Adm. Kepulauan Serib', 12, '1201'),
(161, 'Kota Jakarta Barat', 12, '1202'),
(162, 'Kota Jakarta Pusat', 12, '1203'),
(163, 'Kota Jakarta Selatan', 12, '1204'),
(164, 'Kota Jakarta Timur', 12, '1205'),
(165, 'Kota Jakarta Utara', 12, '1206'),
(166, 'Kabupaten Bandung', 13, '1301'),
(167, 'Kabupaten Bandung Barat', 13, '1302'),
(168, 'Kabupaten Bekasi', 13, '1303'),
(169, 'Kabupaten Bogor', 13, '1304'),
(170, 'Kabupaten Ciamis', 13, '1305'),
(171, 'Kabupaten Cianjur', 13, '1306'),
(172, 'Kabupaten Cirebon', 13, '1307'),
(173, 'Kabupaten Garut', 13, '1308'),
(174, 'Kabupaten Indramayu', 13, '1309'),
(175, 'Kabupaten Karawang', 13, '1310'),
(176, 'Kabupaten Kuningan', 13, '1311'),
(177, 'Kabupaten Majalengka', 13, '1312'),
(178, 'Kabupaten Purwakarta', 13, '1313'),
(179, 'Kabupaten Subang', 13, '1314'),
(180, 'Kabupaten Sukabumi', 13, '1315'),
(181, 'Kabupaten Sumedang', 13, '1316'),
(182, 'Kabupaten Tasikmalaya', 13, '1317'),
(183, 'Kota Bandung', 13, '1318'),
(184, 'Kota Banjar', 13, '1319'),
(185, 'Kota Bekasi', 13, '1320'),
(186, 'Kota Bogor', 13, '1321'),
(187, 'Kota Cimahi', 13, '1322'),
(188, 'Kota Cirebon', 13, '1323'),
(189, 'Kota Depok', 13, '1324'),
(190, 'Kota Sukabumi', 13, '1325'),
(191, 'Kota Tasikmalaya', 13, '1326'),
(192, 'Kabupaten Banjarnegara', 14, '1401'),
(193, 'Kabupaten Banyumas', 14, '1402'),
(194, 'Kabupaten Batang', 14, '1403'),
(195, 'Kabupaten Blora', 14, '1404'),
(196, 'Kabupaten Boyolali', 14, '1405'),
(197, 'Kabupaten Brebes', 14, '1406'),
(198, 'Kabupaten Cilacap', 14, '1407'),
(199, 'Kabupaten Demak', 14, '1408'),
(200, 'Kabupaten Grobogan', 14, '1409'),
(201, 'Kabupaten Jepara', 14, '1410'),
(202, 'Kabupaten Karanganyar', 14, '1411'),
(203, 'Kabupaten Kebumen', 14, '1412'),
(204, 'Kabupaten Kendal', 14, '1413'),
(205, 'Kabupaten Klaten', 14, '1414'),
(206, 'Kabupaten Kota Tegal', 14, '1415'),
(207, 'Kabupaten Kudus', 14, '1416'),
(208, 'Kabupaten Magelang', 14, '1417'),
(209, 'Kabupaten Pati', 14, '1418'),
(210, 'Kabupaten Pekalongan', 14, '1419'),
(211, 'Kabupaten Pemalang', 14, '1420'),
(212, 'Kabupaten Purbalingga', 14, '1421'),
(213, 'Kabupaten Purworejo', 14, '1422'),
(214, 'Kabupaten Rembang', 14, '1423'),
(215, 'Kabupaten Semarang', 14, '1424'),
(216, 'Kabupaten Sragen', 14, '1425'),
(217, 'Kabupaten Sukoharjo', 14, '1426'),
(218, 'Kabupaten Temanggung', 14, '1427'),
(219, 'Kabupaten Wonogiri', 14, '1428'),
(220, 'Kabupaten Wonosobo', 14, '1429'),
(221, 'Kota Magelang', 14, '1430'),
(222, 'Kota Pekalongan', 14, '1431'),
(223, 'Kota Salatiga', 14, '1432'),
(224, 'Kota Semarang', 14, '1433'),
(225, 'Kota Surakarta', 14, '1434'),
(226, 'Kota Tegal', 14, '1435'),
(227, 'Kabupaten Bantul', 15, '1501'),
(228, 'Kabupaten Gunung Kidul', 15, '1502'),
(229, 'Kabupaten Kulon Progo', 15, '1503'),
(230, 'Kabupaten Sleman', 15, '1504'),
(231, 'Kota Yogyakarta', 15, '1505'),
(232, 'Kabupaten Bangkalan', 16, '1601'),
(233, 'Kabupaten Banyuwangi', 16, '1602'),
(234, 'Kabupaten Blitar', 16, '1603'),
(235, 'Kabupaten Bojonegoro', 16, '1604'),
(236, 'Kabupaten Bondowoso', 16, '1605'),
(237, 'Kabupaten Gresik', 16, '1606'),
(238, 'Kabupaten Jember', 16, '1607'),
(239, 'Kabupaten Jombang', 16, '1608'),
(240, 'Kabupaten Kediri', 16, '1609'),
(241, 'Kabupaten Lamongan', 16, '1610'),
(242, 'Kabupaten Lumajang', 16, '1611'),
(243, 'Kabupaten Madiun', 16, '1612'),
(244, 'Kabupaten Magetan', 16, '1613'),
(245, 'Kabupaten Malang', 16, '1614'),
(246, 'Kabupaten Mojokerto', 16, '1615'),
(247, 'Kabupaten Nganjuk', 16, '1616'),
(248, 'Kabupaten Ngawi', 16, '1617'),
(249, 'Kabupaten Pacitan', 16, '1618'),
(250, 'Kabupaten Pamekasan', 16, '1619'),
(251, 'Kabupaten Pasuruan', 16, '1620'),
(252, 'Kabupaten Ponorogo', 16, '1621'),
(253, 'Kabupaten Probolinggo', 16, '1622'),
(254, 'Kabupaten Sampang', 16, '1623'),
(255, 'Kabupaten Sidoarjo', 16, '1624'),
(256, 'Kabupaten Situbondo', 16, '1625'),
(257, 'Kabupaten Sumenep', 16, '1626'),
(258, 'Kabupaten Trenggalek', 16, '1627'),
(259, 'Kabupaten Tuban', 16, '1628'),
(260, 'Kabupaten Tulungagung', 16, '1629'),
(261, 'Kota Batu', 16, '1630'),
(262, 'Kota Blitar', 16, '1631'),
(263, 'Kota Kediri', 16, '1632'),
(264, 'Kota Madiun', 16, '1633'),
(265, 'Kota Malang', 16, '1634'),
(266, 'Kota Mojokerto', 16, '1635'),
(267, 'Kota Pasuruan', 16, '1636'),
(268, 'Kota Probolinggo', 16, '1637'),
(269, 'Kota Surabaya', 16, '1638'),
(270, 'Kabupaten Badung', 17, '1701'),
(271, 'Kabupaten Bangli', 17, '1702'),
(272, 'Kabupaten Buleleng', 17, '1703'),
(273, 'Kabupaten Gianyar', 17, '1704'),
(274, 'Kabupaten Jembrana', 17, '1705'),
(275, 'Kabupaten Karang Asem', 17, '1706'),
(276, 'Kabupaten Klungkung', 17, '1707'),
(277, 'Kabupaten Tabanan', 17, '1708'),
(278, 'Kota Denpasar', 17, '1709'),
(279, 'Kabupaten Bima', 18, '1801'),
(280, 'Kabupaten Dompu', 18, '1802'),
(281, 'Kabupaten Lombok Barat', 18, '1803'),
(282, 'Kabupaten Lombok Tengah', 18, '1804'),
(283, 'Kabupaten Lombok Timur', 18, '1805'),
(284, 'Kabupaten Lombok Utara', 18, '1806'),
(285, 'Kabupaten Sumbawa', 18, '1807'),
(286, 'Kabupaten Sumbawa Barat', 18, '1808'),
(287, 'Kota Bima', 18, '1809'),
(288, 'Kota Mataram', 18, '1810'),
(289, 'Kabupaten Alor', 19, '1901'),
(290, 'Kabupaten Belu', 19, '1902'),
(291, 'Kabupaten Ende', 19, '1903'),
(292, 'Kabupaten Flores Timur', 19, '1904'),
(293, 'Kabupaten Kupang', 19, '1905'),
(294, 'Kabupaten Lembata', 19, '1906'),
(295, 'Kabupaten Manggarai', 19, '1907'),
(296, 'Kabupaten Manggarai Barat', 19, '1908'),
(297, 'Kabupaten Manggarai Timur', 19, '1909'),
(298, 'Kabupaten Nagekeo', 19, '1910'),
(299, 'Kabupaten Ngada', 19, '1911'),
(300, 'Kabupaten Rote Ndao', 19, '1912'),
(301, 'Kabupaten Sabu Raijua', 19, '1913'),
(302, 'Kabupaten Sikka', 19, '1914'),
(303, 'Kabupaten Sumba Barat', 19, '1915'),
(304, 'Kabupaten Sumba Barat Daya', 19, '1916'),
(305, 'Kabupaten Sumba Tengah', 19, '1917'),
(306, 'Kabupaten Sumba Timur', 19, '1918'),
(307, 'Kabupaten Timor Tengah Selatan', 19, '1919'),
(308, 'Kabupaten Timor Tengah Utara', 19, '1920'),
(309, 'Kota Kupang', 19, '1921'),
(310, 'Kabupaten Bengkayang', 20, '2001'),
(311, 'Kabupaten Kapuas Hulu', 20, '2002'),
(312, 'Kabupaten Kayong Utara', 20, '2003'),
(313, 'Kabupaten Ketapang', 20, '2004'),
(314, 'Kabupaten Kubu Raya', 20, '2005'),
(315, 'Kabupaten Landak', 20, '2006'),
(316, 'Kabupaten Melawi', 20, '2007'),
(317, 'Kabupaten Pontianak', 20, '2008'),
(318, 'Kabupaten Sambas', 20, '2009'),
(319, 'Kabupaten Sanggau', 20, '2010'),
(320, 'Kabupaten Sekadau', 20, '2011'),
(321, 'Kabupaten Sintang', 20, '2012'),
(322, 'Kota Pontianak', 20, '2013'),
(323, 'Kota Singkawang', 20, '2014'),
(324, 'Kabupaten Barito Selatan', 21, '2101'),
(325, 'Kabupaten Barito Timur', 21, '2102'),
(326, 'Kabupaten Barito Utara', 21, '2103'),
(327, 'Kabupaten Gunung Mas', 21, '2104'),
(328, 'Kabupaten Kapuas', 21, '2105'),
(329, 'Kabupaten Katingan', 21, '2106'),
(330, 'Kabupaten Kotawaringin Barat', 21, '2107'),
(331, 'Kabupaten Kotawaringin Timur', 21, '2108'),
(332, 'Kabupaten Lamandau', 21, '2109'),
(333, 'Kabupaten Murung Raya', 21, '2110'),
(334, 'Kabupaten Pulang Pisau', 21, '2111'),
(335, 'Kabupaten Seruyan', 21, '2112'),
(336, 'Kabupaten Sukamara', 21, '2113'),
(337, 'Kota Palangkaraya', 21, '2114'),
(338, 'Kabupaten Balangan', 22, '2201'),
(339, 'Kabupaten Banjar', 22, '2202'),
(340, 'Kabupaten Barito Kuala', 22, '2203'),
(341, 'Kabupaten Hulu Sungai Selatan', 22, '2204'),
(342, 'Kabupaten Hulu Sungai Tengah', 22, '2205'),
(343, 'Kabupaten Hulu Sungai Utara', 22, '2206'),
(344, 'Kabupaten Kota Baru', 22, '2207'),
(345, 'Kabupaten Tabalong', 22, '2208'),
(346, 'Kabupaten Tanah Bumbu', 22, '2209'),
(347, 'Kabupaten Tanah Laut', 22, '2210'),
(348, 'Kabupaten Tapin', 22, '2211'),
(349, 'Kota Banjar Baru', 22, '2212'),
(350, 'Kota Banjarmasin', 22, '2213'),
(351, 'Kabupaten Berau', 23, '2301'),
(352, 'Kabupaten Bulongan', 23, '2302'),
(353, 'Kabupaten Kutai Barat', 23, '2303'),
(354, 'Kabupaten Kutai Kartanegara', 23, '2304'),
(355, 'Kabupaten Kutai Timur', 23, '2305'),
(356, 'Kabupaten Malinau', 23, '2306'),
(357, 'Kabupaten Nunukan', 23, '2307'),
(358, 'Kabupaten Paser', 23, '2308'),
(359, 'Kabupaten Penajam Paser Utara', 23, '2309'),
(360, 'Kabupaten Tana Tidung', 23, '2310'),
(361, 'Kota Balikpapan', 23, '2311'),
(362, 'Kota Bontang', 23, '2312'),
(363, 'Kota Samarinda', 23, '2313'),
(364, 'Kota Tarakan', 23, '2314'),
(365, 'Kabupaten Boalemo', 24, '2401'),
(366, 'Kabupaten Bone Bolango', 24, '2402'),
(367, 'Kabupaten Gorontalo', 24, '2403'),
(368, 'Kabupaten Gorontalo Utara', 24, '2404'),
(369, 'Kabupaten Pohuwato', 24, '2405'),
(370, 'Kota Gorontalo', 24, '2406'),
(371, 'Kabupaten Bantaeng', 25, '2501'),
(372, 'Kabupaten Barru', 25, '2502'),
(373, 'Kabupaten Bone', 25, '2503'),
(374, 'Kabupaten Bulukumba', 25, '2504'),
(375, 'Kabupaten Enrekang', 25, '2505'),
(376, 'Kabupaten Gowa', 25, '2506'),
(377, 'Kabupaten Jeneponto', 25, '2507'),
(378, 'Kabupaten Luwu', 25, '2508'),
(379, 'Kabupaten Luwu Timur', 25, '2509'),
(380, 'Kabupaten Luwu Utara', 25, '2510'),
(381, 'Kabupaten Maros', 25, '2511'),
(382, 'Kabupaten Pangkajene Kepulauan', 25, '2512'),
(383, 'Kabupaten Pinrang', 25, '2513'),
(384, 'Kabupaten Selayar', 25, '2514'),
(385, 'Kabupaten Sidenreng Rappang', 25, '2515'),
(386, 'Kabupaten Sinjai', 25, '2516'),
(387, 'Kabupaten Soppeng', 25, '2517'),
(388, 'Kabupaten Takalar', 25, '2518'),
(389, 'Kabupaten Tana Toraja', 25, '2519'),
(390, 'Kabupaten Toraja Utara', 25, '2520'),
(391, 'Kabupaten Wajo', 25, '2521'),
(392, 'Kota Makassar', 25, '2522'),
(393, 'Kota Palopo', 25, '2523'),
(394, 'Kota Pare-pare', 25, '2524'),
(395, 'Kabupaten Bombana', 26, '2601'),
(396, 'Kabupaten Buton', 26, '2602'),
(397, 'Kabupaten Buton Utara', 26, '2603'),
(398, 'Kabupaten Kolaka', 26, '2604'),
(399, 'Kabupaten Kolaka Utara', 26, '2605'),
(400, 'Kabupaten Konawe', 26, '2606'),
(401, 'Kabupaten Konawe Selatan', 26, '2607'),
(402, 'Kabupaten Konawe Utara', 26, '2608'),
(403, 'Kabupaten Muna', 26, '2609'),
(404, 'Kabupaten Wakatobi', 26, '2610'),
(405, 'Kota Bau-bau', 26, '2611'),
(406, 'Kota Kendari', 26, '2612'),
(407, 'Kabupaten Banggai', 27, '2701'),
(408, 'Kabupaten Banggai Kepulauan', 27, '2702'),
(409, 'Kabupaten Buol', 27, '2703'),
(410, 'Kabupaten Donggala', 27, '2704'),
(411, 'Kabupaten Morowali', 27, '2705'),
(412, 'Kabupaten Parigi Moutong', 27, '2706'),
(413, 'Kabupaten Poso', 27, '2707'),
(414, 'Kabupaten Sigi', 27, '2708'),
(415, 'Kabupaten Tojo Una-Una', 27, '2709'),
(416, 'Kabupaten Toli Toli', 27, '2710'),
(417, 'Kota Palu', 27, '2711'),
(418, 'Kabupaten Bolaang Mangondow', 28, '2801'),
(419, 'Kabupaten Bolaang Mangondow Se', 28, '2802'),
(420, 'Kabupaten Bolaang Mangondow Ti', 28, '2803'),
(421, 'Kabupaten Bolaang Mangondow Ut', 28, '2804'),
(422, 'Kabupaten Kepulauan Sangihe', 28, '2805'),
(423, 'Kabupaten Kepulauan Siau Tagul', 28, '2806'),
(424, 'Kabupaten Kepulauan Talaud', 28, '2807'),
(425, 'Kabupaten Minahasa', 28, '2808'),
(426, 'Kabupaten Minahasa Selatan', 28, '2809'),
(427, 'Kabupaten Minahasa Tenggara', 28, '2810'),
(428, 'Kabupaten Minahasa Utara', 28, '2811'),
(429, 'Kota Bitung', 28, '2812'),
(430, 'Kota Kotamobagu', 28, '2813'),
(431, 'Kota Manado', 28, '2814'),
(432, 'Kota Tomohon', 28, '2815'),
(433, 'Kabupaten Majene', 29, '2901'),
(434, 'Kabupaten Mamasa', 29, '2902'),
(435, 'Kabupaten Mamuju', 29, '2903'),
(436, 'Kabupaten Mamuju Utara', 29, '2904'),
(437, 'Kabupaten Polewali Mandar', 29, '2905'),
(438, 'Kabupaten Buru', 30, '3001'),
(439, 'Kabupaten Buru Selatan', 30, '3002'),
(440, 'Kabupaten Kepulauan Aru', 30, '3003'),
(441, 'Kabupaten Maluku Barat Daya', 30, '3004'),
(442, 'Kabupaten Maluku Tengah', 30, '3005'),
(443, 'Kabupaten Maluku Tenggara', 30, '3006'),
(444, 'Kabupaten Maluku Tenggara Bara', 30, '3007'),
(445, 'Kabupaten Seram Bagian Barat', 30, '3008'),
(446, 'Kabupaten Seram Bagian Timur', 30, '3009'),
(447, 'Kota Ambon', 30, '3010'),
(448, 'Kota Tual', 30, '3011'),
(449, 'Kabupaten Halmahera Barat', 31, '3101'),
(450, 'Kabupaten Halmahera Selatan', 31, '3102'),
(451, 'Kabupaten Halmahera Tengah', 31, '3103'),
(452, 'Kabupaten Halmahera Timur', 31, '3104'),
(453, 'Kabupaten Halmahera Utara', 31, '3105'),
(454, 'Kabupaten Kepulauan Sula', 31, '3106'),
(455, 'Kabupaten Pulau Morotai', 31, '3107'),
(456, 'Kota Ternate', 31, '3108'),
(457, 'Kota Tidore Kepulauan', 31, '3109'),
(458, 'Kabupaten Fakfak', 32, '3201'),
(459, 'Kabupaten Kaimana', 32, '3202'),
(460, 'Kabupaten Manokwari', 32, '3203'),
(461, 'Kabupaten Maybrat', 32, '3204'),
(462, 'Kabupaten Raja Ampat', 32, '3205'),
(463, 'Kabupaten Sorong', 32, '3206'),
(464, 'Kabupaten Sorong Selatan', 32, '3207'),
(465, 'Kabupaten Tambrauw', 32, '3208'),
(466, 'Kabupaten Teluk Bintuni', 32, '3209'),
(467, 'Kabupaten Teluk Wondama', 32, '3210'),
(468, 'Kota Sorong', 32, '3211'),
(469, 'Kabupaten Merauke', 33, '3301'),
(470, 'Kabupaten Jayawijaya', 33, '3302'),
(471, 'Kabupaten Nabire', 33, '3303'),
(472, 'Kabupaten Kepulauan Yapen', 33, '3304'),
(473, 'Kabupaten Biak Numfor', 33, '3305'),
(474, 'Kabupaten Paniai', 33, '3306'),
(475, 'Kabupaten Puncak Jaya', 33, '3307'),
(476, 'Kabupaten Mimika', 33, '3308'),
(477, 'Kabupaten Boven Digoel', 33, '3309'),
(478, 'Kabupaten Mappi', 33, '3310'),
(479, 'Kabupaten Asmat', 33, '3311'),
(480, 'Kabupaten Yahukimo', 33, '3312'),
(481, 'Kabupaten Pegunungan Bintang', 33, '3313'),
(482, 'Kabupaten Tolikara', 33, '3314'),
(483, 'Kabupaten Sarmi', 33, '3315'),
(484, 'Kabupaten Keerom', 33, '3316'),
(485, 'Kabupaten Waropen', 33, '3317'),
(486, 'Kabupaten Jayapura', 33, '3318'),
(487, 'Kabupaten Deiyai', 33, '3319'),
(488, 'Kabupaten Dogiyai', 33, '3320'),
(489, 'Kabupaten Intan Jaya', 33, '3321'),
(490, 'Kabupaten Lanny Jaya', 33, '3322'),
(491, 'Kabupaten Mamberamo Raya', 33, '3323'),
(492, 'Kabupaten Mamberamo Tengah', 33, '3324'),
(493, 'Kabupaten Nduga', 33, '3325'),
(494, 'Kabupaten Puncak', 33, '3326'),
(495, 'Kabupaten Supiori', 33, '3327'),
(496, 'Kabupaten Yalimo', 33, '3328'),
(497, 'Kota Jayapura', 33, '3329'),
(498, 'Kabupaten Bulungan', 34, '3401'),
(499, 'Kabupaten Malinau', 34, '3402'),
(500, 'Kabupaten Nunukan', 34, '3403'),
(501, 'Kabupaten Tana Tidung', 34, '3404'),
(502, 'Kota Tarakan', 34, '3405');

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('user','admin') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `urutan` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `static_content`, `gambar`, `status`, `aktif`, `urutan`) VALUES
(18, 'Produk', '?module=produk', '', '', 'admin', 'Y', 4),
(42, 'Order', '?module=order', '', '', 'admin', 'Y', 5),
(10, 'Manajemen Modul', '?module=modul', '', '', 'admin', 'Y', 2),
(31, 'Kategori Produk', '?module=kategori', '', '', 'admin', 'Y', 3),
(43, 'Profil', '?module=profil', '<b>mobilestore.com</b> merupakan website resmi dari Toko HP Lokomedia yang bermarkas di Jl. Arwana No.24 Minomartani Yogyakarta 55581. Dirintis pertama kali oleh Lukmanul Hakim pada tanggal 14 Maret 2008.<br><br>Produk unggulan dari Toko HP Lokomedia adalah produk-produk serta aksesoris bertema Nokia yang merupakan merk produk handphone paling terdepan saat ini.', 'gedung.jpg', 'admin', 'Y', 7),
(44, 'Hubungi Kami', '?module=hubungi', '', '', 'admin', 'Y', 9),
(45, 'Cara Pembelian', '?module=carabeli', '<ol><li>Klik pada tombol&nbsp;<span style="font-weight: bold;">Beli</span> pada produk yang ingin Anda pesan.</li><li>Produk yang Anda pesan akan masuk ke dalam <span style="font-weight: bold;">Keranjang Belanja</span>. Anda dapat melakukan perubahan jumlah produk yang diinginkan dengan mengganti angka di kolom <span style="font-weight: bold;">Jumlah</span>, kemudian klik tombol <span style="font-weight: bold;">Update</span>. Sedangkan untuk menghapus sebuah produk dari Keranjang Belanja, klik tombol Kali yang berada di kolom paling kanan.</li><li>Jika sudah selesai, klik tombol <span style="font-weight: bold;">Selesai Belanja</span>, maka akan tampil form untuk pengisian data kustomer/pembeli.</li><li>Setelah data pembeli selesai diisikan, klik tombol <span style="font-weight: bold;">Proses</span>, maka akan tampil data pembeli beserta produk yang dipesannya (jika diperlukan catat nomor ordersnya). Dan juga ada total pembayaran serta nomor rekening pembayaran.</li><li>Apabila telah melakukan pembayaran, maka produk/barang akan segera kami kirimkan. <br></li></ol>', '', 'admin', 'Y', 8),
(47, 'Banner', '?module=banner', '', '', 'user', 'Y', 10),
(48, 'Ongkos Kirim', '?module=ongkoskirim', '', '', 'user', 'Y', 6),
(49, 'Ganti Password', '?module=password', '', '', 'user', 'Y', 1),
(52, 'Laporan', '?module=laporan', '', '', 'user', 'Y', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id_orders` int(5) NOT NULL,
  `nama_kustomer` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat` text COLLATE latin1_general_ci NOT NULL,
  `telpon` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `status_order` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'Baru',
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  `id_kota` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id_orders`, `nama_kustomer`, `alamat`, `telpon`, `email`, `status_order`, `tgl_order`, `jam_order`, `id_kota`) VALUES
(1, 'Untung Setiabudi', 'Jl. Tengiri Raya No.1 Yogyakarta 55581', '08198208494', 'adi@gmail.com', 'Lunas', '2009-11-18', '09:17:17', 6),
(2, 'Richie Ren', 'Jl. Tengiri Raya No.1 Yogyakarta 55581', '07098798', 'richie@gmail.com', 'Lunas', '2010-08-20', '09:18:24', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_detail`
--

CREATE TABLE `orders_detail` (
  `id_orders` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `orders_detail`
--

INSERT INTO `orders_detail` (`id_orders`, `id_produk`, `jumlah`) VALUES
(1, 8, 2),
(2, 7, 1),
(2, 5, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_penampung`
--

CREATE TABLE `orders_penampung` (
  `id_orders_penampung` int(5) NOT NULL,
  `id_ebook` int(5) NOT NULL,
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jumlah` int(5) NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `stok_penampung` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_temp`
--

CREATE TABLE `orders_temp` (
  `id_orders_temp` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tgl_order_temp` date NOT NULL,
  `jam_order_temp` time NOT NULL,
  `stok_temp` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `orders_temp`
--

INSERT INTO `orders_temp` (`id_orders_temp`, `id_produk`, `id_session`, `jumlah`, `tgl_order_temp`, `jam_order_temp`, `stok_temp`) VALUES
(61, 5, 'scnv5rrjlkhca0rvcsh9h2v5j3', 1, '2016-01-04', '07:51:42', 28);

-- --------------------------------------------------------

--
-- Struktur dari tabel `outlet`
--

CREATE TABLE `outlet` (
  `id_outlet` varchar(16) NOT NULL,
  `nm_outlet` varchar(30) NOT NULL,
  `almt_outlet` varchar(100) NOT NULL,
  `tlp_outlet` varchar(12) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `outlet`
--

INSERT INTO `outlet` (`id_outlet`, `nm_outlet`, `almt_outlet`, `tlp_outlet`, `password`) VALUES
('RB001', 'Head Office', 'Jakarta', '0711-587962', '123456');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `kd_pelanggan` int(6) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `jeniskelamin` varchar(11) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `tanggallahir` int(2) NOT NULL,
  `bulanlahir` varchar(10) NOT NULL,
  `tahunlahir` int(4) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `provinsi` varchar(30) NOT NULL,
  `negara` varchar(30) NOT NULL,
  `kodepos` int(4) NOT NULL,
  `notelepon` varchar(17) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`kd_pelanggan`, `nama`, `email`, `username`, `password`, `jeniskelamin`, `tempat`, `tanggallahir`, `bulanlahir`, `tahunlahir`, `alamat`, `kota`, `provinsi`, `negara`, `kodepos`, `notelepon`) VALUES
(1, 'Gunawan', 'gunawan@gmail.com', 'nawan', '123', 'laki - laki', 'jakarta', 15, 'september', 1990, 'Kp. Bogor, RT 001, RT 013, No 15, Kavling Pos, Pusaka Rakyat, Kecamatan Taruma Jaya', 'Bekasi', 'Jawa Barat', 'Indonesia', 17214, '086788899'),
(3, 'kamu', 'aku@gmail.com', 'kamu', '123', 'pria', 'jakarta', 9, '6', 79, 'kjdvbsjkhbvrswbnvjkisefm fdmk defbiebhvuirdfbk', 'sbvifdubvuifd', 'slnvdefho', 'dfbvdefbov', 1234, '324225'),
(4, 'ake', 'aku@gmail.com', 'kamu', '123', 'pria', 'jakarta', 9, '6', 79, 'kjdvbsjkhbvrswbnvjkisefm fdmk defbiebhvuirdfbk', 'sbvifdubvuifd', 'slnvdefho', 'dfbvdefbov', 1234, '324225'),
(10, 'rana', 'rana@gmail.com', 'rana', '202cb962ac59075b964b07152d234b70', 'pria', 'jakarta', 1, '1', 60, 'bekasi', 'bekasi', 'jawa barat', 'indonesia', 17214, '23455666');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `kd_pelanggan` int(6) NOT NULL,
  `no_order` int(7) NOT NULL,
  `tgl_pemesanan` date NOT NULL,
  `nm_pemesan` varchar(100) NOT NULL,
  `nm_penerima` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kd_kota` int(5) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `no_telepon` varchar(30) NOT NULL,
  `status_byr` enum('Pesan','Belum Lunas','Lunas','Batal') NOT NULL,
  `status_kirim` varchar(20) NOT NULL,
  `kurir` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`kd_pelanggan`, `no_order`, `tgl_pemesanan`, `nm_pemesan`, `nm_penerima`, `alamat`, `kd_kota`, `kota`, `no_telepon`, `status_byr`, `status_kirim`, `kurir`) VALUES
(1, 1234, '2016-02-08', 'Rachmat', 'Gunawan', 'kp bogor, Pusaka Rakyat, Taruma Jaya, Bekasi', 123, 'Bekasi', '085567878999', 'Pesan', 'belum', 'pos');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_jual` varchar(30) NOT NULL,
  `tgl_jual` date NOT NULL,
  `pelanggan` varchar(30) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `id_outlet` varchar(16) NOT NULL,
  `total` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ket` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_jual`, `tgl_jual`, `pelanggan`, `alamat`, `id_outlet`, `total`, `time`, `ket`) VALUES
('RB00113112000001', '2013-11-20', 'Riko', 'Jl. MP. Mangkunegara, Palembang', 'RB001', 75000, '2013-11-20 08:44:19', 'Stok Outlet'),
('RB00113112000002', '2013-11-20', 'Heru', 'Jl. Merdeka, Palembang', 'RB001', 105000, '2013-11-20 08:56:51', 'Stok Outlet'),
('RB00113112000003', '2013-11-20', 'Joni', 'Jl. Bungaran V, Palembang', 'RB001', 89000, '2013-11-20 08:58:23', 'Stok Gudang'),
('RB00113112000004', '2013-11-20', 'Didi', 'Palembang', 'RB001', 15000, '2013-11-20 09:00:03', 'Stok Outlet'),
('RB00113112000005', '2013-11-20', 'Iwan', 'Palembang', 'RB001', 255000, '2013-11-20 09:01:01', 'Stok Gudang'),
('RB00113112500006', '2013-11-25', 'Adi Susanto', 'Jl. Gubernur Bastari No.005, Palembang.', 'RB001', 103000, '2013-11-25 09:22:12', 'Stok Gudang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kd_produk` char(15) NOT NULL,
  `nm_produk` varchar(50) NOT NULL,
  `harga_modal` int(15) NOT NULL,
  `harga_jual` int(15) NOT NULL,
  `stok` int(4) NOT NULL,
  `keterangan` text NOT NULL,
  `file_gambar` text NOT NULL,
  `kd_kategori` int(5) NOT NULL,
  `nm_kategori` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `kd_produk`, `nm_produk`, `harga_modal`, `harga_jual`, `stok`, `keterangan`, `file_gambar`, `kd_kategori`, `nm_kategori`) VALUES
(1, '1915011870', 'Tenun 1870', 50000, 700000, 2, 'Kain Tenun Maumere', 'pr/images/IMG_1870.JPG', 1, 'kain tenun'),
(8, '1423020001', 'Batik 01', 50000, 100000, 5, 'Batik Rembang', 'pr/images/batik8.JPG', 2, 'kain batik'),
(6, '1505020001', 'Batik 02', 100000, 200000, 3, 'Batik Yogyakarta', 'pr/images/batik2.JPG', 2, 'kain batik'),
(15, '1013030001', 'Tapis 01', 500000, 1000000, 1, 'Kain Tapis Lampung', 'pr/images/tapis1.JPG', 3, 'kain tapis'),
(12, '0119040001', 'Pintu Aceh', 500000, 1000000, 2, 'Pintu Aceh terbuat dari emas', 'pr/images/pintuaceh1.JPG', 4, 'kerajinan tangan'),
(3, '1915011871', 'tenun 1871', 500000, 1000000, 4, 'kain tenun maumere', 'pr/images/IMG_1871.JPG', 1, 'kain tenun'),
(2, '1915017565', 'tenun 7565', 500000, 800000, 9, 'kain tenun maumere', 'pr/images/IMG_7565.JPG', 1, 'kaiin tenun'),
(4, '1434020001', 'Batik 03', 50000, 100000, 8, 'Batik solo', 'pr/images/batik3.JPG', 2, 'kain batik'),
(5, '1419020001', 'Batik 04', 50000, 100000, 7, 'batik pekalongan', 'pr/images/batik1.JPG', 2, 'kain batik'),
(7, '1419020004', 'Batik 06', 40000, 120000, 6, 'Batik Pekalongan', 'pr/images/batik4.JPG', 2, 'kain batik'),
(9, '1505020005', 'Batik 05', 70000, 130000, 8, 'Batik Yogyakarta', 'pr/images/batik5.JPG', 2, 'kain batik'),
(10, '1434020006', 'Batik 07', 80000, 125000, 9, 'Batik Solo', 'pr/images/batik6.JPG', 2, 'kain batik'),
(11, '1419020007', 'Batik 07', 45000, 78000, 7, 'Batik Pekalongan', 'pr/images/batik7.JPG', 2, 'kain batik'),
(13, '0119040002', 'Pintu Aceh 02', 1400000, 1500000, 2, 'Pintu Aceh Sigli', 'pr/images/pintuaceh2.JPG', 4, 'kerajinan tangan'),
(14, '0119040003', 'Pintu Aceh 03', 1350000, 1650000, 3, 'Pintu Aceh terbuat dari emas', 'pr/images/pintuaceh3.JPG', 4, 'kerajinan tangan'),
(16, '1013030002', 'Kain Tapis 02', 1500000, 2000000, 1, 'Kain Tapis', 'pr/images/tapis2.JPG', 3, 'kain tapis'),
(17, '1013030003', 'Kain Tapis 03', 1250000, 1500000, 3, 'Kain Tapis berasal dari Lampung', 'pr/images/tapis3.JPG', 3, 'kain tapis');

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsi`
--

CREATE TABLE `provinsi` (
  `id` int(5) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `kab_kot` varchar(50) NOT NULL,
  `nm_produk` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `retur_barang`
--

CREATE TABLE `retur_barang` (
  `id_retur` varchar(16) NOT NULL,
  `id_transaksi` varchar(16) NOT NULL,
  `id_user` varchar(16) NOT NULL,
  `tgl_retur` date NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `retur_barang`
--

INSERT INTO `retur_barang` (`id_retur`, `id_transaksi`, `id_user`, `tgl_retur`, `keterangan`) VALUES
('RET1026201300001', 'RES1024201300001', '00', '2013-10-26', 'Retur Barang Masuk'),
('RET1028201300002', 'OUT1014201300001', '00', '2013-10-28', 'Retur Barang Keluar'),
('RET1028201300003', 'RES1024201300001', '00', '2013-10-28', 'Retur Barang Masuk'),
('RET1112201300004', 'OUT1014201300001', '001', '2013-11-12', 'Retur Barang Keluar'),
('RET1112201300005', 'OUT1014201300002', '001', '2013-11-12', 'Retur Barang Keluar'),
('RET1112201300006', 'OUT1014201300001', '001', '2013-11-12', 'Retur Barang Keluar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` varchar(16) NOT NULL,
  `nm_supplier` varchar(30) NOT NULL,
  `almt_supplier` varchar(100) NOT NULL,
  `tlp_supplier` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nm_supplier`, `almt_supplier`, `tlp_supplier`) VALUES
('SUP-001', 'TENUN IKAT', 'Maumere', '654321');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(60) NOT NULL,
  `deskripsi_produk` text NOT NULL,
  `code_produk` varchar(60) NOT NULL,
  `image_produk` varchar(60) NOT NULL,
  `price_produk` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_produk`
--

INSERT INTO `tbl_produk` (`id`, `nama_produk`, `deskripsi_produk`, `code_produk`, `image_produk`, `price_produk`) VALUES
(1, 'Baju 1', '-------', 'B190', 'tshirt-1.jpg', '100000'),
(2, 'Baju 2', '-----', 'B191', 'tshirt-2.jpg', '200000'),
(3, 'Baju 3', '-----', 'B192', 'tshirt-3.jpg', '3000000'),
(4, 'Baju 4', '-----', 'B192', 'tshirt-4.jpg', '300000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `temp_barang`
--

CREATE TABLE `temp_barang` (
  `no` int(11) NOT NULL,
  `id_trx` varchar(30) NOT NULL,
  `id_barang` varchar(16) NOT NULL,
  `jml` int(11) NOT NULL,
  `hrg` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmp_keranjang`
--

CREATE TABLE `tmp_keranjang` (
  `id` int(4) NOT NULL,
  `kd_produk` int(7) NOT NULL,
  `harga` int(15) NOT NULL,
  `jumlah` varchar(1000) NOT NULL,
  `tanggal` date NOT NULL,
  `kd_pelanggan` int(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` varchar(16) NOT NULL,
  `nm_user` varchar(25) NOT NULL,
  `password` varchar(15) NOT NULL,
  `level` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nm_user`, `password`, `level`) VALUES
('001', 'Rachmat', '123456', 'super admin'),
('002', 'Nanda', '1234', 'super admin'),
('003', 'Natalia', '1234', 'super admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id_keluar`);

--
-- Indexes for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`id_masuk`);

--
-- Indexes for table `biaya_kurir`
--
ALTER TABLE `biaya_kurir`
  ADD PRIMARY KEY (`kd_kota`);

--
-- Indexes for table `detail_barang_keluar`
--
ALTER TABLE `detail_barang_keluar`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `detail_barang_masuk`
--
ALTER TABLE `detail_barang_masuk`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `detail_jual`
--
ALTER TABLE `detail_jual`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `detail_retur`
--
ALTER TABLE `detail_retur`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `hubungikami`
--
ALTER TABLE `hubungikami`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `jenis_barang`
--
ALTER TABLE `jenis_barang`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kd_kategori`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`id_kurir`);

--
-- Indexes for table `master_kokab`
--
ALTER TABLE `master_kokab`
  ADD PRIMARY KEY (`kota_id`),
  ADD KEY `pro_kota` (`provinsi_id`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_orders`);

--
-- Indexes for table `orders_penampung`
--
ALTER TABLE `orders_penampung`
  ADD PRIMARY KEY (`id_orders_penampung`);

--
-- Indexes for table `orders_temp`
--
ALTER TABLE `orders_temp`
  ADD PRIMARY KEY (`id_orders_temp`);

--
-- Indexes for table `outlet`
--
ALTER TABLE `outlet`
  ADD PRIMARY KEY (`id_outlet`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`kd_pelanggan`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`kd_pelanggan`),
  ADD KEY `kd_pelanggan` (`kd_pelanggan`),
  ADD KEY `kd_kota` (`kd_kota`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_jual`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `retur_barang`
--
ALTER TABLE `retur_barang`
  ADD PRIMARY KEY (`id_retur`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_barang`
--
ALTER TABLE `temp_barang`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tmp_keranjang`
--
ALTER TABLE `tmp_keranjang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kd_produk` (`kd_produk`),
  ADD KEY `kd_pelanggan` (`kd_pelanggan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `biaya_kurir`
--
ALTER TABLE `biaya_kurir`
  MODIFY `kd_kota` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `detail_barang_keluar`
--
ALTER TABLE `detail_barang_keluar`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `detail_barang_masuk`
--
ALTER TABLE `detail_barang_masuk`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `detail_jual`
--
ALTER TABLE `detail_jual`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `detail_retur`
--
ALTER TABLE `detail_retur`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `hubungikami`
--
ALTER TABLE `hubungikami`
  MODIFY `id_pesan` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kd_kategori` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kurir`
--
ALTER TABLE `kurir`
  MODIFY `id_kurir` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `master_kokab`
--
ALTER TABLE `master_kokab`
  MODIFY `kota_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=503;
--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_orders` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `orders_penampung`
--
ALTER TABLE `orders_penampung`
  MODIFY `id_orders_penampung` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `orders_temp`
--
ALTER TABLE `orders_temp`
  MODIFY `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `kd_pelanggan` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `kd_pelanggan` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1915011876;
--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `temp_barang`
--
ALTER TABLE `temp_barang`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tmp_keranjang`
--
ALTER TABLE `tmp_keranjang`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
