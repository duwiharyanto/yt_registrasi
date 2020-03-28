#
# TABLE STRUCTURE FOR: acc_kategori
#

DROP TABLE IF EXISTS `acc_kategori`;

CREATE TABLE `acc_kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(255) DEFAULT NULL,
  `kategori_jenis` bit(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`kategori_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `acc_kategori` (`kategori_id`, `kategori_nama`, `kategori_jenis`, `created_at`) VALUES (1, 'Makan', '0', '2020-03-10 16:26:59');
INSERT INTO `acc_kategori` (`kategori_id`, `kategori_nama`, `kategori_jenis`, `created_at`) VALUES (2, 'Gaji', '1', '2020-03-10 16:27:43');
INSERT INTO `acc_kategori` (`kategori_id`, `kategori_nama`, `kategori_jenis`, `created_at`) VALUES (3, 'Insentif', '1', '2020-03-10 16:29:10');
INSERT INTO `acc_kategori` (`kategori_id`, `kategori_nama`, `kategori_jenis`, `created_at`) VALUES (4, 'Transportasi', '0', '2020-03-10 16:29:20');
INSERT INTO `acc_kategori` (`kategori_id`, `kategori_nama`, `kategori_jenis`, `created_at`) VALUES (5, 'Sandang', '0', '2020-03-10 16:36:56');
INSERT INTO `acc_kategori` (`kategori_id`, `kategori_nama`, `kategori_jenis`, `created_at`) VALUES (6, 'Hobi', '0', '2020-03-10 16:37:33');
INSERT INTO `acc_kategori` (`kategori_id`, `kategori_nama`, `kategori_jenis`, `created_at`) VALUES (7, 'Elektronik', '0', '2020-03-10 16:37:39');
INSERT INTO `acc_kategori` (`kategori_id`, `kategori_nama`, `kategori_jenis`, `created_at`) VALUES (8, 'Sumbangan masuk', '1', '2020-03-10 16:38:17');
INSERT INTO `acc_kategori` (`kategori_id`, `kategori_nama`, `kategori_jenis`, `created_at`) VALUES (9, 'Liburan', '0', '2020-03-11 09:27:15');


#
# TABLE STRUCTURE FOR: acc_transaksi
#

DROP TABLE IF EXISTS `acc_transaksi`;

