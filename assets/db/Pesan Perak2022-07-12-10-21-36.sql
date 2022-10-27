#
# TABLE STRUCTURE FOR: agama
#

DROP TABLE IF EXISTS `agama`;

CREATE TABLE `agama` (
  `id_agama` int(10) NOT NULL AUTO_INCREMENT,
  `nama_agama` varchar(50) NOT NULL,
  PRIMARY KEY (`id_agama`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

INSERT INTO `agama` (`id_agama`, `nama_agama`) VALUES (1, 'Islam');
INSERT INTO `agama` (`id_agama`, `nama_agama`) VALUES (2, 'Kristen');
INSERT INTO `agama` (`id_agama`, `nama_agama`) VALUES (3, 'Katholik');
INSERT INTO `agama` (`id_agama`, `nama_agama`) VALUES (4, 'Hindu');
INSERT INTO `agama` (`id_agama`, `nama_agama`) VALUES (5, 'Buddha');
INSERT INTO `agama` (`id_agama`, `nama_agama`) VALUES (6, 'Konghuchu');


#
# TABLE STRUCTURE FOR: desa
#

DROP TABLE IF EXISTS `desa`;

CREATE TABLE `desa` (
  `id_desa` int(11) NOT NULL AUTO_INCREMENT,
  `id_kecamatan` int(11) DEFAULT NULL,
  `nama_desa` varchar(255) DEFAULT NULL,
  `col1` text NOT NULL,
  `col2` text NOT NULL,
  `col3` text NOT NULL,
  `col4` text NOT NULL,
  `col5` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `isactive` int(2) DEFAULT 1,
  PRIMARY KEY (`id_desa`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (21, 16, 'Temanggung I', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (22, 16, 'Temanggung II', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (23, 16, ' Butuh', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (24, 16, 'Jampiroso', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (25, 16, 'Jampirejo', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (26, 16, 'Kertosari', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (27, 16, 'Banyuurip', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (28, 16, 'Kowangan', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (29, 16, 'Jurang', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (30, 16, 'Tlogorejo', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (31, 16, 'Kebonsari', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (32, 16, 'Manding', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (33, 16, 'Mungseng', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (34, 16, 'Purworejo', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (35, 16, 'Giyanti', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (36, 16, 'Madureso', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (37, 16, 'Sidorejo', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (38, 16, 'Walitelon Utara', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (39, 16, 'Walitelon Selatan', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (40, 13, 'Parakan Wetan', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (41, 13, 'Parakan Kauman', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (42, 12, 'Manggong', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (43, 11, 'Kranggan', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (44, 3, 'Bulu', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (45, 3, 'Tegalurung', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (46, 3, 'Campursari', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (47, 3, 'Gandurejo', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (48, 3, 'Tegalrejo', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (49, 3, 'Gondosuli', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (50, 3, 'Ngimbrang', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (51, 3, 'Putat', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (52, 3, 'Danupayan', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (53, 3, 'Mondoretno', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (54, 3, 'Pandemulyo', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (55, 3, 'Pasuruhan', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (56, 3, 'Pakurejo', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (57, 3, 'Malangsari', '', '', '', '', '13', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (58, 3, 'Pagergunung', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (59, 3, 'Wonosari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (60, 3, 'Bansari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (61, 3, 'Wonotirto', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (62, 3, 'Pengilon', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (63, 17, 'Tembarak', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (64, 17, 'Menggoro', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (65, 17, 'Purwodadi', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (66, 17, 'Wonokerso', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (67, 17, 'Kemloko', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (68, 17, 'Gandu', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (69, 17, 'Botoputih', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (70, 17, 'Tawangsari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (71, 17, 'Greges', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (72, 17, 'Krajan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (73, 17, 'Jragan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (74, 17, 'Drono', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (75, 17, 'Banaran', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (76, 16, 'Joho', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (77, 16, 'Guntur', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (78, 16, 'Lungge', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (79, 16, 'Mudal', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (80, 16, 'Gilingsari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (81, 16, 'Nampirejo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (82, 14, 'Pringsurat', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (83, 14, 'Kebumen', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (84, 14, 'Soropadan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (85, 14, 'Kupen', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (86, 14, 'Karangwuni', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (87, 14, 'Gowak', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (88, 14, 'Rejosari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (89, 14, 'Ngipik', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (90, 14, 'Pingit', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (91, 14, 'Klepu', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (92, 14, 'Soborejo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (93, 14, 'Nglorog', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (94, 14, 'Pagergunung', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (95, 14, 'Wonokerso', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (96, 7, 'Kaloran', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (97, 7, 'Tlogowungu', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (98, 7, 'Gandon', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (99, 7, 'Tleter', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (100, 7, 'Getas', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (101, 7, 'Kalimanggis', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (102, 7, 'Tempuran', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (103, 7, 'Kemiri', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (104, 7, 'Geblog', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (105, 7, 'Tegowanuh', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (106, 7, 'Keblukan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (107, 7, 'Tepusen', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (108, 7, 'Gandulan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (109, 7, 'Kwarakan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (110, 8, 'Kandangan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (111, 8, 'Baledu', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (112, 8, 'Caruban', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (113, 8, 'Wadas', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (114, 8, 'Samiranan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (115, 8, 'Ngemplak', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (116, 8, 'Kembangsari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (117, 8, 'Gesing', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (118, 8, 'Margolelo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (119, 8, 'Blimbing', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (120, 8, 'Kedungumpul', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (121, 8, 'Rowo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (122, 8, 'Malebo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (123, 8, 'Tlogopucang', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (124, 8, 'Kedawung', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (125, 8, 'Banjarsari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (126, 9, 'Kedu', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (127, 9, 'Candimulyo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (128, 9, 'Salamsari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (129, 9, 'Danurejo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (130, 9, 'Mojotengah', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (131, 9, 'Karangtejo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (132, 9, 'Mergowati', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (133, 9, 'Kutoanyar', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (134, 9, 'Kundisari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (135, 9, 'Ngadimulyo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (136, 9, 'Gondangwayang', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (137, 9, 'Bojonegoro', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (138, 9, 'Bandunggede', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (139, 9, 'Tegalsari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (140, 13, 'Campursalam', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (141, 13, 'Wanutengah', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (142, 13, 'Nglondong', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (143, 13, 'Bagusan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (144, 13, 'Dangkel', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (145, 13, 'Mandisari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (146, 13, 'Tegalroso', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (147, 13, 'Traji', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (148, 13, 'Watukumpul', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (149, 13, 'Ringinanom', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (150, 13, 'Depokharjo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (151, 13, 'Caturanom', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (152, 13, 'Glapansari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (153, 13, 'Sunggingsari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (154, 12, 'Ngadirejo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (155, 12, 'Gondangwinangun', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (156, 12, 'Gandu Wetan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (157, 12, 'Ngaren', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (158, 12, 'Mangunsari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (159, 12, 'Dlimoyo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (160, 12, 'Purbosari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (161, 12, 'Campursari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (162, 12, 'Tegalrejo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (163, 12, 'Giripurno', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (164, 12, 'Katekan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (165, 12, 'Banjarsari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (166, 12, 'Medari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (167, 12, 'Karanggedong', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (168, 12, 'Munggangsari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (169, 12, 'Kataan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (170, 12, 'Petirejo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (171, 12, 'Pringapus', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (172, 12, 'Gejagan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (173, 6, 'Jumo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (174, 6, 'Jamusan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (175, 6, 'Kertosari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (176, 6, 'Giyono', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (177, 6, 'Gununggempol', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (178, 6, 'Padureso', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (179, 6, 'Barang', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (180, 6, 'Jombor', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (181, 6, 'Ketitang', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (182, 6, 'Morobongo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (183, 6, 'Karangtejo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (184, 6, 'Sukomarto', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (185, 6, 'Gedongsari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (186, 19, 'Tretep', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (187, 19, 'Donorojo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (188, 19, 'Nglarangan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (189, 19, 'Sigedong', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (190, 19, 'Bonjor', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (191, 19, 'Tempelsari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (192, 19, 'Campurejo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (193, 19, 'Bojong', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (194, 19, 'Bendungan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (195, 19, 'Simpar', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (196, 19, 'Tlogo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (197, 4, 'Candiroto', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (198, 4, 'Lempuyang', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (199, 4, 'Canggal', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (200, 4, 'Kentengsari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (201, 4, 'Ngabeyan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (202, 4, 'Bantir', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (203, 4, 'Krawitan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (204, 4, 'Muntung', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (205, 4, 'Batursari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (206, 4, 'Mento', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (207, 4, 'Muneng', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (208, 4, 'Plosogaden', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (209, 4, 'Sidoharjo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (210, 4, 'Gunungpayung', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (211, 11, 'Badran', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (212, 11, 'Bengkal', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (213, 11, 'Pare', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (214, 11, 'Nguwet', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (215, 11, 'Ngropoh', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (216, 11, 'Pendowo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (217, 11, 'Sanggrahan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (218, 11, 'Klepu', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (219, 11, 'Kemloko', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (220, 11, 'Gentan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (221, 11, 'Kramat', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (222, 11, 'Purwosari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (223, 18, 'Tlogomulyo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (224, 18, 'Candisari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (225, 18, 'Sriwungu', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (226, 18, 'Langgeng', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (227, 18, 'Tanjungsari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (228, 18, 'Losari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (229, 18, 'Balerejo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (230, 18, 'Kerokan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (231, 18, 'Legoksari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (232, 18, 'Tlilir', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (233, 18, 'Gedegan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (234, 18, 'Pagersari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (235, 15, 'Selopampang', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (236, 15, 'Tanggulanom', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (237, 15, 'Jetis', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (238, 15, 'Salamrejo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (239, 15, 'Ngaditirto', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (240, 15, 'Bulan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (241, 15, 'Kacepit', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (242, 15, 'Gambasan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (243, 15, 'Bumiayu', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (244, 15, 'Kebonagung', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (245, 15, 'Bagusan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (246, 15, 'Plumbon', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (247, 1, 'Bansari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (248, 1, 'Mojosari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (249, 1, 'Rejosari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (250, 1, 'Gunungsari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (251, 1, 'Balesari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (252, 1, 'Purborejo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (253, 1, 'Tlogowero', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (254, 1, 'Mranggen Kidul', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (255, 1, 'Mranggen Tengah', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (256, 1, 'Candisari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (257, 1, 'Campuranom', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (258, 1, 'Gentingsari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (259, 1, 'Tanurejo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (260, 10, 'Kledung', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (261, 10, 'Kalirejo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (262, 10, 'Paponan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (263, 10, 'Jeketro', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (264, 10, 'Kwadungan Gunung', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (265, 10, 'Kwadungan Jurang', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (266, 10, 'Tlahab', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (267, 10, 'Petarangan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (268, 10, 'Canggal', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (269, 10, 'Jambu', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (270, 10, 'Kruwisan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (271, 10, 'Batursari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (272, 10, 'Tuksari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (273, 2, 'Bejen', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (274, 2, 'Banjarsari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (275, 2, 'Jlegong', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (276, 2, 'Prangkokan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (277, 2, 'Lowungu', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (278, 2, 'Larangan Luwok', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (279, 2, 'Congkrang', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (280, 2, 'Kebondalem', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (281, 2, 'Kemuning', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (282, 2, 'Selosabrang', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (283, 2, 'Tanjungsari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (284, 2, 'Petung', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (285, 2, 'Duren', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (286, 2, 'Ngaliyan', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (287, 20, 'Wonoboyo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (288, 20, 'Pateken', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (289, 20, 'Pitrosari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (290, 20, 'Purwosari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (291, 20, 'Kebonsari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (292, 20, 'Semen', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (293, 20, 'Tening', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (294, 20, 'Wonocoyo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (295, 20, 'Pesantren', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (296, 20, 'Rejosari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (297, 20, 'Tawangsari', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (298, 20, 'Cemoro', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (299, 20, 'Wates', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (300, 5, 'Gemawang', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (301, 5, 'Muncar', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (302, 5, 'Kemiriombo', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (303, 5, 'Ngadisepi', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (304, 5, 'Krempong', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (305, 5, 'Sucen', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (306, 5, 'Karangseneng', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (307, 5, 'Banaran', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (308, 5, 'Kalibanger', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);
INSERT INTO `desa` (`id_desa`, `id_kecamatan`, `nama_desa`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (309, 5, 'Jambon', '', '', '', '', 'DS', NULL, NULL, NULL, NULL, 1);


#
# TABLE STRUCTURE FOR: flag
#

DROP TABLE IF EXISTS `flag`;

CREATE TABLE `flag` (
  `id_flag` int(10) NOT NULL AUTO_INCREMENT,
  `nama_flag` varchar(50) NOT NULL,
  PRIMARY KEY (`id_flag`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

INSERT INTO `flag` (`id_flag`, `nama_flag`) VALUES (1, 'Pending');
INSERT INTO `flag` (`id_flag`, `nama_flag`) VALUES (2, 'Ditindaklanjuti');
INSERT INTO `flag` (`id_flag`, `nama_flag`) VALUES (3, 'Selesai');
INSERT INTO `flag` (`id_flag`, `nama_flag`) VALUES (4, 'Selesai dan Telah Dimonitoring');


#
# TABLE STRUCTURE FOR: kategori
#

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `id_kat` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `for_modul` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_kat`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

INSERT INTO `kategori` (`id_kat`, `cat_name`, `note`, `for_modul`) VALUES (2, 'Kategori b', '-', '-');
INSERT INTO `kategori` (`id_kat`, `cat_name`, `note`, `for_modul`) VALUES (4, 'Desa', '-', 'jenis_lokasi');
INSERT INTO `kategori` (`id_kat`, `cat_name`, `note`, `for_modul`) VALUES (5, 'Radio', '-', 'jenis_perangkat');
INSERT INTO `kategori` (`id_kat`, `cat_name`, `note`, `for_modul`) VALUES (6, 'Kecamatan', '', 'jenis_lokasi');
INSERT INTO `kategori` (`id_kat`, `cat_name`, `note`, `for_modul`) VALUES (7, 'OPD', '', 'jenis_lokasi');
INSERT INTO `kategori` (`id_kat`, `cat_name`, `note`, `for_modul`) VALUES (8, 'PDE', '', 'jenis_perangkat');
INSERT INTO `kategori` (`id_kat`, `cat_name`, `note`, `for_modul`) VALUES (9, 'Access Point', '', 'jenis_perangkat');
INSERT INTO `kategori` (`id_kat`, `cat_name`, `note`, `for_modul`) VALUES (10, 'Router', '', 'jenis_perangkat');
INSERT INTO `kategori` (`id_kat`, `cat_name`, `note`, `for_modul`) VALUES (11, 'Repeater Bojong', '', 'jenis_perangkat');


#
# TABLE STRUCTURE FOR: kecamatan
#

DROP TABLE IF EXISTS `kecamatan`;

CREATE TABLE `kecamatan` (
  `id_kecamatan` int(20) NOT NULL AUTO_INCREMENT,
  `id_kabupaten` int(11) DEFAULT NULL,
  `nama_kecamatan` varchar(255) DEFAULT NULL,
  `col1` text DEFAULT NULL,
  `col2` text DEFAULT NULL,
  `col3` text DEFAULT NULL,
  `col4` text DEFAULT NULL,
  `col5` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `isactive` int(2) DEFAULT 1,
  PRIMARY KEY (`id_kecamatan`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

INSERT INTO `kecamatan` (`id_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (1, 3, 'Bansari', '', '', '', '', 'KC', '2019-05-20 08:53:52', 'anes nailufar', '2019-05-20 08:54:04', 'anes nailufar', 1);
INSERT INTO `kecamatan` (`id_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (2, 3, 'Bejen', '', '', '', '', 'KC', NULL, NULL, NULL, NULL, 1);
INSERT INTO `kecamatan` (`id_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (3, 3, 'Bulu', '', '', '', '', 'KC', NULL, NULL, NULL, NULL, 1);
INSERT INTO `kecamatan` (`id_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (4, 3, 'Candiroto', '', '', '', '', 'KC', NULL, NULL, NULL, NULL, 1);
INSERT INTO `kecamatan` (`id_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (5, 3, 'Gemawang', '', '', '', '', 'KC', NULL, NULL, NULL, NULL, 1);
INSERT INTO `kecamatan` (`id_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (6, 3, 'Jumo', '', '', '', '', 'KC', NULL, NULL, NULL, NULL, 1);
INSERT INTO `kecamatan` (`id_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (7, 3, 'Kaloran', '', '', '', '', 'KC', NULL, NULL, NULL, NULL, 1);
INSERT INTO `kecamatan` (`id_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (8, 3, 'Kandangan', '', '', '', '', 'KC', NULL, NULL, NULL, NULL, 1);
INSERT INTO `kecamatan` (`id_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (9, 3, 'Kedu', '', '', '', '', 'KC', NULL, NULL, NULL, NULL, 1);
INSERT INTO `kecamatan` (`id_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (10, 3, 'Kledung', '', '', '', '', 'KC', NULL, NULL, NULL, NULL, 1);
INSERT INTO `kecamatan` (`id_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (11, 3, 'Kranggan', '', '', '', '', 'KC', NULL, NULL, NULL, NULL, 1);
INSERT INTO `kecamatan` (`id_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (12, 3, 'Ngadirejo', '', '', '', '', 'KC', NULL, NULL, NULL, NULL, 1);
INSERT INTO `kecamatan` (`id_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (13, 3, 'Parakan', '', '', '', '', 'KC', NULL, NULL, NULL, NULL, 1);
INSERT INTO `kecamatan` (`id_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (14, 3, 'Pringsurat', '', '', '', '', 'KC', NULL, NULL, NULL, NULL, 1);
INSERT INTO `kecamatan` (`id_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (15, 3, 'Selopampang', '', '', '', '', 'KC', NULL, NULL, NULL, NULL, 1);
INSERT INTO `kecamatan` (`id_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (16, 3, 'Temanggung', '', '', '', '', 'KC', NULL, NULL, NULL, NULL, 1);
INSERT INTO `kecamatan` (`id_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (17, 3, 'Tembarak', '', '', '', '', 'KC', NULL, NULL, NULL, NULL, 1);
INSERT INTO `kecamatan` (`id_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (18, 3, 'Tlogomulyo', '', '', '', '', 'KC', NULL, NULL, NULL, NULL, 1);
INSERT INTO `kecamatan` (`id_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (19, 3, 'Tretep', '', '', '', '', 'KC', NULL, NULL, NULL, NULL, 1);
INSERT INTO `kecamatan` (`id_kecamatan`, `id_kabupaten`, `nama_kecamatan`, `col1`, `col2`, `col3`, `col4`, `col5`, `created_at`, `created_by`, `updated_at`, `updated_by`, `isactive`) VALUES (20, 3, 'Wonoboyo', '', '', '', '', 'KC', NULL, NULL, NULL, NULL, 1);


#
# TABLE STRUCTURE FOR: korban
#

DROP TABLE IF EXISTS `korban`;

CREATE TABLE `korban` (
  `id_korban` int(255) NOT NULL AUTO_INCREMENT,
  `nik_korban` varchar(50) NOT NULL,
  `nama_korban` varchar(50) NOT NULL,
  `id_agama` int(10) NOT NULL,
  `id_desa` int(10) NOT NULL,
  `alamat_korban` longtext NOT NULL,
  `no_hp_korban` varchar(50) NOT NULL,
  PRIMARY KEY (`id_korban`,`nik_korban`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4;

INSERT INTO `korban` (`id_korban`, `nik_korban`, `nama_korban`, `id_agama`, `id_desa`, `alamat_korban`, `no_hp_korban`) VALUES (50, '456', 'rerer', 4, 121, 'fgfgfgf', '453453');
INSERT INTO `korban` (`id_korban`, `nik_korban`, `nama_korban`, `id_agama`, `id_desa`, `alamat_korban`, `no_hp_korban`) VALUES (51, '44545454545', 'hhhhhhhhhhhhhh', 2, 197, 'fdgdgdgdfgdf', '8989898');
INSERT INTO `korban` (`id_korban`, `nik_korban`, `nama_korban`, `id_agama`, `id_desa`, `alamat_korban`, `no_hp_korban`) VALUES (52, '442435454', 'tyty', 1, 60, 'fgdgfdg', '4324324');
INSERT INTO `korban` (`id_korban`, `nik_korban`, `nama_korban`, `id_agama`, `id_desa`, `alamat_korban`, `no_hp_korban`) VALUES (53, '43434343', 'asasasa', 4, 177, 'dsdadaaa', '34343243');
INSERT INTO `korban` (`id_korban`, `nik_korban`, `nama_korban`, `id_agama`, `id_desa`, `alamat_korban`, `no_hp_korban`) VALUES (54, '4343434', 'dsasd', 2, 208, 'dsdsdsad', '131232312');
INSERT INTO `korban` (`id_korban`, `nik_korban`, `nama_korban`, `id_agama`, `id_desa`, `alamat_korban`, `no_hp_korban`) VALUES (55, '222222222222222', 'wqwqwqwqw', 3, 143, 'dsddddddddd', '11111111');
INSERT INTO `korban` (`id_korban`, `nik_korban`, `nama_korban`, `id_agama`, `id_desa`, `alamat_korban`, `no_hp_korban`) VALUES (56, '2222222222', 'sdsdsds', 2, 208, 'dsdsdsd', '12121212');
INSERT INTO `korban` (`id_korban`, `nik_korban`, `nama_korban`, `id_agama`, `id_desa`, `alamat_korban`, `no_hp_korban`) VALUES (57, '21212121', 'asasasas', 3, 184, 'sasasa', '1212121');
INSERT INTO `korban` (`id_korban`, `nik_korban`, `nama_korban`, `id_agama`, `id_desa`, `alamat_korban`, `no_hp_korban`) VALUES (58, '2222222222222', 'asasa', 4, 58, 'dsdsdsd', '212121');
INSERT INTO `korban` (`id_korban`, `nik_korban`, `nama_korban`, `id_agama`, `id_desa`, `alamat_korban`, `no_hp_korban`) VALUES (59, '333333333', 'aaaaaaaaaa', 4, 207, 'sasasa', '11111111');
INSERT INTO `korban` (`id_korban`, `nik_korban`, `nama_korban`, `id_agama`, `id_desa`, `alamat_korban`, `no_hp_korban`) VALUES (60, '22', 'bbb', 3, 67, 'asas', '21212');
INSERT INTO `korban` (`id_korban`, `nik_korban`, `nama_korban`, `id_agama`, `id_desa`, `alamat_korban`, `no_hp_korban`) VALUES (61, '33333333', 'bbbbbb', 1, 208, 'sssssssss', '22222222');
INSERT INTO `korban` (`id_korban`, `nik_korban`, `nama_korban`, `id_agama`, `id_desa`, `alamat_korban`, `no_hp_korban`) VALUES (62, '22222222222', 'dfdfdfd', 3, 303, 'dsdsdsdsd', '434343');
INSERT INTO `korban` (`id_korban`, `nik_korban`, `nama_korban`, `id_agama`, `id_desa`, `alamat_korban`, `no_hp_korban`) VALUES (63, '3333333333', 'sdsdsdsd', 4, 270, 'cxzxczx', '443434343');
INSERT INTO `korban` (`id_korban`, `nik_korban`, `nama_korban`, `id_agama`, `id_desa`, `alamat_korban`, `no_hp_korban`) VALUES (64, '2121212', 'dsadsdsad', 4, 205, 'dsadsdsad', '323232');
INSERT INTO `korban` (`id_korban`, `nik_korban`, `nama_korban`, `id_agama`, `id_desa`, `alamat_korban`, `no_hp_korban`) VALUES (65, '444444444444444444', 'ccccccccccccccccccccccccc', 3, 149, 'dssadadadsadsds', '5454545454');
INSERT INTO `korban` (`id_korban`, `nik_korban`, `nama_korban`, `id_agama`, `id_desa`, `alamat_korban`, `no_hp_korban`) VALUES (66, '22222222222222', 'dsdsdasasa', 3, 189, 'xzxzxzxz', '43434343');
INSERT INTO `korban` (`id_korban`, `nik_korban`, `nama_korban`, `id_agama`, `id_desa`, `alamat_korban`, `no_hp_korban`) VALUES (67, '21212121', 'asasasas', 3, 304, 'asasasasa', '34343434');
INSERT INTO `korban` (`id_korban`, `nik_korban`, `nama_korban`, `id_agama`, `id_desa`, `alamat_korban`, `no_hp_korban`) VALUES (68, '777777777777777', 'ggggggggggggg', 4, 241, 'fgfgdgfdgfdg', '12413143');
INSERT INTO `korban` (`id_korban`, `nik_korban`, `nama_korban`, `id_agama`, `id_desa`, `alamat_korban`, `no_hp_korban`) VALUES (69, '55555555555', 'sadasdsad', 3, 183, 'sdsdsds', '312321321');
INSERT INTO `korban` (`id_korban`, `nik_korban`, `nama_korban`, `id_agama`, `id_desa`, `alamat_korban`, `no_hp_korban`) VALUES (70, '444444444444444', 'bbbb', 2, 184, 'fdgfgfdfgf', '43434343');
INSERT INTO `korban` (`id_korban`, `nik_korban`, `nama_korban`, `id_agama`, `id_desa`, `alamat_korban`, `no_hp_korban`) VALUES (71, '888888888', 'cccccccc', 2, 303, 'sdsdsds', '54532');


#
# TABLE STRUCTURE FOR: master_access
#

DROP TABLE IF EXISTS `master_access`;

CREATE TABLE `master_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nm_access` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `id_menu` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

INSERT INTO `master_access` (`id`, `nm_access`, `note`, `created_at`, `created_by`, `id_menu`) VALUES (20, 'Pengaduan', 'Akses ke menu Pengaduan', '2022-05-23 08:38:22', 8, 19);
INSERT INTO `master_access` (`id`, `nm_access`, `note`, `created_at`, `created_by`, `id_menu`) VALUES (21, 'Laporan', 'Akses ke menu Laporan', '2022-05-23 08:38:43', 8, 33);
INSERT INTO `master_access` (`id`, `nm_access`, `note`, `created_at`, `created_by`, `id_menu`) VALUES (22, 'Pengaturan Aplikasi', 'Akses ke menu Parameter System', '2022-05-23 08:39:26', 8, 13);
INSERT INTO `master_access` (`id`, `nm_access`, `note`, `created_at`, `created_by`, `id_menu`) VALUES (23, 'Management User', 'Akses ke menu Management User', '2022-05-23 08:39:53', 8, 18);
INSERT INTO `master_access` (`id`, `nm_access`, `note`, `created_at`, `created_by`, `id_menu`) VALUES (24, 'Menu Config', 'Akses ke menu Config', '2022-05-23 08:40:20', 8, 5);
INSERT INTO `master_access` (`id`, `nm_access`, `note`, `created_at`, `created_by`, `id_menu`) VALUES (25, 'Input Pengaduan', 'Akses Ke input Pengaduan', '2022-05-23 09:05:31', 6, 20);
INSERT INTO `master_access` (`id`, `nm_access`, `note`, `created_at`, `created_by`, `id_menu`) VALUES (26, 'Tindaklanjut', 'Akses Ke menu Tindak Lanjut', '2022-05-23 09:05:51', 6, 25);
INSERT INTO `master_access` (`id`, `nm_access`, `note`, `created_at`, `created_by`, `id_menu`) VALUES (27, 'Penyelesaian', 'Akses Ke menu Penyelesaian', '2022-05-23 09:06:13', 6, 28);
INSERT INTO `master_access` (`id`, `nm_access`, `note`, `created_at`, `created_by`, `id_menu`) VALUES (28, 'Monitoring', 'Akses Ke menu monitoring', '2022-05-23 09:06:59', 6, 29);
INSERT INTO `master_access` (`id`, `nm_access`, `note`, `created_at`, `created_by`, `id_menu`) VALUES (30, 'User', 'Akses ke menu User', '2022-05-23 09:50:22', 6, 14);
INSERT INTO `master_access` (`id`, `nm_access`, `note`, `created_at`, `created_by`, `id_menu`) VALUES (31, 'Group User', 'Akses ke menu Group User', '2022-05-23 09:50:52', 6, 15);
INSERT INTO `master_access` (`id`, `nm_access`, `note`, `created_at`, `created_by`, `id_menu`) VALUES (32, 'Master Akses', 'Akses ke menu master Akses', '2022-05-23 09:51:10', 6, 17);
INSERT INTO `master_access` (`id`, `nm_access`, `note`, `created_at`, `created_by`, `id_menu`) VALUES (33, 'User Akses', 'akses ke menu User Akses', '2022-05-23 09:51:36', 6, 16);
INSERT INTO `master_access` (`id`, `nm_access`, `note`, `created_at`, `created_by`, `id_menu`) VALUES (34, 'Action Tindaklanjut', 'Akses ke tombol aksi menu tindak lanjut', '2022-06-08 13:33:49', 6, 25);
INSERT INTO `master_access` (`id`, `nm_access`, `note`, `created_at`, `created_by`, `id_menu`) VALUES (35, 'Action Selesai', 'AKSES KE TOMBOL AKSI MENU SELESAI', '2022-06-08 13:34:53', 6, 32);
INSERT INTO `master_access` (`id`, `nm_access`, `note`, `created_at`, `created_by`, `id_menu`) VALUES (36, 'Action Penyelesaian', 'AKSES KE TOMBOL AKSI MENU PEYELESAIAN', '2022-06-08 13:35:13', 6, 28);
INSERT INTO `master_access` (`id`, `nm_access`, `note`, `created_at`, `created_by`, `id_menu`) VALUES (37, 'Action Monitoring', 'AKSES KE TOMBOL AKSI MENU MONITORING', '2022-06-08 13:35:39', 6, 29);
INSERT INTO `master_access` (`id`, `nm_access`, `note`, `created_at`, `created_by`, `id_menu`) VALUES (38, 'Selesai', 'AKSES KE MENU SELESAI', '2022-06-08 13:39:31', 6, 32);


#
# TABLE STRUCTURE FOR: pelapor
#

DROP TABLE IF EXISTS `pelapor`;

CREATE TABLE `pelapor` (
  `id_pelapor` int(255) NOT NULL AUTO_INCREMENT,
  `nik_pelapor` varchar(50) NOT NULL,
  `nama_pelapor` varchar(50) NOT NULL,
  `id_agama` int(10) NOT NULL,
  `id_desa` int(10) NOT NULL,
  `alamat_pelapor` longtext NOT NULL,
  `no_hp_pelapor` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pelapor`,`nik_pelapor`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4;

INSERT INTO `pelapor` (`id_pelapor`, `nik_pelapor`, `nama_pelapor`, `id_agama`, `id_desa`, `alamat_pelapor`, `no_hp_pelapor`) VALUES (53, '123', 'sassa', 5, 59, 'dsdsds', '353');
INSERT INTO `pelapor` (`id_pelapor`, `nik_pelapor`, `nama_pelapor`, `id_agama`, `id_desa`, `alamat_pelapor`, `no_hp_pelapor`) VALUES (54, '13231313123', 'ffffffffffffffffffff', 4, 173, 'retertretertre', '222222222222');
INSERT INTO `pelapor` (`id_pelapor`, `nik_pelapor`, `nama_pelapor`, `id_agama`, `id_desa`, `alamat_pelapor`, `no_hp_pelapor`) VALUES (55, '42423423', 'rerer', 2, 62, 'trtertre', '545454');
INSERT INTO `pelapor` (`id_pelapor`, `nik_pelapor`, `nama_pelapor`, `id_agama`, `id_desa`, `alamat_pelapor`, `no_hp_pelapor`) VALUES (56, '2323232', 'dfdfdf', 6, 303, 'dsdadsad', '231312');
INSERT INTO `pelapor` (`id_pelapor`, `nik_pelapor`, `nama_pelapor`, `id_agama`, `id_desa`, `alamat_pelapor`, `no_hp_pelapor`) VALUES (57, '212121', 'dadadasd', 3, 304, 'dasdsds', '232323');
INSERT INTO `pelapor` (`id_pelapor`, `nik_pelapor`, `nama_pelapor`, `id_agama`, `id_desa`, `alamat_pelapor`, `no_hp_pelapor`) VALUES (58, '111111111111111', 'wewewewe', 5, 87, 'dssssssssssss', '222222222');
INSERT INTO `pelapor` (`id_pelapor`, `nik_pelapor`, `nama_pelapor`, `id_agama`, `id_desa`, `alamat_pelapor`, `no_hp_pelapor`) VALUES (59, '11111111', 'ewewew', 4, 207, 'dsdsds', '2323232');
INSERT INTO `pelapor` (`id_pelapor`, `nik_pelapor`, `nama_pelapor`, `id_agama`, `id_desa`, `alamat_pelapor`, `no_hp_pelapor`) VALUES (60, '12121212', 'asasasa', 4, 307, 'sasasasa', '1212121');
INSERT INTO `pelapor` (`id_pelapor`, `nik_pelapor`, `nama_pelapor`, `id_agama`, `id_desa`, `alamat_pelapor`, `no_hp_pelapor`) VALUES (61, '1111111111', 'ewewew', 6, 208, 'dsdsds', '2121212');
INSERT INTO `pelapor` (`id_pelapor`, `nik_pelapor`, `nama_pelapor`, `id_agama`, `id_desa`, `alamat_pelapor`, `no_hp_pelapor`) VALUES (62, '22222222222', 'wwwwwwwww', 5, 306, 'sasasa', '2222222');
INSERT INTO `pelapor` (`id_pelapor`, `nik_pelapor`, `nama_pelapor`, `id_agama`, `id_desa`, `alamat_pelapor`, `no_hp_pelapor`) VALUES (63, '11', 'aaa', 2, 69, 'sasas', '21212');
INSERT INTO `pelapor` (`id_pelapor`, `nik_pelapor`, `nama_pelapor`, `id_agama`, `id_desa`, `alamat_pelapor`, `no_hp_pelapor`) VALUES (64, '22222', 'aaaaaaaa', 5, 305, 'aaaaaaa', '1111111111');
INSERT INTO `pelapor` (`id_pelapor`, `nik_pelapor`, `nama_pelapor`, `id_agama`, `id_desa`, `alamat_pelapor`, `no_hp_pelapor`) VALUES (65, '11111111111', 'sasasa', 5, 207, 'fdfdgfgf', '3223');
INSERT INTO `pelapor` (`id_pelapor`, `nik_pelapor`, `nama_pelapor`, `id_agama`, `id_desa`, `alamat_pelapor`, `no_hp_pelapor`) VALUES (66, '2222222222', 'asasasa', 5, 305, 'czxcxcx', '323232');
INSERT INTO `pelapor` (`id_pelapor`, `nik_pelapor`, `nama_pelapor`, `id_agama`, `id_desa`, `alamat_pelapor`, `no_hp_pelapor`) VALUES (67, '2323232', 'adsdsad', 5, 208, 'asdadsad', '212121');
INSERT INTO `pelapor` (`id_pelapor`, `nik_pelapor`, `nama_pelapor`, `id_agama`, `id_desa`, `alamat_pelapor`, `no_hp_pelapor`) VALUES (68, '333333333333333333', 'xxxxxxxxxxxxxxxxxxxxxxxxxx', 4, 207, 'dsfsdfsdfdsfds', '43434343');
INSERT INTO `pelapor` (`id_pelapor`, `nik_pelapor`, `nama_pelapor`, `id_agama`, `id_desa`, `alamat_pelapor`, `no_hp_pelapor`) VALUES (69, '1111111111111', 'sdsdsd', 4, 59, 'sdsdsds', '2121121');
INSERT INTO `pelapor` (`id_pelapor`, `nik_pelapor`, `nama_pelapor`, `id_agama`, `id_desa`, `alamat_pelapor`, `no_hp_pelapor`) VALUES (70, '32323323', 'dsdsdsdsd', 5, 58, 'dsdsdsds', '2121212');
INSERT INTO `pelapor` (`id_pelapor`, `nik_pelapor`, `nama_pelapor`, `id_agama`, `id_desa`, `alamat_pelapor`, `no_hp_pelapor`) VALUES (71, '666666666666', 'ffffffffff', 5, 66, 'sddasdsadsa', '331323');
INSERT INTO `pelapor` (`id_pelapor`, `nik_pelapor`, `nama_pelapor`, `id_agama`, `id_desa`, `alamat_pelapor`, `no_hp_pelapor`) VALUES (72, '444444444444', 'fdfdfdfd', 4, 206, 'asdadsad', '23232');
INSERT INTO `pelapor` (`id_pelapor`, `nik_pelapor`, `nama_pelapor`, `id_agama`, `id_desa`, `alamat_pelapor`, `no_hp_pelapor`) VALUES (73, '5555555555555555', 'aaaa', 5, 202, 'adasdsad', '5454545');
INSERT INTO `pelapor` (`id_pelapor`, `nik_pelapor`, `nama_pelapor`, `id_agama`, `id_desa`, `alamat_pelapor`, `no_hp_pelapor`) VALUES (74, '777777777777', 'aaaaaa', 3, 304, 'ghghgh', '545454');


#
# TABLE STRUCTURE FOR: penduduk
#

DROP TABLE IF EXISTS `penduduk`;

CREATE TABLE `penduduk` (
  `id_penduduk` int(255) NOT NULL AUTO_INCREMENT,
  `nik` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id_agama` int(10) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `id_desa` int(10) NOT NULL,
  PRIMARY KEY (`id_penduduk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: pengaduan
#

DROP TABLE IF EXISTS `pengaduan`;

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(255) NOT NULL AUTO_INCREMENT,
  `no_pengaduan` varchar(50) NOT NULL,
  `nik_pelapor` varchar(50) NOT NULL,
  `nik_korban` varchar(50) NOT NULL,
  `tempat_kejadian` longtext NOT NULL,
  `id_desa` int(50) NOT NULL,
  `kronologi` longtext NOT NULL,
  `tgl_kejadian` date NOT NULL,
  `tgl_tindak_lanjut` date DEFAULT NULL,
  `note_tindak_lanjut` longtext DEFAULT NULL,
  `tgl_penyelesaian` date DEFAULT NULL,
  `note_penyelesaian` longtext DEFAULT NULL,
  `tgl_monitoring` date DEFAULT NULL,
  `note_monitoring` longtext DEFAULT NULL,
  `tgl_input` datetime NOT NULL,
  `id_flag` int(10) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_pengaduan`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4;

INSERT INTO `pengaduan` (`id_pengaduan`, `no_pengaduan`, `nik_pelapor`, `nik_korban`, `tempat_kejadian`, `id_desa`, `kronologi`, `tgl_kejadian`, `tgl_tindak_lanjut`, `note_tindak_lanjut`, `tgl_penyelesaian`, `note_penyelesaian`, `tgl_monitoring`, `note_monitoring`, `tgl_input`, `id_flag`, `id_user`) VALUES (45, 'P2204280001', '123', '456', 'wrerwrwedf', 173, 'dfdffd', '2022-04-28', '2022-04-28', 'Telah dintindaklanjuti', '2022-04-28', 'Telah dilakukan Penyelesaian', '2022-04-28', 'telah dimonitoring', '2022-04-28 07:10:23', 4, 8);
INSERT INTO `pengaduan` (`id_pengaduan`, `no_pengaduan`, `nik_pelapor`, `nik_korban`, `tempat_kejadian`, `id_desa`, `kronologi`, `tgl_kejadian`, `tgl_tindak_lanjut`, `note_tindak_lanjut`, `tgl_penyelesaian`, `note_penyelesaian`, `tgl_monitoring`, `note_monitoring`, `tgl_input`, `id_flag`, `id_user`) VALUES (46, 'P2204280002', '13231313123', '44545454545', 'gdfgfgfdg', 173, 'gdgdgdf', '2022-04-28', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-28 12:00:35', 1, 8);
INSERT INTO `pengaduan` (`id_pengaduan`, `no_pengaduan`, `nik_pelapor`, `nik_korban`, `tempat_kejadian`, `id_desa`, `kronologi`, `tgl_kejadian`, `tgl_tindak_lanjut`, `note_tindak_lanjut`, `tgl_penyelesaian`, `note_penyelesaian`, `tgl_monitoring`, `note_monitoring`, `tgl_input`, `id_flag`, `id_user`) VALUES (47, 'P2205090001', '42423423', '442435454', '4rtrtretret', 173, 'gdfgdfgdfgdg', '2022-05-09', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-09 10:26:36', 1, 8);
INSERT INTO `pengaduan` (`id_pengaduan`, `no_pengaduan`, `nik_pelapor`, `nik_korban`, `tempat_kejadian`, `id_desa`, `kronologi`, `tgl_kejadian`, `tgl_tindak_lanjut`, `note_tindak_lanjut`, `tgl_penyelesaian`, `note_penyelesaian`, `tgl_monitoring`, `note_monitoring`, `tgl_input`, `id_flag`, `id_user`) VALUES (48, 'P2205100001', '2323232', '43434343', 'fdsfdsfds', 173, 'asdsadsads', '2022-05-10', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 06:22:27', 1, 8);
INSERT INTO `pengaduan` (`id_pengaduan`, `no_pengaduan`, `nik_pelapor`, `nik_korban`, `tempat_kejadian`, `id_desa`, `kronologi`, `tgl_kejadian`, `tgl_tindak_lanjut`, `note_tindak_lanjut`, `tgl_penyelesaian`, `note_penyelesaian`, `tgl_monitoring`, `note_monitoring`, `tgl_input`, `id_flag`, `id_user`) VALUES (49, 'P2205100002', '212121', '4343434', 'sadsdsda', 173, 'dsadsds', '2022-05-10', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 06:26:34', 1, 8);
INSERT INTO `pengaduan` (`id_pengaduan`, `no_pengaduan`, `nik_pelapor`, `nik_korban`, `tempat_kejadian`, `id_desa`, `kronologi`, `tgl_kejadian`, `tgl_tindak_lanjut`, `note_tindak_lanjut`, `tgl_penyelesaian`, `note_penyelesaian`, `tgl_monitoring`, `note_monitoring`, `tgl_input`, `id_flag`, `id_user`) VALUES (50, 'P2205100003', '111111111111111', '222222222222222', 'wwwwwwww', 173, 'qqqqqqq', '2022-05-10', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 06:28:16', 1, 8);
INSERT INTO `pengaduan` (`id_pengaduan`, `no_pengaduan`, `nik_pelapor`, `nik_korban`, `tempat_kejadian`, `id_desa`, `kronologi`, `tgl_kejadian`, `tgl_tindak_lanjut`, `note_tindak_lanjut`, `tgl_penyelesaian`, `note_penyelesaian`, `tgl_monitoring`, `note_monitoring`, `tgl_input`, `id_flag`, `id_user`) VALUES (51, 'P2205100004', '11111111', '2222222222', 'wqwqwqw', 173, 'wqwqwqw', '2022-05-10', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 06:29:28', 1, 8);
INSERT INTO `pengaduan` (`id_pengaduan`, `no_pengaduan`, `nik_pelapor`, `nik_korban`, `tempat_kejadian`, `id_desa`, `kronologi`, `tgl_kejadian`, `tgl_tindak_lanjut`, `note_tindak_lanjut`, `tgl_penyelesaian`, `note_penyelesaian`, `tgl_monitoring`, `note_monitoring`, `tgl_input`, `id_flag`, `id_user`) VALUES (52, 'P2205100005', '12121212', '21212121', 'wqwqwqw', 173, 'eqeqeqeq', '2022-05-10', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 06:31:08', 1, 8);
INSERT INTO `pengaduan` (`id_pengaduan`, `no_pengaduan`, `nik_pelapor`, `nik_korban`, `tempat_kejadian`, `id_desa`, `kronologi`, `tgl_kejadian`, `tgl_tindak_lanjut`, `note_tindak_lanjut`, `tgl_penyelesaian`, `note_penyelesaian`, `tgl_monitoring`, `note_monitoring`, `tgl_input`, `id_flag`, `id_user`) VALUES (53, 'P2205100006', '1111111111', '2222222222222', 'wewewew', 173, 'ewewew', '2022-05-10', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 06:38:32', 1, 8);
INSERT INTO `pengaduan` (`id_pengaduan`, `no_pengaduan`, `nik_pelapor`, `nik_korban`, `tempat_kejadian`, `id_desa`, `kronologi`, `tgl_kejadian`, `tgl_tindak_lanjut`, `note_tindak_lanjut`, `tgl_penyelesaian`, `note_penyelesaian`, `tgl_monitoring`, `note_monitoring`, `tgl_input`, `id_flag`, `id_user`) VALUES (54, 'P2205100007', '22222222222', '333333333', '2222222222', 173, 'qqqqqqq', '2022-05-10', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 06:42:26', 1, 8);
INSERT INTO `pengaduan` (`id_pengaduan`, `no_pengaduan`, `nik_pelapor`, `nik_korban`, `tempat_kejadian`, `id_desa`, `kronologi`, `tgl_kejadian`, `tgl_tindak_lanjut`, `note_tindak_lanjut`, `tgl_penyelesaian`, `note_penyelesaian`, `tgl_monitoring`, `note_monitoring`, `tgl_input`, `id_flag`, `id_user`) VALUES (55, 'P2205100008', '11', '22', 'wqwqwq', 173, 'wqwqw', '2022-05-10', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 06:43:41', 1, 8);
INSERT INTO `pengaduan` (`id_pengaduan`, `no_pengaduan`, `nik_pelapor`, `nik_korban`, `tempat_kejadian`, `id_desa`, `kronologi`, `tgl_kejadian`, `tgl_tindak_lanjut`, `note_tindak_lanjut`, `tgl_penyelesaian`, `note_penyelesaian`, `tgl_monitoring`, `note_monitoring`, `tgl_input`, `id_flag`, `id_user`) VALUES (56, 'P2205100009', '22222', '33333333', '11111111', 173, '222222222', '2022-05-10', '2022-05-11', 'sasasasas', NULL, NULL, NULL, NULL, '2022-05-10 06:45:15', 2, 8);
INSERT INTO `pengaduan` (`id_pengaduan`, `no_pengaduan`, `nik_pelapor`, `nik_korban`, `tempat_kejadian`, `id_desa`, `kronologi`, `tgl_kejadian`, `tgl_tindak_lanjut`, `note_tindak_lanjut`, `tgl_penyelesaian`, `note_penyelesaian`, `tgl_monitoring`, `note_monitoring`, `tgl_input`, `id_flag`, `id_user`) VALUES (57, 'P2205100010', '11111111111', '22222222222', 'ererer', 173, 'rererere', '2022-05-10', '2022-05-11', 'sdsdsds', '2022-05-11', 'asasasas', NULL, NULL, '2022-05-10 07:08:28', 3, 8);
INSERT INTO `pengaduan` (`id_pengaduan`, `no_pengaduan`, `nik_pelapor`, `nik_korban`, `tempat_kejadian`, `id_desa`, `kronologi`, `tgl_kejadian`, `tgl_tindak_lanjut`, `note_tindak_lanjut`, `tgl_penyelesaian`, `note_penyelesaian`, `tgl_monitoring`, `note_monitoring`, `tgl_input`, `id_flag`, `id_user`) VALUES (58, 'P2205110001', '2222222222', '3333333333', 'ewewew', 103, 'dsdsdss', '2022-05-11', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-11 08:08:34', 1, 10);
INSERT INTO `pengaduan` (`id_pengaduan`, `no_pengaduan`, `nik_pelapor`, `nik_korban`, `tempat_kejadian`, `id_desa`, `kronologi`, `tgl_kejadian`, `tgl_tindak_lanjut`, `note_tindak_lanjut`, `tgl_penyelesaian`, `note_penyelesaian`, `tgl_monitoring`, `note_monitoring`, `tgl_input`, `id_flag`, `id_user`) VALUES (59, 'P2205110002', '2323232', '2121212', 'dfdsfdsf', 103, 'asdasad', '2022-05-11', '2022-05-11', 'dadsadsad', '2022-05-11', 'adsdasdasdd', '2022-05-11', 'sdasdadadaDFDFD', '2022-05-11 08:19:50', 4, 10);
INSERT INTO `pengaduan` (`id_pengaduan`, `no_pengaduan`, `nik_pelapor`, `nik_korban`, `tempat_kejadian`, `id_desa`, `kronologi`, `tgl_kejadian`, `tgl_tindak_lanjut`, `note_tindak_lanjut`, `tgl_penyelesaian`, `note_penyelesaian`, `tgl_monitoring`, `note_monitoring`, `tgl_input`, `id_flag`, `id_user`) VALUES (60, 'P2205170001', '333333333333333333', '444444444444444444', 'dgdsgdgsdgdsgdsg', 173, 'fdsfdsfdsfdsfdsf', '2022-05-17', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-17 09:27:05', 1, 8);
INSERT INTO `pengaduan` (`id_pengaduan`, `no_pengaduan`, `nik_pelapor`, `nik_korban`, `tempat_kejadian`, `id_desa`, `kronologi`, `tgl_kejadian`, `tgl_tindak_lanjut`, `note_tindak_lanjut`, `tgl_penyelesaian`, `note_penyelesaian`, `tgl_monitoring`, `note_monitoring`, `tgl_input`, `id_flag`, `id_user`) VALUES (61, 'P2205170002', '1111111111111', '22222222222222', 'ewewewew', 173, 'dsdssds', '2022-05-17', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-17 13:44:19', 1, 8);
INSERT INTO `pengaduan` (`id_pengaduan`, `no_pengaduan`, `nik_pelapor`, `nik_korban`, `tempat_kejadian`, `id_desa`, `kronologi`, `tgl_kejadian`, `tgl_tindak_lanjut`, `note_tindak_lanjut`, `tgl_penyelesaian`, `note_penyelesaian`, `tgl_monitoring`, `note_monitoring`, `tgl_input`, `id_flag`, `id_user`) VALUES (62, 'P2205170003', '32323323', '21212121', 'ewewewew', 173, 'sdsdsdsd', '2022-05-17', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-17 13:46:03', 1, 8);
INSERT INTO `pengaduan` (`id_pengaduan`, `no_pengaduan`, `nik_pelapor`, `nik_korban`, `tempat_kejadian`, `id_desa`, `kronologi`, `tgl_kejadian`, `tgl_tindak_lanjut`, `note_tindak_lanjut`, `tgl_penyelesaian`, `note_penyelesaian`, `tgl_monitoring`, `note_monitoring`, `tgl_input`, `id_flag`, `id_user`) VALUES (63, 'P2205170004', '666666666666', '777777777777777', '343434', 173, 'reewrewrew', '2022-05-17', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-17 13:47:38', 1, 8);
INSERT INTO `pengaduan` (`id_pengaduan`, `no_pengaduan`, `nik_pelapor`, `nik_korban`, `tempat_kejadian`, `id_desa`, `kronologi`, `tgl_kejadian`, `tgl_tindak_lanjut`, `note_tindak_lanjut`, `tgl_penyelesaian`, `note_penyelesaian`, `tgl_monitoring`, `note_monitoring`, `tgl_input`, `id_flag`, `id_user`) VALUES (64, 'P2205170005', '444444444444', '55555555555', 'ewqeqweqe', 173, 'sadsadsada', '2022-05-17', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-17 13:49:23', 1, 8);
INSERT INTO `pengaduan` (`id_pengaduan`, `no_pengaduan`, `nik_pelapor`, `nik_korban`, `tempat_kejadian`, `id_desa`, `kronologi`, `tgl_kejadian`, `tgl_tindak_lanjut`, `note_tindak_lanjut`, `tgl_penyelesaian`, `note_penyelesaian`, `tgl_monitoring`, `note_monitoring`, `tgl_input`, `id_flag`, `id_user`) VALUES (65, 'P2205230001', '5555555555555555', '444444444444444', 'rerererer', 173, 'adasdsdads', '2022-05-23', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-23 13:03:40', 1, 8);
INSERT INTO `pengaduan` (`id_pengaduan`, `no_pengaduan`, `nik_pelapor`, `nik_korban`, `tempat_kejadian`, `id_desa`, `kronologi`, `tgl_kejadian`, `tgl_tindak_lanjut`, `note_tindak_lanjut`, `tgl_penyelesaian`, `note_penyelesaian`, `tgl_monitoring`, `note_monitoring`, `tgl_input`, `id_flag`, `id_user`) VALUES (66, 'P2205230002', '777777777777', '888888888', 'rtrtrt', 173, 'rwrewe', '2022-05-23', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-23 13:07:01', 1, 8);


#
# TABLE STRUCTURE FOR: sy_config
#

DROP TABLE IF EXISTS `sy_config`;

CREATE TABLE `sy_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conf_name` varchar(50) NOT NULL,
  `conf_val` text NOT NULL,
  `note` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

INSERT INTO `sy_config` (`id`, `conf_name`, `conf_val`, `note`) VALUES (3, 'APP_NAME', 'Pesan Perak', '');
INSERT INTO `sy_config` (`id`, `conf_name`, `conf_val`, `note`) VALUES (8, 'OPD_NAME', 'DPPKBPPPA', '');
INSERT INTO `sy_config` (`id`, `conf_name`, `conf_val`, `note`) VALUES (9, 'LEFT_FOOTER', '<strong>Copyright</strong> <a href=\"\">Pemkab Temanggung</a> © 2022', '');
INSERT INTO `sy_config` (`id`, `conf_name`, `conf_val`, `note`) VALUES (10, 'RIGHT_FOOTER', 'DPPKBPPPA', '');
INSERT INTO `sy_config` (`id`, `conf_name`, `conf_val`, `note`) VALUES (11, 'VISI_MISI', 'Dilengkapi dengan tambahan helper PHP dan JS', '');
INSERT INTO `sy_config` (`id`, `conf_name`, `conf_val`, `note`) VALUES (12, 'OPD_ADDR', '<a href=\"\">Aplikasi Pesan Perak</a>', '');


#
# TABLE STRUCTURE FOR: sy_menu
#

DROP TABLE IF EXISTS `sy_menu`;

CREATE TABLE `sy_menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(30) DEFAULT '',
  `redirect` int(1) DEFAULT NULL,
  `url` varchar(100) DEFAULT '',
  `parent` int(11) DEFAULT 0,
  `icon` varchar(30) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `order_no` int(5) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id_menu`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

INSERT INTO `sy_menu` (`id_menu`, `label`, `redirect`, `url`, `parent`, `icon`, `note`, `order_no`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES (5, 'Menu Config', 0, 'sy_menu', 0, 'fa-wrench', '', 10, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `sy_menu` (`id_menu`, `label`, `redirect`, `url`, `parent`, `icon`, `note`, `order_no`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES (6, 'Dashboard', 0, 'backend', 0, 'fa-home', '', 0, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `sy_menu` (`id_menu`, `label`, `redirect`, `url`, `parent`, `icon`, `note`, `order_no`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES (13, 'Parameter System', 0, 'sy_config', 0, 'fa-gears', '', 9, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `sy_menu` (`id_menu`, `label`, `redirect`, `url`, `parent`, `icon`, `note`, `order_no`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES (14, 'Users', 0, 'users', 18, 'fa-users', '', 9, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `sy_menu` (`id_menu`, `label`, `redirect`, `url`, `parent`, `icon`, `note`, `order_no`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES (15, 'Group Users', 0, 'user_group', 18, 'fa-users', '', 9, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `sy_menu` (`id_menu`, `label`, `redirect`, `url`, `parent`, `icon`, `note`, `order_no`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES (16, 'User Access', 0, 'user_access', 18, 'fa fa-user', '', 8, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `sy_menu` (`id_menu`, `label`, `redirect`, `url`, `parent`, `icon`, `note`, `order_no`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES (17, 'Master Access', 0, 'master_access', 18, 'fa fa-key', '', 9, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `sy_menu` (`id_menu`, `label`, `redirect`, `url`, `parent`, `icon`, `note`, `order_no`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES (18, 'Management Users', 0, 'users', 0, 'fa fa-users', '', 9, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `sy_menu` (`id_menu`, `label`, `redirect`, `url`, `parent`, `icon`, `note`, `order_no`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES (19, 'Pengaduan', 0, 'Pengaduan', 0, 'fa-gear', '', 2, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `sy_menu` (`id_menu`, `label`, `redirect`, `url`, `parent`, `icon`, `note`, `order_no`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES (20, 'Input Pengaduan', 0, 'Pengaduan', 19, 'fa-pencil', 'M_pengaduan', 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `sy_menu` (`id_menu`, `label`, `redirect`, `url`, `parent`, `icon`, `note`, `order_no`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES (25, 'Tindaklanjut', 0, 'Pengaduan/tindaklanjut_index', 19, 'fa-gear', '', 2, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `sy_menu` (`id_menu`, `label`, `redirect`, `url`, `parent`, `icon`, `note`, `order_no`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES (28, 'Penyelesaian', 0, 'Pengaduan/penyelesaian_index', 19, 'fa-gear', '', 3, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `sy_menu` (`id_menu`, `label`, `redirect`, `url`, `parent`, `icon`, `note`, `order_no`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES (29, 'Monitoring', 0, 'Pengaduan/monitoring_index', 19, 'fa-list', '', 4, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `sy_menu` (`id_menu`, `label`, `redirect`, `url`, `parent`, `icon`, `note`, `order_no`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES (32, 'Selesai', 0, 'Pengaduan/selesai_index', 19, 'fa-check', '', 5, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `sy_menu` (`id_menu`, `label`, `redirect`, `url`, `parent`, `icon`, `note`, `order_no`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES (33, 'Laporan', 0, 'Laporan', 0, 'fa-print', 'Menu Laporan', 3, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `sy_menu` (`id_menu`, `label`, `redirect`, `url`, `parent`, `icon`, `note`, `order_no`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES (34, 'Cetak Lembar Pengaduan', 0, 'Laporan', 33, 'fa-print', '', 1, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `sy_menu` (`id_menu`, `label`, `redirect`, `url`, `parent`, `icon`, `note`, `order_no`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES (35, 'Cetak Rekap Kecamatan', 0, 'Laporan/rekap_kecamatan_index', 33, 'fa-list', '', 2, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `sy_menu` (`id_menu`, `label`, `redirect`, `url`, `parent`, `icon`, `note`, `order_no`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES (36, 'Cetak Rekap Desa', 0, 'Laporan/rekap_desa_index', 33, 'fa-list', '', 3, '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: user_access
#

DROP TABLE IF EXISTS `user_access`;

CREATE TABLE `user_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_group` int(11) DEFAULT NULL,
  `kd_access` varchar(12) DEFAULT NULL,
  `nm_access` varbinary(100) DEFAULT NULL,
  `is_allow` int(1) DEFAULT NULL COMMENT '0=false,1=true',
  `note` text DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (76, 1, '24', NULL, 1, NULL, 5);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (77, 1, '23', NULL, 1, NULL, 18);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (78, 1, '22', NULL, 1, NULL, 13);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (79, 1, '21', NULL, 1, NULL, 33);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (80, 1, '20', NULL, 1, NULL, 19);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (81, 1, '19', NULL, 1, NULL, 6);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (82, 3, '23', NULL, 0, NULL, 18);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (83, 3, '19', NULL, 1, NULL, 6);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (84, 3, '20', NULL, 1, NULL, 19);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (85, 3, '21', NULL, 1, NULL, 33);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (86, 4, '19', NULL, 1, NULL, 6);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (87, 4, '20', NULL, 1, NULL, 19);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (88, 4, '21', NULL, 1, NULL, 33);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (89, 4, '23', NULL, 1, NULL, 18);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (90, 4, '24', NULL, 0, NULL, 5);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (91, 4, '28', NULL, 1, NULL, 29);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (92, 4, '27', NULL, 1, NULL, 28);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (94, 3, '25', NULL, 1, NULL, 20);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (95, 4, '26', NULL, 1, NULL, 25);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (96, 4, '30', NULL, 1, NULL, 14);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (97, 4, '22', NULL, 1, NULL, 13);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (98, 1, '32', NULL, 1, NULL, 17);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (99, 1, '31', NULL, 1, NULL, 15);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (100, 1, '30', NULL, 1, NULL, 14);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (101, 1, '28', NULL, 1, NULL, 29);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (102, 1, '27', NULL, 1, NULL, 28);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (103, 1, '26', NULL, 1, NULL, 25);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (104, 1, '25', NULL, 1, NULL, 20);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (105, 1, '33', NULL, 1, NULL, 16);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (106, 1, '34', NULL, 1, NULL, 25);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (107, 4, '34', NULL, 1, NULL, 25);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (108, 1, '35', NULL, 1, NULL, 32);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (109, 1, '36', NULL, 1, NULL, 28);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (110, 1, '37', NULL, 1, NULL, 29);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (111, 4, '35', NULL, 1, NULL, 32);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (112, 4, '36', NULL, 1, NULL, 28);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (113, 4, '37', NULL, 1, NULL, 29);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (114, 3, '26', NULL, 1, NULL, 25);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (115, 3, '27', NULL, 1, NULL, 28);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (116, 3, '28', NULL, 1, NULL, 29);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (117, 4, '38', NULL, 1, NULL, 32);
INSERT INTO `user_access` (`id`, `id_group`, `kd_access`, `nm_access`, `is_allow`, `note`, `id_menu`) VALUES (118, 1, '38', NULL, 1, NULL, 32);


#
# TABLE STRUCTURE FOR: user_group
#

DROP TABLE IF EXISTS `user_group`;

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

INSERT INTO `user_group` (`id`, `group_name`, `note`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES (1, 'Developer', 'full akses', NULL, NULL, NULL, NULL);
INSERT INTO `user_group` (`id`, `group_name`, `note`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES (3, 'Admin Desa', 'Administrator KB Desa', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');
INSERT INTO `user_group` (`id`, `group_name`, `note`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES (4, 'Admin KB', 'Administrator KB Kabupaten', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: user_menu_access
#

DROP TABLE IF EXISTS `user_menu_access`;

CREATE TABLE `user_menu_access` (
  `id_user_menu_access` int(10) NOT NULL AUTO_INCREMENT,
  `id_menu` int(10) DEFAULT NULL,
  `id_group` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_user_menu_access`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(250) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `id_group` int(11) DEFAULT NULL COMMENT 'fk dari tabel user_group',
  `foto` varchar(250) DEFAULT NULL,
  `telp` varchar(250) DEFAULT NULL,
  `note` text NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `note_1` text DEFAULT NULL,
  `id_desa` int(100) DEFAULT NULL COMMENT 'fk dari tabel desa',
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

INSERT INTO `users` (`id_user`, `fullname`, `username`, `password`, `email`, `id_group`, `foto`, `telp`, `note`, `created_by`, `updated_by`, `created_at`, `updated_at`, `note_1`, `id_desa`) VALUES (3, 'kabupaten', 'kabupaten', '227edf7c86c02a44d17eec9aa5b30cd1', 'ahmad@gmail.com', 4, '', '2222', 'User Admin KB', 1, 6, '2022-04-19 13:26:16', '2022-04-25 10:30:22', '', NULL);
INSERT INTO `users` (`id_user`, `fullname`, `username`, `password`, `email`, `id_group`, `foto`, `telp`, `note`, `created_by`, `updated_by`, `created_at`, `updated_at`, `note_1`, `id_desa`) VALUES (5, 'desa', 'desa', '3cf9be6f2f317279cc0a8207a77bd0db', 'aku@gmail.com', 3, '', '565', 'yy', 4, 6, '2022-04-25 07:21:37', '2022-04-25 10:30:03', '', NULL);
INSERT INTO `users` (`id_user`, `fullname`, `username`, `password`, `email`, `id_group`, `foto`, `telp`, `note`, `created_by`, `updated_by`, `created_at`, `updated_at`, `note_1`, `id_desa`) VALUES (6, 'dev', 'dev', '227edf7c86c02a44d17eec9aa5b30cd1', 'dev@gmail.com', 1, '', '8989', 'Full Akses', 3, 6, '2022-04-25 08:09:00', '2022-04-25 10:32:31', '', NULL);
INSERT INTO `users` (`id_user`, `fullname`, `username`, `password`, `email`, `id_group`, `foto`, `telp`, `note`, `created_by`, `updated_by`, `created_at`, `updated_at`, `note_1`, `id_desa`) VALUES (7, 'Admin Temanggung 1', 'temanggung1', '1b19c2d9c262c4aed6b3068002dc3bbf', 'temanggung1@gmail.com', 3, '', '0000', 'Admin Temanggung 1', 6, 0, '2022-04-25 12:25:22', '0000-00-00 00:00:00', '', NULL);
INSERT INTO `users` (`id_user`, `fullname`, `username`, `password`, `email`, `id_group`, `foto`, `telp`, `note`, `created_by`, `updated_by`, `created_at`, `updated_at`, `note_1`, `id_desa`) VALUES (8, 'Jumo', 'jumo', 'f0a41fdbc520e191db615c3335c6f305', 'jumo@gmail.com', 3, '', '1111', '1111', 6, 0, '2022-04-25 12:27:38', '0000-00-00 00:00:00', '', 173);
INSERT INTO `users` (`id_user`, `fullname`, `username`, `password`, `email`, `id_group`, `foto`, `telp`, `note`, `created_by`, `updated_by`, `created_at`, `updated_at`, `note_1`, `id_desa`) VALUES (9, 'pitosari', 'pitosari', 'd41d8cd98f00b204e9800998ecf8427e', 'pitosari@gmail.com', 3, '', '1', '', 6, 0, '2022-05-11 08:05:28', '0000-00-00 00:00:00', '', 289);
INSERT INTO `users` (`id_user`, `fullname`, `username`, `password`, `email`, `id_group`, `foto`, `telp`, `note`, `created_by`, `updated_by`, `created_at`, `updated_at`, `note_1`, `id_desa`) VALUES (10, 'kemiri', 'kemiri', '09cbc68d8a2ae7bfc659d61564201aff', 'kemiri@gmail.com', 0, '', '1', '', 6, 0, '2022-05-11 08:07:12', '0000-00-00 00:00:00', '', 103);
INSERT INTO `users` (`id_user`, `fullname`, `username`, `password`, `email`, `id_group`, `foto`, `telp`, `note`, `created_by`, `updated_by`, `created_at`, `updated_at`, `note_1`, `id_desa`) VALUES (11, 'rejosari', 'rejosari', '227a3f80cd83382e41ed065a22272326', 'rejosari@gmail.com', 3, '', '1', 'Admin Desa Rejosari', 8, 0, '2022-05-23 08:29:46', '0000-00-00 00:00:00', '', 249);