CREATE TABLE `acc_transaksi` (
  `transaksi_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaksi_kategoriid` int(11) DEFAULT NULL,
  `transaksi_nominal` int(255) DEFAULT NULL,
  `transaksi_tanggal` date DEFAULT NULL,
  `transaksi_userid` int(11) DEFAULT NULL,
  `transaksi_deskripsi` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`transaksi_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `acc_transaksi` (`transaksi_id`, `transaksi_kategoriid`, `transaksi_nominal`, `transaksi_tanggal`, `transaksi_userid`, `transaksi_deskripsi`, `created_at`) VALUES (1, 6, 150000, '2020-03-11', 1, 'beli gear set motor', '2020-03-11 16:12:44');
INSERT INTO `acc_transaksi` (`transaksi_id`, `transaksi_kategoriid`, `transaksi_nominal`, `transaksi_tanggal`, `transaksi_userid`, `transaksi_deskripsi`, `created_at`) VALUES (2, 1, 50000, '2020-03-11', 1, 'makan di ss', '2020-03-11 16:12:31');
INSERT INTO `acc_transaksi` (`transaksi_id`, `transaksi_kategoriid`, `transaksi_nominal`, `transaksi_tanggal`, `transaksi_userid`, `transaksi_deskripsi`, `created_at`) VALUES (3, 4, 50000, '2020-03-11', 1, 'bensin minggu ke 1 bulan maret', '2020-03-11 16:12:27');
INSERT INTO `acc_transaksi` (`transaksi_id`, `transaksi_kategoriid`, `transaksi_nominal`, `transaksi_tanggal`, `transaksi_userid`, `transaksi_deskripsi`, `created_at`) VALUES (7, 1, 40000, '2020-03-11', 1, 'Makan di SS', '2020-03-11 16:12:18');


#
# TABLE STRUCTURE FOR: catatan
#

DROP TABLE IF EXISTS `catatan`;

CREATE TABLE `catatan` (
  `catatan_id` int(11) NOT NULL AUTO_INCREMENT,
  `catatan_judul` varchar(255) DEFAULT NULL,
  `catatan_userid` int(11) DEFAULT NULL,
  `catatan_isi` text DEFAULT NULL,
  `catatan_status` varchar(10) DEFAULT NULL,
  `catatan_file` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`catatan_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `catatan` (`catatan_id`, `catatan_judul`, `catatan_userid`, `catatan_isi`, `catatan_status`, `catatan_file`, `created_at`) VALUES (3, 'MedUp', 1, 'URL : Https://admin.medup.id/<br><br><b>Team_id: Pdrsuii</b><br>Email: Pdrsuiiadmin@medupmessenger.com<br>Password: Adminpdrsuii12345<br><br><b>Team_id: Anakrsuii</b><br>Email: Anakrsuiiadmin@medupmessenger.com<br>Password: Adminanakrsuii12345<br><br><b>Team_id: Sarafrsuii</b><br>Email: Sarafrsuiiadmin@medupmessenger.com<br>Password: Adminsarafrsuii12345<br><br><b>Team_id: Rsuii</b><br>Email: Rsuiiadmin@medupmessenger.com<br>Password: Adminrsuii12345<br>', '1', 'd9c8d73217309eb5de70c2602bfa68fd.pdf', '2020-02-27 12:50:38');
INSERT INTO `catatan` (`catatan_id`, `catatan_judul`, `catatan_userid`, `catatan_isi`, `catatan_status`, `catatan_file`, `created_at`) VALUES (4, 'Admin ', 1, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br></p>', '2', 'b2b5a72cd2fa13eb616856f64180b6ab.pdf', '2020-02-26 13:57:10');


#
# TABLE STRUCTURE FOR: header
#

DROP TABLE IF EXISTS `header`;

CREATE TABLE `header` (
  `header_id` int(11) NOT NULL AUTO_INCREMENT,
  `header_headline` text DEFAULT NULL,
  `header_subheadline` text DEFAULT NULL,
  `header_status` bit(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `header_button` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`header_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `header` (`header_id`, `header_headline`, `header_subheadline`, `header_status`, `created_at`, `header_button`) VALUES (1, 'Helo world', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '1', '2020-02-01 10:15:49', 'klik');
INSERT INTO `header` (`header_id`, `header_headline`, `header_subheadline`, `header_status`, `created_at`, `header_button`) VALUES (2, 'helo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '1', '2020-02-11 16:15:13', 'shere');


#
# TABLE STRUCTURE FOR: hr_berkas
#

DROP TABLE IF EXISTS `hr_berkas`;

CREATE TABLE `hr_berkas` (
  `berkas_id` int(11) NOT NULL AUTO_INCREMENT,
  `berkas_userid` int(11) DEFAULT NULL,
  `berkas_kategori` varchar(100) DEFAULT NULL,
  `berkas_file` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`berkas_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `hr_berkas` (`berkas_id`, `berkas_userid`, `berkas_kategori`, `berkas_file`, `created_at`) VALUES (1, 1, 'kartu_keluarga', '99b20550c7485fd75eac97b8f11e2679.pdf', '2020-02-16 21:04:03');
INSERT INTO `hr_berkas` (`berkas_id`, `berkas_userid`, `berkas_kategori`, `berkas_file`, `created_at`) VALUES (2, 1, 'ktp_istri', 'd64c7fc1501c47ab38e60706be02dac5.pdf', '2020-02-16 21:06:44');
INSERT INTO `hr_berkas` (`berkas_id`, `berkas_userid`, `berkas_kategori`, `berkas_file`, `created_at`) VALUES (4, 1, 'ktp_suami', '798f11381a880d2beac744867c4b3160.pdf', '2020-02-16 21:16:40');


#
# TABLE STRUCTURE FOR: hr_cuti
#

DROP TABLE IF EXISTS `hr_cuti`;

CREATE TABLE `hr_cuti` (
  `cuti_id` int(11) NOT NULL AUTO_INCREMENT,
  `cuti_userid` int(11) DEFAULT NULL,
  `cuti_tglmulai` date DEFAULT NULL,
  `cuti_tglselesai` date DEFAULT NULL,
  `cuti_nohp` varchar(15) DEFAULT NULL,
  `cuti_alamat` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cuti_file` text DEFAULT NULL,
  `cuti_kategori` varchar(100) DEFAULT NULL,
  `cuti_status` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`cuti_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `hr_cuti` (`cuti_id`, `cuti_userid`, `cuti_tglmulai`, `cuti_tglselesai`, `cuti_nohp`, `cuti_alamat`, `created_at`, `cuti_file`, `cuti_kategori`, `cuti_status`) VALUES (3, 1, '2020-02-18', '2020-02-20', '085725818424', 'bantul yogyakarta', '2020-02-18 13:09:40', '52d9c28dbd713a22e6d48c3abf5503fa.pdf', 'cuti_tahunan', '0');


#
# TABLE STRUCTURE FOR: hr_datadiri
#

DROP TABLE IF EXISTS `hr_datadiri`;

CREATE TABLE `hr_datadiri` (
  `datadiri_id` int(11) NOT NULL AUTO_INCREMENT,
  `datadiri_userid` int(11) DEFAULT NULL,
  `datadiri_hobi` varchar(255) DEFAULT NULL,
  `datadiri_nomorhp` varchar(20) DEFAULT NULL,
  `datadiri_email` varchar(100) DEFAULT NULL,
  `datadiri_alamat` text DEFAULT NULL,
  `datadiri_jeniskelamin` bit(1) DEFAULT NULL,
  `datadiri_tentangsaya` text DEFAULT NULL,
  `datadiri_tgllahir` date DEFAULT NULL,
  `datadiri_jabatan` text DEFAULT NULL,
  PRIMARY KEY (`datadiri_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `hr_datadiri` (`datadiri_id`, `datadiri_userid`, `datadiri_hobi`, `datadiri_nomorhp`, `datadiri_email`, `datadiri_alamat`, `datadiri_jeniskelamin`, `datadiri_tentangsaya`, `datadiri_tgllahir`, `datadiri_jabatan`) VALUES (1, 1, '', '085725818424', NULL, 'Pedak Wijirejo Pandak Bantul', '1', 'Lorem Ipsum Is Simply Dummy Text Of The Printing And Typesetting Industry. Lorem Ipsum Has Been The Industry\'s Standard Dummy Text Ever Since The 1500s, When An Unknown Printer Took A Galley Of Type And Scrambled It To Make A Type Specimen Book. It Has Survived Not Only Five Centuries, But Also The Leap Into Electronic Typesetting, Remaining Essentially Unchanged. It Was Popularised In The 1960s With The Release Of Letraset Sheets Containing Lorem Ipsum Passages, And More Recently With Desktop Publishing Software Like Aldus PageMaker Including Versions Of Lorem Ipsum.', '1991-02-19', 'Programer & Gamer');


#
# TABLE STRUCTURE FOR: hr_jabatan
#

DROP TABLE IF EXISTS `hr_jabatan`;

CREATE TABLE `hr_jabatan` (
  `jabatan_id` int(11) NOT NULL AUTO_INCREMENT,
  `jabatan_userid` int(11) DEFAULT NULL,
  `jabatan_jabatan` varchar(255) DEFAULT NULL,
  `jabatan_tmt` date DEFAULT NULL,
  `jabatan_nosk` varchar(50) DEFAULT NULL,
  `jabatan_file` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`jabatan_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `hr_jabatan` (`jabatan_id`, `jabatan_userid`, `jabatan_jabatan`, `jabatan_tmt`, `jabatan_nosk`, `jabatan_file`, `created_at`) VALUES (1, 1, 'staff', '2020-02-18', 'SN/02/2454545', 'c7102e783400e180bcdb910d5a474598.pdf', '2020-02-18 16:56:57');


#
# TABLE STRUCTURE FOR: hr_keluarga
#

DROP TABLE IF EXISTS `hr_keluarga`;

CREATE TABLE `hr_keluarga` (
  `keluarga_id` int(11) NOT NULL AUTO_INCREMENT,
  `keluarga_userid` int(11) DEFAULT NULL,
  `keluarga_nama` varchar(255) DEFAULT NULL,
  `keluarga_nik` varchar(30) DEFAULT NULL,
  `keluarga_hubungan` varchar(100) DEFAULT NULL,
  `keluarga_alamat` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`keluarga_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `hr_keluarga` (`keluarga_id`, `keluarga_userid`, `keluarga_nama`, `keluarga_nik`, `keluarga_hubungan`, `keluarga_alamat`, `created_at`) VALUES (1, 1, 'Rusmita Sari', '-', 'istri', 'Dayu, sinduharjo, ngaglik sleman', '2020-02-16 20:38:41');


#
# TABLE STRUCTURE FOR: hr_pelatihan
#

DROP TABLE IF EXISTS `hr_pelatihan`;

CREATE TABLE `hr_pelatihan` (
  `pelatihan_id` int(11) NOT NULL,
  `pelatihan_userid` int(11) DEFAULT NULL,
  `pelatihan_judul` varchar(255) DEFAULT NULL,
  `pelatihan_kategori` varchar(100) DEFAULT NULL,
  `pelatihan_file` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`pelatihan_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# TABLE STRUCTURE FOR: hr_pendidikan
#

DROP TABLE IF EXISTS `hr_pendidikan`;

CREATE TABLE `hr_pendidikan` (
  `pendidikan_id` int(11) NOT NULL AUTO_INCREMENT,
  `pendidikan_userid` int(11) DEFAULT NULL,
  `pendidikan_jenjang` varchar(100) DEFAULT NULL,
  `pendidikan_noijazah` varchar(100) DEFAULT NULL,
  `pendidikan_tahun` int(10) DEFAULT NULL,
  `pendidikan_file` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`pendidikan_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `hr_pendidikan` (`pendidikan_id`, `pendidikan_userid`, `pendidikan_jenjang`, `pendidikan_noijazah`, `pendidikan_tahun`, `pendidikan_file`, `created_at`) VALUES (1, 1, 'S1', 'SN/024/VII/2014', 2014, 'c2c0429077b6078291c7b5f90f46e932.pdf', '2020-02-17 16:38:12');
INSERT INTO `hr_pendidikan` (`pendidikan_id`, `pendidikan_userid`, `pendidikan_jenjang`, `pendidikan_noijazah`, `pendidikan_tahun`, `pendidikan_file`, `created_at`) VALUES (2, 1, 'SMK/SMA', 'SN/024/VII/2010', 2010, '3030c24f5647922e14a21660a3bb3609.pdf', '2020-02-17 16:48:08');


#
# TABLE STRUCTURE FOR: level
#

DROP TABLE IF EXISTS `level`;

CREATE TABLE `level` (
  `level_id` int(11) NOT NULL AUTO_INCREMENT,
  `level_nama` varchar(255) DEFAULT NULL,
  `level_status` bit(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `level_dashboard` text DEFAULT NULL,
  PRIMARY KEY (`level_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `level` (`level_id`, `level_nama`, `level_status`, `created_at`, `level_dashboard`) VALUES (1, 'Administrator', '1', '2020-02-16 21:22:59', 'dashboard/dashboard');
INSERT INTO `level` (`level_id`, `level_nama`, `level_status`, `created_at`, `level_dashboard`) VALUES (2, 'User', '1', '2020-02-15 08:59:01', 'dashboard/dashboard');
INSERT INTO `level` (`level_id`, `level_nama`, `level_status`, `created_at`, `level_dashboard`) VALUES (3, 'notulen', '1', '2020-02-15 08:53:02', 'notulen/index');
INSERT INTO `level` (`level_id`, `level_nama`, `level_status`, `created_at`, `level_dashboard`) VALUES (11, 'Manajer', '1', '2020-03-27 21:55:34', 'Dashboard/dashboard');


#
# TABLE STRUCTURE FOR: log
#

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_iduser` int(11) DEFAULT NULL,
  `log_aksi` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `log_level` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (1, 1, 'login', '2020-01-02 03:40:03', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (2, 1, 'login', '2020-01-02 03:40:04', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (3, 34, 'login', '2020-01-02 03:40:04', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (7, 1, 'password salah', '2020-01-02 03:40:06', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (8, 1, 'password salah', '2020-01-02 03:40:07', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (9, 1, 'password salah', '2020-01-02 03:40:07', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (12, 35, 'password salah', '2020-01-02 03:40:08', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (13, 1, 'login', '2020-01-02 05:34:00', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (14, 1, 'logout', '2020-01-02 03:38:55', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (15, 1, 'login', '2020-01-02 05:33:59', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (16, 1, 'logout', '2020-01-02 05:34:09', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (17, 1, 'login', '2020-01-02 05:34:13', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (18, 1, 'logout', '2020-01-02 06:07:28', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (19, 35, 'login', '2020-01-02 06:07:33', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (20, 35, 'logout', '2020-01-02 06:07:39', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (21, 4, 'login', '2020-01-02 06:07:42', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (22, 4, 'logout', '2020-01-02 06:07:55', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (23, 29, 'password salah', '2020-01-02 06:07:58', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (24, 29, 'password salah', '2020-01-02 06:08:02', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (25, 1, 'login', '2020-01-02 06:08:06', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (26, 1, 'logout', '2020-01-02 06:08:25', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (27, 29, 'login', '2020-01-02 06:08:28', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (28, 1, 'password salah', '2020-01-02 06:12:54', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (29, 1, 'login', '2020-01-02 06:13:03', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (30, 1, 'login', '2020-01-03 03:06:13', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (32, 1, 'login', '2020-01-03 03:45:31', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (33, 1, 'logout', '2020-01-03 03:48:28', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (34, 1, 'login', '2020-01-03 04:06:01', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (35, 1, 'logout', '2020-01-03 04:08:25', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (36, 1, 'login', '2020-01-03 04:08:28', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (37, 1, 'logout', '2020-01-03 04:08:37', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (38, 1, 'login', '2020-01-03 04:08:48', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (40, 1, 'login', '2020-01-03 04:10:15', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (41, 1, 'logout', '2020-01-03 04:14:44', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (42, 1, 'login', '2020-01-03 04:17:12', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (43, 1, 'logout', '2020-01-03 04:18:20', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (44, 1, 'login', '2020-01-03 06:13:46', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (45, 1, 'logout', '2020-01-03 06:16:43', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (46, 1, 'login', '2020-01-06 05:44:51', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (47, 1, 'logout', '2020-01-06 20:22:39', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (48, 1, 'login', '2020-01-06 20:22:45', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (49, 1, 'login', '2020-01-07 18:18:02', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (50, 1, 'login', '2020-01-09 13:39:02', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (51, 1, 'login', '2020-01-10 10:45:11', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (52, 1, 'logout', '2020-01-10 10:54:19', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (53, 1, 'login', '2020-01-14 10:49:03', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (54, 1, 'logout', '2020-01-14 11:05:20', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (55, 1, 'login', '2020-01-14 11:09:09', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (56, 1, 'logout', '2020-01-14 11:10:13', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (57, 1, 'login', '2020-01-14 11:28:23', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (58, 1, 'logout', '2020-01-14 11:53:38', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (59, 1, 'login', '2020-01-20 13:21:25', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (60, 1, 'login', '2020-01-24 10:46:31', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (61, 1, 'login', '2020-02-01 09:11:33', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (62, 1, 'logout', '2020-02-01 09:36:46', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (63, 1, 'login', '2020-02-01 09:36:50', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (64, 1, 'logout', '2020-02-01 11:11:06', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (65, 1, 'login', '2020-02-01 11:11:16', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (66, 1, 'logout', '2020-02-01 11:11:37', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (67, 29, 'password salah', '2020-02-01 11:11:40', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (68, 29, 'login', '2020-02-01 11:11:44', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (69, 1, 'login', '2020-02-05 13:15:29', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (70, 1, 'logout', '2020-02-05 13:16:05', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (71, 29, 'password salah', '2020-02-05 13:16:08', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (72, 29, 'login', '2020-02-05 13:16:12', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (73, 1, 'login', '2020-02-06 11:46:40', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (74, 1, 'login', '2020-02-06 16:08:37', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (75, 1, 'login', '2020-02-07 08:43:09', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (76, 1, 'logout', '2020-02-07 10:15:44', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (77, 37, 'login', '2020-02-07 10:15:52', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (78, 37, 'logout', '2020-02-07 10:33:55', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (79, 37, 'login', '2020-02-07 10:34:01', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (80, 37, 'logout', '2020-02-07 10:35:37', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (81, 37, 'login', '2020-02-07 10:35:42', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (82, NULL, 'logout', '2020-02-07 15:55:57', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (83, 1, 'login', '2020-02-07 16:28:01', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (84, 1, 'logout', '2020-02-07 16:28:07', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (85, 37, 'login', '2020-02-07 16:28:13', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (86, 37, 'login', '2020-02-10 09:54:57', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (87, 37, 'logout', '2020-02-10 10:12:24', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (88, 37, 'login', '2020-02-10 10:12:31', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (89, 37, 'login', '2020-02-11 10:32:28', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (90, 37, 'logout', '2020-02-11 11:44:40', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (91, 37, 'login', '2020-02-11 12:58:19', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (92, 37, 'logout', '2020-02-11 13:07:18', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (93, 1, 'login', '2020-02-11 16:10:34', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (94, 1, 'logout', '2020-02-11 16:13:29', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (95, 1, 'login', '2020-02-11 16:13:41', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (96, 1, 'logout', '2020-02-11 16:15:17', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (97, 1, 'login', '2020-02-15 08:22:06', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (98, 1, 'logout', '2020-02-15 09:07:30', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (99, 37, 'login', '2020-02-15 09:10:27', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (100, 37, 'logout', '2020-02-15 09:10:32', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (101, 1, 'login', '2020-02-15 09:10:35', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (102, 1, 'logout', '2020-02-15 09:19:29', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (103, 37, 'login', '2020-02-15 09:19:35', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (104, 37, 'logout', '2020-02-15 09:21:37', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (105, 1, 'login', '2020-02-15 09:21:40', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (106, 1, 'logout', '2020-02-15 09:22:49', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (107, 1, 'login', '2020-02-15 09:22:52', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (108, 1, 'login', '2020-02-15 10:17:29', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (109, 1, 'logout', '2020-02-15 10:24:03', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (110, 1, 'login', '2020-02-15 10:24:06', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (111, 1, 'logout', '2020-02-15 10:27:17', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (112, 1, 'login', '2020-02-15 10:27:20', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (113, 1, 'logout', '2020-02-15 10:28:06', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (114, 37, 'login', '2020-02-15 10:28:15', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (115, 37, 'logout', '2020-02-15 10:28:43', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (116, 37, 'login', '2020-02-15 10:28:51', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (117, 37, 'logout', '2020-02-15 10:29:27', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (118, 1, 'login', '2020-02-15 10:29:30', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (119, 1, 'logout', '2020-02-15 10:31:54', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (120, 1, 'login', '2020-02-15 10:31:59', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (121, 1, 'logout', '2020-02-15 10:33:42', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (122, 1, 'login', '2020-02-15 10:33:52', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (123, 1, 'logout', '2020-02-15 10:39:27', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (124, 36, 'login', '2020-02-15 10:39:35', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (125, 36, 'logout', '2020-02-15 10:39:44', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (126, 1, 'login', '2020-02-15 10:39:49', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (127, 36, 'login', '2020-02-15 11:21:09', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (128, 1, 'login', '2020-02-15 12:45:36', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (129, 1, 'logout', '2020-02-15 15:13:59', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (130, 1, 'login', '2020-02-15 15:39:09', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (131, 1, 'logout', '2020-02-15 17:02:04', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (132, 1, 'login', '2020-02-15 19:36:05', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (133, 1, 'login', '2020-02-16 18:53:35', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (134, 1, 'logout', '2020-02-16 21:20:43', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (135, 1, 'login', '2020-02-16 21:20:46', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (136, 1, 'logout', '2020-02-16 21:21:14', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (137, 1, 'login', '2020-02-16 21:21:18', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (138, 1, 'logout', '2020-02-16 21:22:10', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (139, 1, 'login', '2020-02-16 21:22:14', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (140, 1, 'logout', '2020-02-16 21:22:39', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (141, 1, 'login', '2020-02-16 21:22:43', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (142, 1, 'logout', '2020-02-16 21:23:03', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (143, 1, 'login', '2020-02-16 21:23:07', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (144, 1, 'login', '2020-02-17 15:42:39', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (145, 1, 'login', '2020-02-18 11:41:17', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (146, 1, 'login', '2020-02-19 08:35:16', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (147, 1, 'login', '2020-02-19 11:02:02', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (148, 1, 'login', '2020-02-19 15:37:54', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (149, 1, 'logout', '2020-02-19 16:24:59', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (150, 1, 'login', '2020-02-19 16:34:19', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (151, 1, 'logout', '2020-02-19 17:00:36', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (152, 1, 'login', '2020-02-20 08:13:06', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (153, 1, 'login', '2020-02-25 13:56:36', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (154, 1, 'password salah', '2020-02-26 10:27:11', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (155, 1, 'login', '2020-02-26 10:27:15', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (156, 1, 'login', '2020-02-27 11:02:42', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (157, 1, 'login', '2020-02-27 15:33:44', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (158, 1, 'login', '2020-02-29 10:11:49', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (159, 1, 'login', '2020-02-29 14:06:33', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (160, 1, 'login', '2020-02-29 14:25:14', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (161, 1, 'login', '2020-02-29 16:14:54', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (162, 1, 'login', '2020-03-02 11:40:30', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (163, 1, 'logout', '2020-03-02 11:40:42', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (164, 1, 'login', '2020-03-02 11:43:24', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (165, 1, 'logout', '2020-03-02 11:43:29', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (166, 1, 'login', '2020-03-03 16:03:12', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (167, 1, 'login', '2020-03-04 15:49:08', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (168, 1, 'logout', '2020-03-04 16:47:26', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (169, 1, 'login', '2020-03-05 16:57:42', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (170, 1, 'login', '2020-03-09 10:34:08', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (171, 1, 'login', '2020-03-09 15:45:42', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (172, 1, 'login', '2020-03-10 09:49:51', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (173, 1, 'login', '2020-03-10 16:05:27', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (174, 1, 'logout', '2020-03-10 16:44:11', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (175, 1, 'login', '2020-03-11 07:44:12', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (176, 1, 'logout', '2020-03-11 09:29:25', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (177, 1, 'login', '2020-03-11 16:09:12', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (178, 1, 'login', '2020-03-14 10:42:31', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (179, 1, 'login', '2020-03-14 10:44:21', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (180, 1, 'login', '2020-03-16 15:00:19', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (181, 1, 'login', '2020-03-17 07:56:49', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (182, 1, 'logout', '2020-03-17 11:54:37', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (183, 1, 'login', '2020-03-17 11:55:35', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (184, 1, 'logout', '2020-03-17 11:57:30', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (185, 1, 'login', '2020-03-17 12:55:04', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (186, 1, 'login', '2020-03-18 11:27:10', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (187, 1, 'logout', '2020-03-18 11:31:27', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (188, 1, 'login', '2020-03-18 15:36:28', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (189, 1, 'logout', '2020-03-18 16:00:51', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (190, 1, 'login', '2020-03-18 16:06:25', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (191, 1, 'logout', '2020-03-18 16:06:36', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (192, 1, 'login', '2020-03-18 16:17:00', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (193, 1, 'login', '2020-03-19 08:56:29', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (194, 1, 'login', '2020-03-19 11:06:57', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (195, 1, 'logout', '2020-03-19 11:48:11', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (196, 1, 'login', '2020-03-19 12:49:47', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (197, 1, 'login', '2020-03-23 13:50:38', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (198, 1, 'logout', '2020-03-23 13:51:08', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (199, 1, 'login', '2020-03-23 13:51:12', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (200, 1, 'logout', '2020-03-23 14:06:06', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (201, 1, 'login', '2020-03-23 14:09:00', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (202, 1, 'logout', '2020-03-23 14:09:03', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (203, 1, 'login', '2020-03-23 14:09:08', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (204, 1, 'logout', '2020-03-23 14:09:18', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (205, 1, 'login', '2020-03-23 14:09:35', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (206, 1, 'logout', '2020-03-23 14:09:44', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (207, 1, 'login', '2020-03-23 14:11:57', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (208, 1, 'logout', '2020-03-23 14:12:16', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (209, 1, 'login', '2020-03-23 14:15:48', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (210, 1, 'logout', '2020-03-23 14:23:01', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (211, 1, 'login', '2020-03-23 14:23:05', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (212, 1, 'logout', '2020-03-23 14:25:48', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (213, 1, 'login', '2020-03-23 14:25:52', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (214, 1, 'login', '2020-03-23 20:56:14', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (215, 1, 'logout', '2020-03-23 22:23:32', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (216, 1, 'login', '2020-03-25 17:11:19', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (217, 1, 'logout', '2020-03-25 17:48:36', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (218, 1, 'login', '2020-03-25 17:48:44', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (219, 1, 'logout', '2020-03-25 19:57:38', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (220, 1, 'login', '2020-03-25 19:57:44', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (221, 1, 'logout', '2020-03-25 20:22:42', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (222, 1, 'login', '2020-03-25 21:05:39', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (223, 1, 'login', '2020-03-27 10:35:34', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (224, 1, 'login', '2020-03-27 19:44:54', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (225, 1, 'login', '2020-03-27 19:54:09', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (226, 1, 'logout', '2020-03-27 19:54:13', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (227, 29, 'password salah', '2020-03-27 20:01:45', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (228, 1, 'login', '2020-03-27 20:01:49', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (229, 1, 'logout', '2020-03-27 20:01:54', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (230, NULL, 'logout', '2020-03-27 20:02:26', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (231, 1, 'login', '2020-03-27 20:02:35', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (232, 1, 'logout', '2020-03-27 20:02:37', '3');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (233, 37, 'login', '2020-03-27 21:52:00', '1');
INSERT INTO `log` (`log_id`, `log_iduser`, `log_aksi`, `created_at`, `log_level`) VALUES (234, 37, 'logout', '2020-03-27 21:56:14', '3');


#
# TABLE STRUCTURE FOR: menu
#

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_nama` varchar(255) DEFAULT NULL,
  `menu_ikon` varchar(255) DEFAULT NULL,
  `menu_is_mainmenu` varchar(5) DEFAULT NULL,
  `menu_link` varchar(255) DEFAULT NULL,
  `menu_akses_level` varchar(50) DEFAULT NULL,
  `menu_urutan` int(5) DEFAULT NULL,
  `menu_status` varchar(1) DEFAULT NULL,
  `menu_akses` int(2) DEFAULT NULL,
  `menu_baru` int(2) DEFAULT NULL,
  `menu_label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (9, 'user', 'flaticon-layers', '102', 'setting/user', '1', 1, '1', 1, NULL, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (102, 'setting', 'flaticon-settings', '0', 'setting', '1,3', 90, '1', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (103, 'dashboard', 'flaticon-home', '0', 'dashboard/dashboard', '1,11', 1, '1', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (104, 'log', ' flaticon-time', '0', 'log/log', '1', 91, '1', 1, 2, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (105, 'logout', 'flaticon-arrow', '0', 'login/logout', '1,2,3', 99, '1', 1, NULL, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (106, 'laporan', 'flaticon-file', '0', 'laporan/index', '1', 98, '', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (111, 'level', 'flaticon-setting', '102', 'setting/level', '1', 2, '1', 1, NULL, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (112, 'menu_akses', 'flaticon-setting', '102', 'setting/menuakses', '1', 3, '1', 1, NULL, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (113, 'backup', 'flaticon-setting', '102', 'setting/backup', '1', 4, '1', 1, 2, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (114, 'import', 'flaticon-file', '0', 'import/admin', '1', 6, '0', 1, NULL, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (115, 'laporan user', 'flaticon-user', '106', 'laporan/index', '1', 1, '0', 1, NULL, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (116, 'sistem', 'flaticon-seting', '102', 'setting/sistem', '1', 5, '1', 1, 2, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (117, 'blog', 'flaticon-box-2', '0', 'blog/index', '1', 2, '0', 1, NULL, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (118, 'headline', 'flaticon-file', '117', 'blog/header', '1', 1, '0', 1, NULL, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (119, 'about', 'flaticon-file', '117', 'blog/about', '1', 2, '0', 1, NULL, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (120, 'service', 'flaticon-file', '117', 'blog/service', '1', 3, '0', 1, NULL, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (121, 'faq', 'flaticon-file', '117', 'blog/faq', '1', 4, '0', 1, NULL, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (122, 'tentang', 'flaticon-file', '117', 'blog/tentang', '1', 5, '0', 1, NULL, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (123, 'credit', 'flaticon-file', '117', 'blog/credit', '1', 6, '0', 1, NULL, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (124, 'testimoni', 'flaticon-file', '117', 'blog/testimoni', '1', 7, '0', 1, NULL, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (125, 'portofolio', 'flaticon-file', '117', 'blog/portofolio', '1', 8, '0', 1, NULL, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (126, 'post', 'flaticon-star', '117', 'post/post', '1', 3, '0', 1, NULL, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (127, 'pesan', 'flaticon-chat-3', '0', 'pesan/pesan', '1', 4, '0', 1, 3, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (129, 'rapat', 'flaticon-file', '0', 'notulen', '1,3', 2, '0', 1, NULL, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (130, 'notulen', 'flaticon-file', '129', 'notulen/index', '1,3', 2, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (131, 'referensi', 'flaticon-folder', '0', 'referensi', '1', 5, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (133, 'referensi', 'flaticon-folder', '131', 'referensi/index', '1', 1, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (136, 'accounting', 'flaticon-coins', '0', 'accounting/index', '1', 8, '0', 1, 3, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (137, 'project', 'flaticon-diagram', '0', 'project', '1', 9, '0', 1, 3, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (138, 'status', 'flaticon-file', '137', 'project/status', '1', 1, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (139, 'project', 'flaticon-file', '137', 'project/project', '1', 2, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (141, 'hrd', 'flaticon-users', '0', 'hrd', '1', 10, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (142, 'datadiri', 'flaticon-file', '141', 'hrd/datadiri', '1', 1, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (143, 'keluarga', 'flaticon-file', '141', 'hrd/keluarga', '1', 2, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (144, 'berkas', 'flaticon-file', '141', 'hrd/berkas', '1', 3, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (145, 'pelatihan', 'flaticon-file', '141', 'hrd/pelatihan', '1', 4, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (146, 'pendidikan', 'flaticon-file', '141', 'hrd/pendidikan', '1', 5, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (147, 'cuti', 'flaticon-file', '141', 'hrd/cuti', '1', 6, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (148, 'jabatan', 'flaticon-file', '141', 'hrd/jabatan', '1', 7, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (149, 'undangan', 'flaticon-file', '129', 'notulen/undangan', '1', 1, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (150, 'presensi', 'flaticon-file', '129', 'notulen/presensi', '1', 3, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (151, 'catatan', 'flaticon-agenda-1', '0', 'catatan/catatan', '1', 7, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (152, 'font_awesome', 'flaticon-file', '102', 'setting/fontawesome', '1', 8, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (153, 'pekerjaan', 'flaticon-file', '137', 'project/pekerjaan', '1', 3, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (154, 'perawatan_alat', 'flaticon-interface-4', '0', 'perawatan', '1', 9, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (155, 'kategori', 'flaticon-file', '154', 'perawatan/kategori', '1', 1, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (156, 'lokasi', 'flaticon-file', '154', 'perawatan/lokasi', '1', 2, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (157, 'tindakan', 'flaticon-file', '154', 'perawatan/tindakan', '1', 5, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (158, 'peralatan', 'flaticon-file', '154', 'perawatan/peralatan', '1', 6, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (159, 'merk_peralatan', 'flaticon-file', '154', 'perawatan/merk', '1', 4, '0', 1, 1, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (160, 'suplier', 'flaticon-file', '154', 'perawatan/suplier', '1', 3, '0', 1, 1, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (161, 'perawatan', 'flaticon-file', '154', 'perawatan/perawatan', '1', 7, '0', 1, 0, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (163, 'kategori', 'flaticon-file', '136', 'accounting/kategori', '1', 1, '0', 1, NULL, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (164, 'transaksi', 'flaticon-file', '136', 'accounting/transaksi', '1', 2, '0', 1, NULL, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (165, 'registrasi', 'flaticon-file', '0', 'Registrasi/Registrasi', '1,2', 1, '1', 1, 1, NULL);
INSERT INTO `menu` (`menu_id`, `menu_nama`, `menu_ikon`, `menu_is_mainmenu`, `menu_link`, `menu_akses_level`, `menu_urutan`, `menu_status`, `menu_akses`, `menu_baru`, `menu_label`) VALUES (166, 'registrasi', 'flaticon-file', '165', 'Registrasi/Registrasidetail', '1', 1, '0', 1, NULL, NULL);


#
# TABLE STRUCTURE FOR: pegawai
#

DROP TABLE IF EXISTS `pegawai`;

CREATE TABLE `pegawai` (
  `pegawai_id` int(11) NOT NULL AUTO_INCREMENT,
  `pegawai_nama` varchar(255) DEFAULT NULL,
  `pegawai_alamat` text DEFAULT NULL,
  PRIMARY KEY (`pegawai_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `pegawai` (`pegawai_id`, `pegawai_nama`, `pegawai_alamat`) VALUES (6, 'Mika', 'Bantul');


#
# TABLE STRUCTURE FOR: pr_pekarjaandetail
#

DROP TABLE IF EXISTS `pr_pekarjaandetail`;

CREATE TABLE `pr_pekarjaandetail` (
  `pekerjaandetail_id` int(11) NOT NULL,
  `pekerjaandetail_nama` varchar(255) DEFAULT NULL,
  `pekerjaandetail_pekerjaanid` int(11) DEFAULT NULL,
  `pekerjaandetail_status` int(11) DEFAULT NULL,
  `pekerjaandetail_keterangan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`pekerjaandetail_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# TABLE STRUCTURE FOR: pr_pekerjaan
#

DROP TABLE IF EXISTS `pr_pekerjaan`;

CREATE TABLE `pr_pekerjaan` (
  `pekerjaan_id` int(11) NOT NULL AUTO_INCREMENT,
  `pekerjaan_nama` text DEFAULT NULL,
  `pekerjaan_tanggal` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pekerjaan_userid` int(11) DEFAULT NULL,
  `pekerjaan_tindakan` text DEFAULT NULL,
  `pekerjaan_status` int(2) DEFAULT NULL,
  PRIMARY KEY (`pekerjaan_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `pr_pekerjaan` (`pekerjaan_id`, `pekerjaan_nama`, `pekerjaan_tanggal`, `created_at`, `pekerjaan_userid`, `pekerjaan_tindakan`, `pekerjaan_status`) VALUES (1, 'trobleshot pc fisioterapi sering lag', '2020-02-29', '2020-02-29 15:00:16', 1, 'update dirver, uninstall aplikasi yang memberatkan', 2);
INSERT INTO `pr_pekerjaan` (`pekerjaan_id`, `pekerjaan_nama`, `pekerjaan_tanggal`, `created_at`, `pekerjaan_userid`, `pekerjaan_tindakan`, `pekerjaan_status`) VALUES (2, 'Antrian anjungan lobi', '2020-02-29', '2020-02-29 11:46:29', 1, 'restart anjungan, karena lemot', 1);
INSERT INTO `pr_pekerjaan` (`pekerjaan_id`, `pekerjaan_nama`, `pekerjaan_tanggal`, `created_at`, `pekerjaan_userid`, `pekerjaan_tindakan`, `pekerjaan_status`) VALUES (3, 'Install Komputer NS 1', '2020-02-28', '2020-02-29 14:35:47', 1, 'Install windows 10 dan aplikasi pendukung', 1);
INSERT INTO `pr_pekerjaan` (`pekerjaan_id`, `pekerjaan_nama`, `pekerjaan_tanggal`, `created_at`, `pekerjaan_userid`, `pekerjaan_tindakan`, `pekerjaan_status`) VALUES (4, 'Distibusi Catridge', '2020-02-19', '2020-02-29 14:37:49', 1, 'Ganti catridge admisi billing, igd, billing hall', 1);


#
# TABLE STRUCTURE FOR: pr_project
#

DROP TABLE IF EXISTS `pr_project`;

CREATE TABLE `pr_project` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_nama` varchar(255) DEFAULT NULL,
  `project_keterangan` text DEFAULT NULL,
  `project_status` int(255) DEFAULT NULL,
  `project_iduser` int(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`project_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `pr_project` (`project_id`, `project_nama`, `project_keterangan`, `project_status`, `project_iduser`, `created_at`) VALUES (1, 'Desain Web', 'pembuatan websirte untuk internal', 1, 1, '2020-02-15 17:01:54');
INSERT INTO `pr_project` (`project_id`, `project_nama`, `project_keterangan`, `project_status`, `project_iduser`, `created_at`) VALUES (2, 'Modul Accounting', 'Pembuatan modul accounting', 7, 1, '2020-02-27 16:15:17');


#
# TABLE STRUCTURE FOR: pr_projectdetail
#

DROP TABLE IF EXISTS `pr_projectdetail`;

CREATE TABLE `pr_projectdetail` (
  `projectdetail_id` int(11) NOT NULL AUTO_INCREMENT,
  `projectdetail_idproject` int(255) NOT NULL,
  `projectdetail_judul` text DEFAULT NULL,
  `projectdetail_keterangan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `projectdetail_file` text DEFAULT NULL,
  PRIMARY KEY (`projectdetail_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `pr_projectdetail` (`projectdetail_id`, `projectdetail_idproject`, `projectdetail_judul`, `projectdetail_keterangan`, `created_at`, `projectdetail_file`) VALUES (7, 2, 'Pengumpulan Data', 'wawancara user dan telusur berkas', '2020-02-15 22:06:55', NULL);
INSERT INTO `pr_projectdetail` (`projectdetail_id`, `projectdetail_idproject`, `projectdetail_judul`, `projectdetail_keterangan`, `created_at`, `projectdetail_file`) VALUES (8, 2, 'Analisis Database', 'Perancangan Database menggunkan mysql', '2020-02-15 22:34:21', 'f1972ea2b94f953ed37977bc55931480.pdf');


#
# TABLE STRUCTURE FOR: pr_projectstatus
#

DROP TABLE IF EXISTS `pr_projectstatus`;

CREATE TABLE `pr_projectstatus` (
  `projectstatus_id` int(11) NOT NULL AUTO_INCREMENT,
  `projectstatus_status` varchar(255) DEFAULT NULL,
  `projectstatus_presentase` int(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`projectstatus_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `pr_projectstatus` (`projectstatus_id`, `projectstatus_status`, `projectstatus_presentase`, `created_at`) VALUES (1, 'Wawancara', 10, '2020-02-15 15:59:15');
INSERT INTO `pr_projectstatus` (`projectstatus_id`, `projectstatus_status`, `projectstatus_presentase`, `created_at`) VALUES (2, 'Pengumpulan Data/Dokumentas', 30, '2020-02-15 15:59:59');
INSERT INTO `pr_projectstatus` (`projectstatus_id`, `projectstatus_status`, `projectstatus_presentase`, `created_at`) VALUES (3, 'Analisis Database', 50, '2020-02-15 16:00:28');
INSERT INTO `pr_projectstatus` (`projectstatus_id`, `projectstatus_status`, `projectstatus_presentase`, `created_at`) VALUES (4, 'Pengkodean Prototype', 60, '2020-02-15 16:01:19');
INSERT INTO `pr_projectstatus` (`projectstatus_id`, `projectstatus_status`, `projectstatus_presentase`, `created_at`) VALUES (5, 'Pengkodean Algoritma', 90, '2020-02-15 16:01:55');
INSERT INTO `pr_projectstatus` (`projectstatus_id`, `projectstatus_status`, `projectstatus_presentase`, `created_at`) VALUES (6, 'Testing & Debugging', 100, '2020-02-15 16:02:16');
INSERT INTO `pr_projectstatus` (`projectstatus_id`, `projectstatus_status`, `projectstatus_presentase`, `created_at`) VALUES (7, 'Selesai', 110, '2020-02-27 16:12:37');


#
# TABLE STRUCTURE FOR: prwtn_cheklist
#

DROP TABLE IF EXISTS `prwtn_cheklist`;

CREATE TABLE `prwtn_cheklist` (
  `cheklist_id` int(11) NOT NULL AUTO_INCREMENT,
  `cheklist_nama` varchar(255) DEFAULT NULL,
  `cheklist_status` binary(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`cheklist_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# TABLE STRUCTURE FOR: prwtn_kategori
#

DROP TABLE IF EXISTS `prwtn_kategori`;

CREATE TABLE `prwtn_kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`kategori_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `prwtn_kategori` (`kategori_id`, `kategori_nama`, `created_at`) VALUES (1, 'Ringan', '2020-03-06 22:01:22');
INSERT INTO `prwtn_kategori` (`kategori_id`, `kategori_nama`, `created_at`) VALUES (2, 'Sedang', '2020-03-06 22:01:32');
INSERT INTO `prwtn_kategori` (`kategori_id`, `kategori_nama`, `created_at`) VALUES (5, 'Berat', '2020-03-06 22:13:16');


#
# TABLE STRUCTURE FOR: prwtn_lokasi
#

DROP TABLE IF EXISTS `prwtn_lokasi`;

CREATE TABLE `prwtn_lokasi` (
  `lokasi_id` int(11) NOT NULL AUTO_INCREMENT,
  `lokasi_nama` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`lokasi_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `prwtn_lokasi` (`lokasi_id`, `lokasi_nama`, `created_at`) VALUES (1, 'Ruang Rapat 1', '2020-03-07 09:30:09');
INSERT INTO `prwtn_lokasi` (`lokasi_id`, `lokasi_nama`, `created_at`) VALUES (2, 'Ruang Rapat 2', '2020-03-07 09:27:30');
INSERT INTO `prwtn_lokasi` (`lokasi_id`, `lokasi_nama`, `created_at`) VALUES (3, 'Admisi', '2020-03-07 09:29:24');


#
# TABLE STRUCTURE FOR: prwtn_merk
#

DROP TABLE IF EXISTS `prwtn_merk`;

CREATE TABLE `prwtn_merk` (
  `merk_id` int(11) NOT NULL AUTO_INCREMENT,
  `merk_nama` varchar(255) DEFAULT NULL,
  `merk_suplierid` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`merk_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `prwtn_merk` (`merk_id`, `merk_nama`, `merk_suplierid`, `created_at`) VALUES (1, 'Asus', 3, '2020-03-07 21:59:48');
INSERT INTO `prwtn_merk` (`merk_id`, `merk_nama`, `merk_suplierid`, `created_at`) VALUES (2, 'Hp', 1, '2020-03-07 20:55:20');
INSERT INTO `prwtn_merk` (`merk_id`, `merk_nama`, `merk_suplierid`, `created_at`) VALUES (3, 'Lenovo', 1, '2020-03-07 21:57:29');


#
# TABLE STRUCTURE FOR: prwtn_perangkat
#

DROP TABLE IF EXISTS `prwtn_perangkat`;

CREATE TABLE `prwtn_perangkat` (
  `perangkat_id` int(11) NOT NULL AUTO_INCREMENT,
  `perangkat_nama` varchar(255) DEFAULT NULL,
  `perangkat_merkid` int(11) DEFAULT NULL,
  `perangkat_suplierid` int(11) DEFAULT NULL,
  `perangkat_keterangan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `perangkat_tglbeli` date DEFAULT NULL,
  `perangkat_userid` int(11) DEFAULT NULL,
  `perangkat_foto` text DEFAULT NULL,
  `perangkat_jumlah` int(255) DEFAULT NULL,
  PRIMARY KEY (`perangkat_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `prwtn_perangkat` (`perangkat_id`, `perangkat_nama`, `perangkat_merkid`, `perangkat_suplierid`, `perangkat_keterangan`, `created_at`, `perangkat_tglbeli`, `perangkat_userid`, `perangkat_foto`, `perangkat_jumlah`) VALUES (7, 'All In One', 1, 1, '-', '2020-03-08 17:07:52', '2020-03-02', 1, NULL, 50);
INSERT INTO `prwtn_perangkat` (`perangkat_id`, `perangkat_nama`, `perangkat_merkid`, `perangkat_suplierid`, `perangkat_keterangan`, `created_at`, `perangkat_tglbeli`, `perangkat_userid`, `perangkat_foto`, `perangkat_jumlah`) VALUES (8, 'Printer LBP6030', 2, 1, '-', '2020-03-09 10:34:58', '2020-03-09', 1, NULL, 50);


#
# TABLE STRUCTURE FOR: prwtn_perawatan
#

DROP TABLE IF EXISTS `prwtn_perawatan`;

CREATE TABLE `prwtn_perawatan` (
  `perawatan_id` int(11) NOT NULL AUTO_INCREMENT,
  `perawatan_perangkatid` int(11) DEFAULT NULL,
  `perawatan_lokasiid` int(11) DEFAULT NULL,
  `perawatan_catatan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`perawatan_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `prwtn_perawatan` (`perawatan_id`, `perawatan_perangkatid`, `perawatan_lokasiid`, `perawatan_catatan`, `created_at`) VALUES (1, 7, 2, 'Kabel hilang\r\nKotor Perlu Diberishkan -> ok', '2020-03-08 21:27:33');
INSERT INTO `prwtn_perawatan` (`perawatan_id`, `perawatan_perangkatid`, `perawatan_lokasiid`, `perawatan_catatan`, `created_at`) VALUES (2, 8, 2, '-', '2020-03-09 16:01:23');


#
# TABLE STRUCTURE FOR: prwtn_perawatandetail
#

DROP TABLE IF EXISTS `prwtn_perawatandetail`;

CREATE TABLE `prwtn_perawatandetail` (
  `perawatandetail_id` int(11) NOT NULL AUTO_INCREMENT,
  `perawatandetail_perawatanid` int(11) DEFAULT NULL,
  `perawatandetail_tindakanid` int(11) DEFAULT NULL,
  `perawatandetail_catatan` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`perawatandetail_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `prwtn_perawatandetail` (`perawatandetail_id`, `perawatandetail_perawatanid`, `perawatandetail_tindakanid`, `perawatandetail_catatan`, `created_at`) VALUES (8, 2, 8, 'dwad', '2020-03-09 16:17:08');
INSERT INTO `prwtn_perawatandetail` (`perawatandetail_id`, `perawatandetail_perawatanid`, `perawatandetail_tindakanid`, `perawatandetail_catatan`, `created_at`) VALUES (9, 2, 8, '-', '2020-03-09 16:23:48');
INSERT INTO `prwtn_perawatandetail` (`perawatandetail_id`, `perawatandetail_perawatanid`, `perawatandetail_tindakanid`, `perawatandetail_catatan`, `created_at`) VALUES (10, 1, 5, '-', '2020-03-09 16:24:28');


#
# TABLE STRUCTURE FOR: prwtn_suplier
#

DROP TABLE IF EXISTS `prwtn_suplier`;

CREATE TABLE `prwtn_suplier` (
  `suplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `suplier_nama` varchar(255) DEFAULT NULL,
  `suplier_nomorhp` varchar(15) DEFAULT NULL,
  `suplier_alamat` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`suplier_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `prwtn_suplier` (`suplier_id`, `suplier_nama`, `suplier_nomorhp`, `suplier_alamat`, `created_at`) VALUES (1, 'Bakoel Komputer', '2147483647', 'Jl kenari no 56 yogyakarta', '2020-03-07 21:46:35');
INSERT INTO `prwtn_suplier` (`suplier_id`, `suplier_nama`, `suplier_nomorhp`, `suplier_alamat`, `created_at`) VALUES (2, 'Megalibs', '08676876768', 'Jalan Bantul km 67', '2020-03-07 21:52:22');
INSERT INTO `prwtn_suplier` (`suplier_id`, `suplier_nama`, `suplier_nomorhp`, `suplier_alamat`, `created_at`) VALUES (3, 'array motion', '085725818424', 'Bantul', '2020-03-07 21:52:29');


#
# TABLE STRUCTURE FOR: prwtn_tindakan
#

DROP TABLE IF EXISTS `prwtn_tindakan`;

CREATE TABLE `prwtn_tindakan` (
  `tindakan_id` int(11) NOT NULL AUTO_INCREMENT,
  `tindakan_nama` varchar(255) DEFAULT NULL,
  `tindakan_kategoriid` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`tindakan_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `prwtn_tindakan` (`tindakan_id`, `tindakan_nama`, `tindakan_kategoriid`, `created_at`) VALUES (3, 'memberishkan cache browser', 1, '2020-03-07 09:52:08');
INSERT INTO `prwtn_tindakan` (`tindakan_id`, `tindakan_nama`, `tindakan_kategoriid`, `created_at`) VALUES (4, 'Update Antivirus', 1, '2020-03-07 09:52:21');
INSERT INTO `prwtn_tindakan` (`tindakan_id`, `tindakan_nama`, `tindakan_kategoriid`, `created_at`) VALUES (5, 'Cek Koneksi Internet', 1, '2020-03-07 09:52:43');
INSERT INTO `prwtn_tindakan` (`tindakan_id`, `tindakan_nama`, `tindakan_kategoriid`, `created_at`) VALUES (6, 'Cek Speedtest', 1, '2020-03-07 09:53:07');
INSERT INTO `prwtn_tindakan` (`tindakan_id`, `tindakan_nama`, `tindakan_kategoriid`, `created_at`) VALUES (7, 'Defrag Hardisk', 2, '2020-03-07 10:14:19');
INSERT INTO `prwtn_tindakan` (`tindakan_id`, `tindakan_nama`, `tindakan_kategoriid`, `created_at`) VALUES (8, 'Crack Windows dan office', 2, '2020-03-07 10:17:20');
INSERT INTO `prwtn_tindakan` (`tindakan_id`, `tindakan_nama`, `tindakan_kategoriid`, `created_at`) VALUES (9, 'Install ulang windows', 5, '2020-03-07 19:14:15');
INSERT INTO `prwtn_tindakan` (`tindakan_id`, `tindakan_nama`, `tindakan_kategoriid`, `created_at`) VALUES (10, 'Install Antivirus', 2, '2020-03-09 11:31:40');
INSERT INTO `prwtn_tindakan` (`tindakan_id`, `tindakan_nama`, `tindakan_kategoriid`, `created_at`) VALUES (11, 'pasang konektor rj45', 2, '2020-03-09 11:31:56');


#
# TABLE STRUCTURE FOR: ptwtn_pengecekkan
#

DROP TABLE IF EXISTS `ptwtn_pengecekkan`;

CREATE TABLE `ptwtn_pengecekkan` (
  `pengecekkan_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengecekkan_perangkatid` int(11) DEFAULT NULL,
  `pengecekkan_cheklistid` int(11) DEFAULT NULL,
  `pengecekkan_tindakanid` int(11) DEFAULT NULL,
  `created_at` time DEFAULT NULL,
  `pengecekkan_userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`pengecekkan_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# TABLE STRUCTURE FOR: referensi
#

DROP TABLE IF EXISTS `referensi`;

CREATE TABLE `referensi` (
  `referensi_id` int(11) NOT NULL AUTO_INCREMENT,
  `referensi_judul` varchar(255) DEFAULT NULL,
  `referensi_keterangan` text DEFAULT NULL,
  `referensi_file` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`referensi_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `referensi` (`referensi_id`, `referensi_judul`, `referensi_keterangan`, `referensi_file`, `created_at`) VALUES (1, 'Belajar Koding', 'Kumpulan tutorial belajar koding', '6d013a34de33b3aaf8b49ea3421756a1.pdf', '2020-02-15 14:19:38');


#
# TABLE STRUCTURE FOR: reg_kegiatan
#

DROP TABLE IF EXISTS `reg_kegiatan`;

CREATE TABLE `reg_kegiatan` (
  `kegiatan_id` int(11) NOT NULL AUTO_INCREMENT,
  `kegiatan_nama` varchar(255) DEFAULT NULL,
  `kegiatan_tanggal` date DEFAULT NULL,
  `kegiatan_tempat` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`kegiatan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO `reg_kegiatan` (`kegiatan_id`, `kegiatan_nama`, `kegiatan_tanggal`, `kegiatan_tempat`, `created_at`) VALUES (1, 'Rapat Rutin', '2020-03-25', 'kelurahan', '2020-03-27 21:41:37');
INSERT INTO `reg_kegiatan` (`kegiatan_id`, `kegiatan_nama`, `kegiatan_tanggal`, `kegiatan_tempat`, `created_at`) VALUES (3, 'kegiata workshop Digital Markating', '2020-03-26', 'hotel aston, yogyakarta', '2020-03-27 21:41:37');
INSERT INTO `reg_kegiatan` (`kegiatan_id`, `kegiatan_nama`, `kegiatan_tanggal`, `kegiatan_tempat`, `created_at`) VALUES (4, 'seminar akreditasi', '2020-03-31', 'bantul', '2020-03-27 21:41:37');


#
# TABLE STRUCTURE FOR: reg_registrasi
#

DROP TABLE IF EXISTS `reg_registrasi`;

CREATE TABLE `reg_registrasi` (
  `reg_id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_kegiatanid` int(11) DEFAULT NULL,
  `reg_nama` varchar(255) DEFAULT NULL,
  `reg_email` varchar(50) DEFAULT NULL,
  `reg_notlp` varchar(15) DEFAULT NULL,
  `reg_alamat` text DEFAULT NULL,
  `reg_foto` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`reg_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `reg_registrasi` (`reg_id`, `reg_kegiatanid`, `reg_nama`, `reg_email`, `reg_notlp`, `reg_alamat`, `reg_foto`, `created_at`) VALUES (1, 1, 'duwik', 'haryanto.duwi@gmail,.com', '085725818424', 'pedak wijirejo pandak bantul', NULL, '2020-03-26 11:02:02');
INSERT INTO `reg_registrasi` (`reg_id`, `reg_kegiatanid`, `reg_nama`, `reg_email`, `reg_notlp`, `reg_alamat`, `reg_foto`, `created_at`) VALUES (2, 1, 'rusmita sari', 'rusmita@gmail.com', '085725818424', 'jakal km 5.6', NULL, '2020-03-04 11:02:03');
INSERT INTO `reg_registrasi` (`reg_id`, `reg_kegiatanid`, `reg_nama`, `reg_email`, `reg_notlp`, `reg_alamat`, `reg_foto`, `created_at`) VALUES (3, 2, 'iksan', 'haryantoduwi@gmail.com', '08573565656', 'bantul', NULL, '2020-03-27 11:02:04');
INSERT INTO `reg_registrasi` (`reg_id`, `reg_kegiatanid`, `reg_nama`, `reg_email`, `reg_notlp`, `reg_alamat`, `reg_foto`, `created_at`) VALUES (6, 4, 'sintia', 'sintia@gmail.com', '085725818424', 'bantul', NULL, '2020-03-27 12:46:30');
INSERT INTO `reg_registrasi` (`reg_id`, `reg_kegiatanid`, `reg_nama`, `reg_email`, `reg_notlp`, `reg_alamat`, `reg_foto`, `created_at`) VALUES (7, 4, 'diane', 'diane@gmail.com', '085725818424', 'bantul', NULL, '2020-03-27 13:21:48');
INSERT INTO `reg_registrasi` (`reg_id`, `reg_kegiatanid`, `reg_nama`, `reg_email`, `reg_notlp`, `reg_alamat`, `reg_foto`, `created_at`) VALUES (8, 4, 'nisa', 'nisa@gmail.com', '085725818424', 'bantul', NULL, '2020-03-25 13:38:38');
INSERT INTO `reg_registrasi` (`reg_id`, `reg_kegiatanid`, `reg_nama`, `reg_email`, `reg_notlp`, `reg_alamat`, `reg_foto`, `created_at`) VALUES (10, 4, 'dani', 'dani@gmail,com', '085725818424', 'bantul', NULL, '2020-03-25 13:43:00');
INSERT INTO `reg_registrasi` (`reg_id`, `reg_kegiatanid`, `reg_nama`, `reg_email`, `reg_notlp`, `reg_alamat`, `reg_foto`, `created_at`) VALUES (19, 4, 'duwi haryanto', 'haryanto.duwi@gmail.com', '085725818424', 'bantul', NULL, '2020-03-27 20:20:42');


#
# TABLE STRUCTURE FOR: rpt_notulen
#

DROP TABLE IF EXISTS `rpt_notulen`;

CREATE TABLE `rpt_notulen` (
  `notulen_id` int(11) NOT NULL AUTO_INCREMENT,
  `notulen_judul` text DEFAULT NULL,
  `notulen_undanganid` int(11) DEFAULT NULL,
  `notulen_pembahasan` text DEFAULT NULL,
  `notulen_hasil` text DEFAULT NULL,
  `notulen_status` varchar(3) DEFAULT NULL,
  `notulen_userid` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `notulen_tglpembahasan` datetime DEFAULT NULL,
  `notulen_berkas` text DEFAULT NULL,
  PRIMARY KEY (`notulen_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `rpt_notulen` (`notulen_id`, `notulen_judul`, `notulen_undanganid`, `notulen_pembahasan`, `notulen_hasil`, `notulen_status`, `notulen_userid`, `created_at`, `notulen_tglpembahasan`, `notulen_berkas`) VALUES (3, 'Hello world', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p><br></p>', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p><img data-filename=\"Screenshot_4.png\"><br></p>', '2', NULL, '2020-02-26 13:47:23', '2020-02-07 00:00:00', 'd8693c37615a39b32273f58d9d6ed548.pdf');
INSERT INTO `rpt_notulen` (`notulen_id`, `notulen_judul`, `notulen_undanganid`, `notulen_pembahasan`, `notulen_hasil`, `notulen_status`, `notulen_userid`, `created_at`, `notulen_tglpembahasan`, `notulen_berkas`) VALUES (4, 'Hello', NULL, '<p><img k=\" data-filename=\"><b>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</b><br>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p><img xss=\"removed\" data-filename=\"Screenshot_4.png\"><br></p>', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<img data-filename=\"Screenshot_3.png\"><img xss=removed data-filename=\"Screenshot_4.png\"><br></p>', '2', NULL, '2020-02-26 13:46:32', '2020-02-06 00:00:00', 'fe558528774812b5b1c49ea1465ad806.pdf');
INSERT INTO `rpt_notulen` (`notulen_id`, `notulen_judul`, `notulen_undanganid`, `notulen_pembahasan`, `notulen_hasil`, `notulen_status`, `notulen_userid`, `created_at`, `notulen_tglpembahasan`, `notulen_berkas`) VALUES (5, 'dawd', NULL, '<p>dawdawdaw<img data-filename=\"bandwidth-broadband-cable-wires-2881232.jpg\"><br></p>', '<p><img xss=removed data-filename=\"backendwebsite.png\"><br></p>', '1', NULL, '2020-02-26 11:46:58', '2020-02-19 00:00:00', NULL);


#
# TABLE STRUCTURE FOR: rpt_presensi
#

DROP TABLE IF EXISTS `rpt_presensi`;

CREATE TABLE `rpt_presensi` (
  `presensi_id` int(11) NOT NULL AUTO_INCREMENT,
  `presensi_undanganid` int(11) DEFAULT NULL,
  `presensi_userid` int(11) DEFAULT NULL,
  `created_at` time NOT NULL,
  PRIMARY KEY (`presensi_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# TABLE STRUCTURE FOR: rpt_tempat
#

DROP TABLE IF EXISTS `rpt_tempat`;

CREATE TABLE `rpt_tempat` (
  `tempat_id` int(11) NOT NULL AUTO_INCREMENT,
  `tempat_nama` varchar(255) DEFAULT NULL,
  `tempat_dayatampung` int(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`tempat_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `rpt_tempat` (`tempat_id`, `tempat_nama`, `tempat_dayatampung`, `created_at`) VALUES (1, 'Aula 1', 500, '2020-02-24 18:57:29');
INSERT INTO `rpt_tempat` (`tempat_id`, `tempat_nama`, `tempat_dayatampung`, `created_at`) VALUES (2, 'Aula 2', 250, '2020-02-24 18:57:37');
INSERT INTO `rpt_tempat` (`tempat_id`, `tempat_nama`, `tempat_dayatampung`, `created_at`) VALUES (3, 'Ruang Meeting 1', 30, '2020-02-24 18:57:57');
INSERT INTO `rpt_tempat` (`tempat_id`, `tempat_nama`, `tempat_dayatampung`, `created_at`) VALUES (4, 'Ruang Meeting 2', 15, '2020-02-24 18:58:06');


#
# TABLE STRUCTURE FOR: rpt_undangan
#

DROP TABLE IF EXISTS `rpt_undangan`;

CREATE TABLE `rpt_undangan` (
  `undangan_id` int(11) NOT NULL AUTO_INCREMENT,
  `undangan_userid` int(11) DEFAULT NULL,
  `undangan_nomor` varchar(100) DEFAULT NULL,
  `undangan_acara` text DEFAULT NULL,
  `undangan_jam` timestamp NULL DEFAULT NULL,
  `undangan_tempat` int(11) DEFAULT NULL,
  `undangan_peserta` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `undangan_file` text DEFAULT NULL,
  PRIMARY KEY (`undangan_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `rpt_undangan` (`undangan_id`, `undangan_userid`, `undangan_nomor`, `undangan_acara`, `undangan_jam`, `undangan_tempat`, `undangan_peserta`, `created_at`, `undangan_file`) VALUES (10, 1, '02.005/ARM/II/2020', 'SISTEM ERM TAHAP 2', '2020-02-02 09:02:00', 4, NULL, NULL, NULL);
INSERT INTO `rpt_undangan` (`undangan_id`, `undangan_userid`, `undangan_nomor`, `undangan_acara`, `undangan_jam`, `undangan_tempat`, `undangan_peserta`, `created_at`, `undangan_file`) VALUES (11, 1, '02.006/ARM/II/2020', 'Rapat Aplikasi Chating (Pengumpulan Data)', '2020-02-26 10:02:00', 1, NULL, NULL, NULL);
INSERT INTO `rpt_undangan` (`undangan_id`, `undangan_userid`, `undangan_nomor`, `undangan_acara`, `undangan_jam`, `undangan_tempat`, `undangan_peserta`, `created_at`, `undangan_file`) VALUES (12, 1, '02.007/ARM/II/2020', 'Pembahasan sistem pendaftaran online', '2020-02-28 09:02:00', 3, NULL, NULL, NULL);
INSERT INTO `rpt_undangan` (`undangan_id`, `undangan_userid`, `undangan_nomor`, `undangan_acara`, `undangan_jam`, `undangan_tempat`, `undangan_peserta`, `created_at`, `undangan_file`) VALUES (13, 1, '02.008/ARM/II/2020', 'Rapat rajelas', '2020-02-27 09:02:00', 1, NULL, NULL, NULL);


#
# TABLE STRUCTURE FOR: setting
#

DROP TABLE IF EXISTS `setting`;

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_namasistem` varchar(255) DEFAULT NULL,
  `setting_namatempat` text DEFAULT NULL,
  `setting_alamat` text DEFAULT NULL,
  `setting_email` varchar(100) DEFAULT NULL,
  `setting_notlp` varchar(20) DEFAULT NULL,
  `setting_logo` text DEFAULT NULL,
  `setting_namapemilik` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`setting_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `setting` (`setting_id`, `setting_namasistem`, `setting_namatempat`, `setting_alamat`, `setting_email`, `setting_notlp`, `setting_logo`, `setting_namapemilik`) VALUES (1, 'Dashboard', 'Array Motion', 'Jl.bantul Km 10', 'haryanto.duwi@gmail.com', '085725818424', 'd17eecb86d82aadff65edf6a6e062697.png', 'Duwi haryanto');


#
# TABLE STRUCTURE FOR: user
#

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_username` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `user_password` text CHARACTER SET latin1 DEFAULT NULL,
  `user_nama` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `user_level` int(5) DEFAULT NULL,
  `user_terdaftar` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_email` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `user_status` bit(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_foto` text DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

INSERT INTO `user` (`user_id`, `user_username`, `user_password`, `user_nama`, `user_level`, `user_terdaftar`, `user_email`, `user_status`, `created_at`, `user_foto`) VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Duwi Haryanto', 1, '2018-09-28 17:00:00', 'Admin@gmail.com', '1', '0000-00-00 00:00:00', '0f399c2d6fa3cc467c01736f16eb0334.jpg');
INSERT INTO `user` (`user_id`, `user_username`, `user_password`, `user_nama`, `user_level`, `user_terdaftar`, `user_email`, `user_status`, `created_at`, `user_foto`) VALUES (3, 'haryanto', '8e7173cb9b869db115f77688e70b8ff7', 'haryanto duwi', 3, '2018-10-20 17:00:00', 'admin@gmail.com', '1', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`user_id`, `user_username`, `user_password`, `user_nama`, `user_level`, `user_terdaftar`, `user_email`, `user_status`, `created_at`, `user_foto`) VALUES (12, 'mita', 'bae3d929b274a4cd35c38fe92f059f1a', 'mita', 1, '2019-12-30 12:38:01', 'mitaduwi@gmail.com', '1', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`user_id`, `user_username`, `user_password`, `user_nama`, `user_level`, `user_terdaftar`, `user_email`, `user_status`, `created_at`, `user_foto`) VALUES (29, 'duwi', '3155e562d357a7c301d2ccafadb05e17', 'duwi haryanto', 10, '2019-12-30 14:14:49', 'haryanto.duwi@gmail.com', '1', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`user_id`, `user_username`, `user_password`, `user_nama`, `user_level`, `user_terdaftar`, `user_email`, `user_status`, `created_at`, `user_foto`) VALUES (35, 'mika', '07af613eea059030daaed3bde1fd1ce7', 'mika', 1, '2019-12-31 07:45:32', 'mika@gmail.com', '1', '2020-01-02 10:15:30', NULL);
INSERT INTO `user` (`user_id`, `user_username`, `user_password`, `user_nama`, `user_level`, `user_terdaftar`, `user_email`, `user_status`, `created_at`, `user_foto`) VALUES (36, 'hanabi', 'd43fcce13f4c88fd28c279cc2859f579', 'hanabi', 3, '2020-01-06 17:23:31', 'hanabi@gmail.com', '1', '2020-01-06 17:23:31', NULL);
INSERT INTO `user` (`user_id`, `user_username`, `user_password`, `user_nama`, `user_level`, `user_terdaftar`, `user_email`, `user_status`, `created_at`, `user_foto`) VALUES (37, 'manajer', '69b731ea8f289cf16a192ce78a37b4f0', 'manajer', 11, '2020-03-27 21:51:47', 'manajer@gmail.com', NULL, '2020-03-27 21:51:47', NULL);


