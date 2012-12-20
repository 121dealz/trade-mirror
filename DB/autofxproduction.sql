-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 19, 2012 at 06:04 AM
-- Server version: 5.1.65
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `the3d618_trademr1`
--

-- --------------------------------------------------------

--
-- Table structure for table `signals`
--

CREATE TABLE IF NOT EXISTS `signals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ticket` varchar(10) DEFAULT NULL,
  `groupid` int(11) NOT NULL,
  `strategy` varchar(50) DEFAULT NULL,
  `signal` varchar(250) DEFAULT NULL,
  `created` decimal(20,0) DEFAULT NULL,
  `closed` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48760 ;

-- --------------------------------------------------------

--
-- Table structure for table `signal_archives`
--

CREATE TABLE IF NOT EXISTS `signal_archives` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ticket` varchar(10) DEFAULT NULL,
  `groupid` int(11) NOT NULL,
  `strategy` varchar(50) DEFAULT NULL,
  `signal` varchar(250) DEFAULT NULL,
  `created` decimal(20,0) DEFAULT NULL,
  `closed` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48501 ;

--
-- Dumping data for table `signal_archives`
--

INSERT INTO `signal_archives` (`id`, `ticket`, `groupid`, `strategy`, `signal`, `created`, `closed`) VALUES
(48437, '11797086', 0, 'manual', 'OP1350324775_S_EURUSD_T_0_L_1.00_B_25045.92_P_1.29484_sl_1.29275_tp_0.00000', '20121015181301', '0'),
(48438, '11797386', 0, 'manual', 'OP1350325943_S_EURUSD_T_0_L_1.00_B_24987.92_P_1.29415_sl_1.29275_tp_0.00000', '20121015183229', '0'),
(48439, '12210160', 0, 'manual', 'OP1350993002_S_EURUSD_T_0_L_1.00_B_24928.42_P_1.30059_sl_1.29990_tp_0.00000', '20121023115009', '0'),
(48440, '12210160', 0, 'manual', 'OP1350993002_S_EURUSD_T_0_L_1.00_B_24928.42_P_1.30059_sl_1.29990_tp_0.00000', '20121023115002', '0'),
(48441, '12572411', 0, 'manual', 'OP1351629797_S_GBPUSD_T_1_L_1.00_B_41164.37_P_1.60716_sl_1.60765_tp_0.00000', '20121030204342', '1'),
(48442, '12636505', 0, 'manual', 'OP1351677349_S_GBPUSD_T_0_L_1.00_B_41113.37_P_1.61159_sl_0.00000_tp_0.00000', '20121031095613', '0'),
(48443, '12671953', 0, 'manual', 'OP1351765994_S_GBPUSD_T_0_L_1.00_B_41070.37_P_1.61681_sl_1.61405_tp_0.00000', '20121101103319', '1'),
(48444, '12671953', 0, 'manual', 'OP1351765994_S_GBPUSD_T_0_L_1.00_B_41070.37_P_1.61681_sl_1.61405_tp_0.00000', '20121101103300', '1'),
(48445, '12671954', 0, 'manual', 'OP1351765995_S_GBPUSD_T_0_L_1.00_B_41070.37_P_1.61681_sl_1.61465_tp_0.00000', '20121101103301', '1'),
(48446, '12671954', 0, 'manual', 'OP1351765995_S_GBPUSD_T_0_L_1.00_B_41070.37_P_1.61681_sl_1.61465_tp_0.00000', '20121101103320', '1'),
(48447, '12672030', 0, 'manual', 'OP1351766141_S_GBPUSD_T_0_L_1.00_B_41038.37_P_1.61711_sl_1.61500_tp_0.00000', '20121101103546', '1'),
(48448, '12672030', 0, 'manual', 'OP1351766141_S_GBPUSD_T_0_L_1.00_B_41038.37_P_1.61711_sl_1.61500_tp_0.00000', '20121101103527', '1'),
(48449, '12672034', 0, 'manual', 'OP1351766145_S_GBPUSD_T_0_L_1.00_B_41038.37_P_1.61711_sl_1.61500_tp_0.00000', '20121101103550', '1'),
(48450, '12672034', 0, 'manual', 'OP1351766145_S_GBPUSD_T_0_L_1.00_B_41038.37_P_1.61711_sl_1.61500_tp_0.00000', '20121101103531', '1'),
(48451, '12672125', 0, 'manual', 'OP1351766229_S_GBPUSD_T_0_L_1.00_B_41010.37_P_1.61709_sl_1.61500_tp_0.00000', '20121101103655', '1'),
(48452, '12672125', 0, 'manual', 'OP1351766229_S_GBPUSD_T_0_L_1.00_B_41010.37_P_1.61709_sl_1.61500_tp_0.00000', '20121101103714', '1'),
(48453, '12672127', 0, 'manual', 'OP1351766232_S_GBPUSD_T_0_L_1.00_B_41010.37_P_1.61711_sl_1.61500_tp_0.00000', '20121101103658', '1'),
(48454, '12672127', 0, 'manual', 'OP1351766232_S_GBPUSD_T_0_L_1.00_B_41010.37_P_1.61711_sl_1.61500_tp_0.00000', '20121101103717', '1'),
(48455, '12708149', 0, 'manual', 'OP1351854280_S_GBPUSD_T_1_L_1.00_B_41047.37_P_1.60911_sl_1.61250_tp_0.00000', '20121102110449', '0'),
(48456, '12727214', 0, 'manual', 'OP1351873325_S_USDCAD_T_1_L_1.00_B_41259.87_P_0.99576_sl_0.99715_tp_0.00000', '20121102162214', '0'),
(48457, '12755219', 0, 'manual', 'OP1352107790_S_GBPUSD_T_1_L_1.00_B_41608.41_P_1.59897_sl_1.60080_tp_0.00000', '20121105093006', '0'),
(48458, '12755257', 0, 'manual', 'OP1352107823_S_AUDUSD_T_1_L_1.00_B_41608.41_P_1.03512_sl_1.03665_tp_0.00000', '20121105093039', '1'),
(48459, '12763462', 0, 'manual', 'OP1352124593_S_USDCAD_T_0_L_1.00_B_41645.41_P_0.99781_sl_0.99575_tp_0.00000', '20121105141010', '1'),
(48460, '12768310', 0, 'manual', 'OP1352135426_S_USDCAD_T_0_L_1.00_B_41283.53_P_0.99687_sl_0.99555_tp_0.00000', '20121105171043', '0'),
(48461, '12782884', 0, 'manual', 'OP1352190456_S_USDCAD_T_1_L_1.00_B_41209.93_P_0.99528_sl_0.99615_tp_0.00000', '20121106082754', '1'),
(48462, '12788620', 0, 'manual', 'OP1352201471_S_USDCAD_T_1_L_1.00_B_41209.93_P_0.99334_sl_0.99445_tp_0.00000', '20121106113131', '1'),
(48463, '12791518', 0, 'manual', 'OP1352206794_S_GBPUSD_T_1_L_1.00_B_41209.93_P_1.59782_sl_1.59940_tp_0.00000', '20121106130014', '1'),
(48464, '12792118', 0, 'manual', 'OP1352208265_S_USDCAD_T_1_L_1.00_B_41098.31_P_0.99342_sl_0.99495_tp_0.00000', '20121106132444', '1'),
(48465, '12874086', 0, 'manual', 'OP1352282159_S_USDCAD_T_1_L_1.00_B_40786.53_P_0.98814_sl_0.98970_tp_0.00000', '20121107095624', '1'),
(48466, '12888560', 0, 'manual', 'OP1352301642_S_GBPUSD_T_1_L_1.00_B_40625.88_P_1.59680_sl_1.59940_tp_0.00000', '20121107152040', '1'),
(48467, '12926878', 0, 'manual', 'OP1352387167_S_GBPUSD_T_1_L_1.00_B_40365.88_P_1.59813_sl_1.60030_tp_0.00000', '20121108150603', '0'),
(48468, '12959490', 0, 'manual', 'OP1352458723_S_USDCAD_T_0_L_1.00_B_40238.88_P_1.00051_sl_0.99890_tp_0.00000', '20121109105838', '0'),
(48469, '12970864', 0, 'manual', 'OP1352475598_S_GBPUSD_T_1_L_1.00_B_40285.81_P_1.59156_sl_1.59425_tp_0.00000', '20121109153954', '1'),
(48470, '12971539', 0, 'manual', 'OP1352476094_S_AUDUSD_T_1_L_1.00_B_40285.81_P_1.03808_sl_1.03960_tp_0.00000', '20121109154810', '1'),
(48471, '13069033', 0, 'manual', 'OP1352735693_S_GBPUSD_T_1_L_1.00_B_40312.01_P_1.58722_sl_1.58875_tp_0.00000', '20121112155453', '1'),
(48472, '13088072', 0, 'manual', 'OP1352795268_S_AUDUSD_T_1_L_1.00_B_40312.01_P_1.04006_sl_1.04210_tp_0.00000', '20121113082747', '1'),
(48473, '13108514', 0, 'manual', 'OP1352824760_S_USDCAD_T_0_L_1.00_B_39949.01_P_1.00228_sl_1.00020_tp_0.00000', '20121113163919', '0'),
(48474, '13302612', 0, 'manual', 'OP1353082799_S_AUDUSD_T_1_L_1.00_B_39738.05_P_1.02968_sl_1.03190_tp_0.00000', '20121116161938', '1'),
(48475, '13354248', 0, 'manual', 'OP1353336985_S_USDCAD_T_1_L_1.00_B_39515.05_P_0.99597_sl_0.99750_tp_0.00000', '20121119145557', '0'),
(48476, '13354248', 0, 'manual', 'OP1353336985_S_USDCAD_T_1_L_1.00_B_39515.05_P_0.99597_sl_0.99750_tp_0.00000', '20121119145638', '0'),
(48477, '13354248', 0, 'manual', 'OP1353336985_S_USDCAD_T_1_L_1.00_B_39515.05_P_0.99597_sl_0.99750_tp_0.00000', '20121119145638', '0'),
(48478, '13487829', 0, 'manual', 'OP1353419537_S_AUDUSD_T_1_L_1.00_B_39360.76_P_1.03785_sl_1.03965_tp_0.00000', '20121120135217', '1'),
(48479, '13779374', 0, 'manual', 'OP1353680708_S_USDCAD_T_1_L_1.00_B_39359.76_P_0.99604_sl_0.99800_tp_0.00000', '20121123142456', '0'),
(48480, '13828331', 0, 'manual', 'OP1353881751_S_EURUSD_T_0_L_1.00_B_23703.21_P_1.29744_sl_1.28810_tp_0.00000', '20121125221555', '1'),
(48481, '13828368', 0, 'manual', 'OP1353881874_S_USDCHF_T_0_L_1.00_B_23663.21_P_0.92839_sl_0.92105_tp_0.00000', '20121125221758', '1'),
(48482, '13828451', 0, 'manual', 'OP1353882122_S_EURUSD_T_0_L_1.00_B_23613.64_P_1.29743_sl_1.28050_tp_0.00000', '20121125222206', '1'),
(48483, '13828490', 0, 'manual', 'OP1353882212_S_GBPUSD_T_0_L_1.00_B_23584.64_P_1.60312_sl_1.58970_tp_0.00000', '20121125222336', '1'),
(48484, '13846146', 0, 'manual', 'OP1353919199_S_AUDUSD_T_1_L_1.00_B_39665.40_P_1.04527_sl_1.04670_tp_0.00000', '20121126083937', '1'),
(48485, '13860512', 0, 'manual', 'OP1353940738_S_GBPUSD_T_1_L_1.00_B_39663.40_P_1.60072_sl_1.60205_tp_0.00000', '20121126143836', '1'),
(48486, '13860889', 0, 'manual', 'OP1353941246_S_GBPUSD_T_1_L_1.00_B_39630.40_P_1.60080_sl_1.60205_tp_0.00000', '20121126144704', '1'),
(48487, '13864290', 0, 'manual', 'OP1353946150_S_AUDUSD_T_1_L_1.00_B_39505.40_P_1.04417_sl_1.04610_tp_0.00000', '20121126160847', '1'),
(48488, '13951642', 0, 'manual', 'OP1354009218_S_USDCAD_T_1_L_1.00_B_38935.09_P_0.99222_sl_0.99340_tp_0.00000', '20121127093952', '1'),
(48489, '13967939', 0, 'manual', 'OP1354029309_S_AUDUSD_T_1_L_1.00_B_38935.09_P_1.04505_sl_1.04740_tp_0.00000', '20121127151509', '1'),
(48490, '14057374', 0, 'manual', 'OP1354096767_S_GBPUSD_T_1_L_1.00_B_38923.19_P_1.60051_sl_1.60205_tp_0.00000', '20121128095918', '0'),
(48491, '14172999', 0, 'manual', 'OP1354190901_S_GBPUSD_T_0_L_1.00_B_39050.69_P_1.60240_sl_1.60070_tp_0.00000', '20121129120800', '0'),
(48492, '14289279', 0, 'manual', 'OP1354285792_S_AUDUSD_T_1_L_1.00_B_39080.69_P_1.04045_sl_1.04165_tp_0.00000', '20121130142926', '1'),
(48493, '14293735', 0, 'manual', 'OP1354290417_S_GBPUSD_T_1_L_1.00_B_38958.69_P_1.60021_sl_1.60250_tp_0.00000', '20121130154631', '1'),
(48494, '14293910', 0, 'manual', 'OP1354290584_S_AUDUSD_T_1_L_1.00_B_38958.69_P_1.04128_sl_1.04300_tp_0.00000', '20121130154918', '1'),
(48495, '14347754', 0, 'manual', 'OP1354528052_S_AUDUSD_T_1_L_1.00_B_38558.69_P_1.04089_sl_1.04200_tp_0.00000', '20121203094656', '1'),
(48496, '14368524', 0, 'manual', 'OP1354550511_S_AUDUSD_T_0_L_1.00_B_38447.69_P_1.04269_sl_1.04110_tp_0.00000', '20121203160113', '0'),
(48497, '14568887', 0, 'manual', 'OP1354719841_S_AUDUSD_T_1_L_1.00_B_38322.29_P_1.04607_sl_1.04785_tp_0.00000', '20121205150359', '1'),
(48498, '14675227', 0, 'manual', 'OP1354804814_S_USDCAD_T_1_L_1.00_B_38322.29_P_0.99094_sl_0.99215_tp_0.00000', '20121206144014', '1'),
(48499, '14777550', 0, 'manual', 'OP1354887933_S_AUDUSD_T_1_L_1.00_B_38324.31_P_1.04603_sl_1.04815_tp_0.00000', '20121207134522', '1'),
(48500, '15204033', 0, 'manual', 'OP1355403018_S_USDCAD_T_1_L_1.00_B_38106.31_P_0.98284_sl_0.98440_tp_0.00000', '20121213125013', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(250) DEFAULT '',
  `password` varchar(250) DEFAULT '',
  `groupid` int(11) NOT NULL,
  `email` varchar(256) DEFAULT NULL,
  `role` varchar(50) DEFAULT 'user',
  `status` int(1) unsigned DEFAULT '1' COMMENT '0:Revoked, 1:Active',
  `account_number` varchar(250) NOT NULL,
  `keystring` varchar(250) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=491 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `groupid`, `email`, `role`, `status`, `account_number`, `keystring`, `created`, `modified`) VALUES
(1, 'admin', 'Welcome', 0, NULL, 'admin', 1, '', '', NULL, '2011-09-06 00:02:22'),
(357, '', '', 1, 'jgoforex@yahoo.com', 'user', 1, '902232', '456441', '2012-11-02 07:53:45', '2012-11-25 22:29:37'),
(460, '', '', 1, 'eporteny@gmail.com', 'user', 0, '205629', '9731', '2012-11-26 11:07:01', '2012-12-05 17:16:01'),
(359, '', '', 1, 'wjkern@excite.com', 'user', 1, '7204835', '6456', '2012-11-02 08:23:49', '2012-11-25 22:29:44'),
(367, '', '', 1, 'howardnzun@yahoo.com', 'user', 0, '86020442', '371268yr', '2012-11-05 08:25:30', '2012-11-29 08:06:45'),
(355, '', '', 0, 'kumar', 'user', 1, '1417103', '1234', '2012-10-30 12:41:28', '2012-11-26 10:46:15'),
(360, '', '', 1, 'mghausa@yahoo.com.sg', 'user', 0, '1315759', '55525555', '2012-11-02 08:26:14', '2012-11-29 08:09:09'),
(361, '', '', 1, 'hayne@yahoo.com', 'user', 0, '75092', '1514566', '2012-11-02 08:27:30', '2012-12-11 13:06:14'),
(363, '', '', 1, 'alex.pierce99@gmail.com', 'user', 1, '1585009', 'experttrader', '2012-11-02 16:04:20', '2012-11-25 22:30:09'),
(364, '', '', 1, 'elstontuitt@gmail.com', 'user', 0, '242895', '4615', '2012-11-02 20:28:31', '2012-11-29 08:09:36'),
(365, '', '', 1, 'pars56@qld.chariot.net.au', 'user', 0, '508275 ', '9515', '2012-11-02 20:31:01', '2012-11-29 08:10:29'),
(455, '', '', 1, 'gpo@post.com', 'user', 1, '91004404', '3012', '2012-11-23 13:58:45', '2012-12-05 12:56:05'),
(368, '', '', 1, 'lipsp@verizon.net', 'user', 0, '520013799', '7414', '2012-11-08 09:46:33', '2012-11-29 08:11:13'),
(369, '', '', 1, 'cotoyu@hotmail.com', 'user', 0, '171815', '5465', '2012-11-09 10:52:13', '2012-11-29 08:11:30'),
(454, '', '', 1, 'zzmybinary@gmail.com', 'user', 1, '2506263', '9751', '2012-11-23 13:54:36', '2012-11-25 22:31:12'),
(371, '', '', 1, 'moudif@gmail.com', 'user', 0, '5000134', '4598', '2012-11-13 09:44:06', '2012-11-29 08:11:50'),
(372, '', '', 1, 'leng_ng@hotmail.com', 'user', 1, '2088527974', '4789', '2012-11-13 09:46:36', '2012-11-29 09:12:19'),
(373, '', '', 1, 'far9000@yahoo.com', 'user', 1, '4039280', '4569', '2012-11-13 09:48:11', '2012-12-03 14:41:14'),
(374, '', '', 1, 'bez662@gmail.com', 'user', 1, '14473', '4562', '2012-11-13 09:50:16', '2012-11-25 22:32:19'),
(375, '', '', 1, 'sbwinf@yahoo.com.au', 'user', 0, '194381', '3216', '2012-11-13 09:51:40', '2012-11-29 08:13:43'),
(376, '', '', 1, 'kirkmalley@comcast.net', 'user', 0, '80052010', '9789', '2012-11-13 09:55:14', '2012-11-29 08:13:59'),
(377, '', '', 1, 'dtomaselli@aol.com', 'user', 0, '806681', '7535', '2012-11-13 09:58:17', '2012-11-29 08:14:21'),
(378, '', '', 1, 'arctheta@yahoo.com', 'user', 0, '800168311', '4563', '2012-11-13 10:09:38', '2012-11-29 08:14:42'),
(379, '', '', 1, 'robertpippin@rocketmail.com', 'user', 1, '16290760', '1474', '2012-11-13 10:14:50', '2012-11-25 22:33:04'),
(380, '', '', 1, 'db.natalie@gmail.com', 'user', 1, '2511684', '5369', '2012-11-13 10:19:58', '2012-11-30 14:27:20'),
(381, '', '', 1, 'cthevnin@sbcglobal.net', 'user', 1, '1612532', '4789', '2012-11-13 10:31:42', '2012-11-25 22:33:22'),
(382, '', '', 1, 'campbell3010@gmail.com', 'user', 1, '80052068', '4895', '2012-11-13 11:10:15', '2012-11-25 22:33:31'),
(383, '', '', 1, 'bruce.johnson@mts.net', 'user', 0, '11310250', '5656', '2012-11-13 19:19:07', '2012-11-29 08:15:15'),
(384, '', '', 1, 'leroycashe@gmail.com', 'user', 1, '807986', '7852', '2012-11-13 20:01:02', '2012-12-03 11:23:32'),
(385, '', '', 1, 'affiliates@carstravelmoney.co.uk', 'user', 0, '11243198', '6548', '2012-11-13 20:18:56', '2012-11-29 08:15:42'),
(386, '', '', 1, 'heat.hill@optusnet.com.au', 'user', 1, '11777', '2585', '2012-11-14 10:58:18', '2012-11-25 22:34:09'),
(387, '', '', 1, 'rjkoch@rjkoch.de', 'user', 1, '107432', '7536', '2012-11-14 11:02:01', '2012-12-06 14:11:34'),
(388, '', '', 1, 'gbryen1@gmail.com', 'user', 0, '1600782', '7896', '2012-11-14 11:05:33', '2012-11-29 08:16:16'),
(389, '', '', 1, 'fabiolapflores@yahoo.com', 'user', 1, '4014604', '4785', '2012-11-14 12:36:16', '2012-11-25 22:34:35'),
(390, '', '', 1, 'danhughesinc@aol.com', 'user', 0, '642298', '4578', '2012-11-14 13:03:03', '2012-11-29 08:16:31'),
(391, '', '', 1, 'christine.starreveld@gmail.com', 'user', 1, '2493549', '4712', '2012-11-14 14:43:40', '2012-11-25 22:34:54'),
(392, '', '', 1, 'cristinavallini@yahoo.it', 'user', 0, '307726 ', '6843', '2012-11-14 20:52:58', '2012-12-05 16:34:10'),
(393, '', '', 1, 'hm_mayer@live.com', 'user', 0, '140492', '1379', '2012-11-14 20:54:55', '2012-11-29 08:16:54'),
(394, '', '', 1, 'rick@seattlepowerchutes.com', 'user', 0, '705863', '4654', '2012-11-15 10:33:16', '2012-11-29 08:17:12'),
(395, '', '', 1, 'gcgmaverick@hotmail.com', 'user', 0, '215237', '4741', '2012-11-15 10:34:52', '2012-12-05 12:43:40'),
(396, '', '', 1, 'karenlarkman9@gmail.com', 'user', 1, '187386', '9987', '2012-11-15 10:36:13', '2012-11-25 22:35:40'),
(397, '', '', 1, 'dundeal@xtra.co.nz', 'user', 1, '2499594', '6356', '2012-11-15 10:37:45', '2012-12-10 23:17:02'),
(398, '', '', 1, 'forex@keep.co.nz', 'user', 1, '1610905', '4312', '2012-11-15 10:40:53', '2012-12-03 11:21:31'),
(399, '', '', 1, 'reuben@comcen.com.au', 'user', 0, '14212 ', '2852', '2012-11-15 10:42:12', '2012-12-07 12:30:32'),
(400, '', '', 1, 'a.kartikasari@paradise.net.nz', 'user', 1, '2495334', '1789', '2012-11-15 10:43:51', '2012-12-10 14:11:33'),
(401, '', '', 1, 'dnr28751_leo@hotmail.com', 'user', 1, '187712 ', '4789', '2012-11-15 11:44:25', '2012-12-03 16:34:45'),
(402, '', '', 1, 'johnrentzke@gmail.com', 'user', 1, '186195', '3753', '2012-11-15 14:13:44', '2012-11-25 22:36:33'),
(459, '', '', 1, 'jaydrea@hotmail.com', 'user', 1, '1413682', '1234', '2012-11-26 11:00:04', '2012-11-26 11:00:04'),
(403, '', '', 1, 'aa.subscript@gmail.com', 'user', 1, '766331', '4656', '2012-11-15 16:05:46', '2012-12-05 17:07:02'),
(404, '', '', 1, 'richied1a@comcast.net', 'user', 1, '81010426', '7852', '2012-11-15 16:29:08', '2012-12-04 12:20:04'),
(405, '', '', 1, 'jan.bjorklund1@comhem.se', 'user', 0, '5523556', '3573', '2012-11-15 16:31:25', '2012-12-12 16:11:35'),
(406, '', '', 1, 'houcinezahmoul@gmail.com', 'user', 1, '16264416', '9875', '2012-11-15 17:10:46', '2012-12-07 12:53:07'),
(407, '', '', 1, 'world1formula@yahoo.com', 'user', 0, '58026766', '5655', '2012-11-15 17:12:35', '2012-12-18 16:31:17'),
(408, '', '', 1, 'bsaulsbury@yahoo.com', 'user', 1, '92025708', '9514', '2012-11-15 17:16:05', '2012-11-29 16:05:35'),
(409, '', '', 1, 'ollitogo2@yahoo.com', 'user', 1, '86025201', '3759', '2012-11-15 18:09:03', '2012-11-25 22:37:33'),
(410, '', '', 1, 'manous@romandie.com', 'user', 1, '80840048', '9245', '2012-11-16 10:23:02', '2012-11-25 22:37:41'),
(411, '', '', 1, 'monson.ac@gmail.com', 'user', 1, '92025617', '1678', '2012-11-16 10:24:36', '2012-11-25 22:37:49'),
(412, '', '', 1, 'cmbergancia1@yahoo.com', 'user', 1, '705881', '8745', '2012-11-16 10:25:53', '2012-11-25 22:37:59'),
(413, '', '', 1, 'moosa.jawaid@gmail.com', 'user', 1, '143891', '7132', '2012-11-16 10:27:13', '2012-11-25 22:38:07'),
(414, '', '', 1, 'mm1lawson@hotmail.com', 'user', 1, '92025753', '7214', '2012-11-16 10:28:40', '2012-11-25 22:38:17'),
(415, '', '', 1, 'info@lakoenza.com', 'user', 1, '907103', '3487', '2012-11-16 11:56:27', '2012-12-14 10:37:32'),
(416, '', '', 1, 'tleckenby@msn.com', 'user', 1, '1572091', '6457', '2012-11-16 14:03:07', '2012-11-25 22:38:36'),
(417, '', '', 1, 'czeltwan001@gmail.com', 'user', 1, '92025490', '9458', '2012-11-16 17:04:59', '2012-11-25 22:38:47'),
(418, '', '', 1, 'howsolucky@msn.com', 'user', 0, '705892', '7589', '2012-11-16 18:05:49', '2012-12-07 14:34:37'),
(419, '', '', 1, 'fend.christoph@gmx.at', 'user', 1, '766352', '4789', '2012-11-17 17:25:21', '2012-11-25 22:39:12'),
(420, '', '', 1, 'markzarro@gmail.com', 'user', 1, '91004381 ', '3878', '2012-11-17 17:27:15', '2012-11-25 22:39:20'),
(421, '', '', 1, 'rhttreid@yahoo.com', 'user', 0, '92025993', '9754', '2012-11-18 14:24:12', '2012-11-29 08:25:53'),
(422, '', '', 1, 'alasharif@sky.com', 'user', 1, '89004282 ', '7319', '2012-11-18 14:26:12', '2012-11-29 08:49:19'),
(423, '', '', 1, 'jon_martin53@yahoo.com', 'user', 0, '637578', '9145', '2012-11-19 09:17:47', '2012-12-07 11:29:43'),
(424, '', '', 1, 'idealmatchnet@gmail.com', 'user', 0, '501329', '9278', '2012-11-19 09:19:39', '2012-12-07 11:51:56'),
(425, '', '', 1, 'pxlnut@gmail.com', 'user', 0, '10779675', '9875', '2012-11-19 09:21:54', '2012-12-07 11:19:56'),
(426, '', '', 1, 'jfalconer@puc.edu', 'user', 1, '11052241', '1936', '2012-11-19 09:33:01', '2012-11-29 08:47:38'),
(427, '', '', 1, 'akpojevwal@yahoo.co.uk', 'user', 1, '5057825', '3078', '2012-11-19 10:33:47', '2012-11-25 22:40:22'),
(428, '', '', 1, 'francoisp.vandenberg@gmail.com', 'user', 1, '2511810 ', '7025', '2012-11-19 12:52:34', '2012-11-30 10:20:58'),
(429, '', '', 1, 'bozemaj@hotmail.com', 'user', 0, '72690', '9025', '2012-11-19 14:48:37', '2012-12-05 19:01:08'),
(430, '', '', 1, 'trader@postedpub.com', 'user', 0, '99806', '2325', '2012-11-19 14:57:19', '2012-11-29 08:27:29'),
(448, '', '', 1, 'arvdub@yahoo.com', 'user', 1, '705985', '7369', '2012-11-21 20:35:39', '2012-12-04 16:12:01'),
(431, '', '', 1, 'peter@northriver.se', 'user', 1, '5525192', '7895', '2012-11-19 18:53:15', '2012-11-26 14:42:49'),
(432, '', '', 1, 'tgafinancial2@gmail.com', 'user', 0, '705918', '7195', '2012-11-20 11:43:04', '2012-11-29 08:28:42'),
(433, '', '', 1, 'a_b_davey@hotmail.com', 'user', 0, '2088527548', '1973', '2012-11-20 11:47:12', '2012-11-29 08:28:56'),
(434, '', '', 1, 'shterpstra@gmail.com', 'user', 0, '6883', '6458', '2012-11-20 11:59:11', '2012-11-29 08:29:08'),
(435, '', '', 1, 'leesweeney2004@aol.com', 'user', 0, '186431', '9246', '2012-11-20 12:04:39', '2012-11-29 08:29:25'),
(436, '', '', 1, 'alferik@poloexecutive.com', 'user', 0, '2088649469', '9247', '2012-11-20 15:01:35', '2012-12-07 11:41:56'),
(437, '', '', 1, 'jna.vandijk@home.nl', 'user', 1, '705982', '5789', '2012-11-20 18:21:12', '2012-11-27 18:00:28'),
(438, '', '', 1, 'jbleighbody34@yahoo.com', 'user', 1, '641611', '7821', '2012-11-21 11:52:11', '2012-11-29 11:15:59'),
(439, '', '', 1, 'xaviermattadeen@sympatico.ca', 'user', 1, '20336', '7315', '2012-11-21 12:03:10', '2012-11-30 16:10:54'),
(440, '', '', 1, 'bryant7901@rogers.com', 'user', 1, '2502309', '9713', '2012-11-21 12:04:53', '2012-12-05 12:47:48'),
(441, '', '', 1, 'bigbear200@optonline.net', 'user', 1, '610746', '6589', '2012-11-21 12:06:36', '2012-12-04 12:45:16'),
(442, '', '', 1, 'pickenscyrus@yahoo.com', 'user', 1, '215293', '7196', '2012-11-21 12:12:04', '2012-12-05 10:27:44'),
(443, '', '', 1, 'stephen@wiredfs.com', 'user', 1, '400609', '2978', '2012-11-21 12:14:03', '2012-11-25 22:43:10'),
(444, '', '', 1, 'steveb900@gmail.com', 'user', 1, '86015911', '7698', '2012-11-21 12:15:25', '2012-11-25 22:43:20'),
(445, '', '', 1, 'm442@cinci.rr.com', 'user', 0, '1852', '7145', '2012-11-21 12:29:31', '2012-11-29 08:30:57'),
(446, '', '', 1, 'hot_hktsui@hotmail.com', 'user', 1, '115127796', '9764', '2012-11-21 14:50:20', '2012-11-29 13:57:52'),
(447, '', '', 1, 'rpb1964@gmail.com', 'user', 0, '80637369', '9732', '2012-11-21 17:55:37', '2012-11-29 08:31:32'),
(449, '', '', 1, 'atkrovan@yahoo.com.sg', 'user', 1, '598496', '8147', '2012-11-22 10:12:38', '2012-11-25 22:43:56'),
(450, '', '', 1, 'sarahsmar@gmail.com', 'user', 0, '80896126', '1234', '2012-11-22 19:44:06', '2012-11-29 08:31:50'),
(451, '', '', 1, 'grinfeldsergio@gmail.com', 'user', 0, '2216', '9012', '2012-11-23 10:49:12', '2012-12-11 13:03:17'),
(452, '', '', 1, 'mikewmarx@gmail.com', 'user', 0, '147793', '1078', '2012-11-23 10:51:51', '2012-12-06 15:44:58'),
(453, '', '', 1, 'hugo_frowd@yahoo.co.uk', 'user', 1, '10000610', '1346', '2012-11-23 11:08:13', '2012-11-25 22:45:52'),
(461, '', '', 1, 'tenplus@cinci.rr.com', 'user', 1, '1852', '6578', '2012-11-26 11:23:53', '2012-12-03 11:14:01'),
(466, '', '', 1, 'alexpierce.autofxprofits@gmail', 'user', 1, '7212401', '1234', '2012-11-29 12:06:04', '2012-12-04 11:35:30'),
(462, '', '', 1, 'davidjae1967@gmail.com', 'user', 1, '1603382 ', '4987', '2012-11-26 15:24:35', '2012-11-26 15:24:35'),
(463, '', '', 1, 'jjcarozza@yahoo.com', 'user', 1, '831985', '7532', '2012-11-27 15:29:56', '2012-11-27 15:29:56'),
(464, '', '', 1, 'analynequino@gmail.com', 'user', 0, '706035', '8789', '2012-11-28 12:26:31', '2012-12-07 12:43:29'),
(465, '', '', 1, 'tchubble65@gmail.com', 'user', 0, '80955846', '7894', '2012-11-28 14:16:03', '2012-12-11 14:45:12'),
(467, '', '', 1, 'IBFX-K', 'user', 1, '12362468', '1234', '2012-11-29 20:35:22', '2012-11-29 20:35:22'),
(468, '', '', 1, 'MT4-Only-K', 'user', 1, '1213757953', '1234', '2012-11-29 20:35:47', '2012-11-29 20:35:47'),
(469, '', '', 1, 'OANDA-K', 'user', 1, '849730', '1234', '2012-11-29 20:36:12', '2012-11-29 20:36:12'),
(470, '', '', 1, 'Varengold-K', 'user', 1, '1234617987', '1234', '2012-11-29 20:36:36', '2012-11-29 20:36:36'),
(471, '', '', 1, 'OANDA-K-2', 'user', 1, '384318', '1234', '2012-11-29 20:37:00', '2012-11-29 20:37:00'),
(472, '', '', 1, 'MT4-Only-K-2', 'user', 1, '1620401', '1234', '2012-11-29 20:37:26', '2012-11-29 20:37:26'),
(473, '', '', 1, 'IBFX-K-2', 'user', 1, '12362470', '1234', '2012-11-29 20:38:11', '2012-11-29 20:38:11'),
(474, '', '', 1, 'Varengold-K-2', 'user', 1, '1234617991', '1234', '2012-11-29 20:38:55', '2012-11-29 20:38:55'),
(475, '', '', 1, 'OANDA-K-3', 'user', 1, '722710', '1234', '2012-11-29 20:39:14', '2012-11-29 20:39:14'),
(476, '', '', 1, 'IBFX-K-3', 'user', 1, '12362474', '1234', '2012-11-29 20:39:50', '2012-11-29 20:39:50'),
(477, '', '', 1, 'MT4-Only-K-3', 'user', 1, '1620402', '1234', '2012-11-29 20:40:10', '2012-11-29 20:40:10'),
(478, '', '', 1, 'Varengold-K-3', 'user', 1, '1234617992', '1234', '2012-11-29 20:40:36', '2012-11-29 20:40:36'),
(479, '', '', 1, 'jas-fxcm1', 'user', 1, '1413682', '1234', '2012-11-29 20:44:20', '2012-11-29 20:44:20'),
(480, '', '', 1, 'jas-ibfx1', 'user', 1, '12362465', '1234', '2012-11-29 20:44:48', '2012-11-29 20:44:48'),
(481, '', '', 1, 'jas-oanda1', 'user', 1, '631622', '1234', '2012-11-29 20:45:05', '2012-11-29 20:45:05'),
(482, '', '', 1, 'jas-mt4', 'user', 1, '1620384', '1234', '2012-11-29 20:45:32', '2012-11-29 20:45:32'),
(483, '', '', 1, 'jas-varengold1', 'user', 1, '1234617988', '1234', '2012-11-29 20:45:55', '2012-11-29 20:45:55'),
(484, '', '', 1, 'jas-ibfx2', 'user', 1, '12362472', '1234', '2012-11-29 20:46:14', '2012-11-29 20:46:14'),
(485, '', '', 1, 'jas-varengold2', 'user', 1, '1234617990', '1234', '2012-11-29 20:46:42', '2012-11-29 20:46:42'),
(486, '', '', 1, 'jas-oanda2', 'user', 1, '637110', '1234', '2012-11-29 20:46:58', '2012-11-29 20:46:58'),
(487, '', '', 1, 'jas-mt4-2', 'user', 1, '1213757959', '1234', '2012-11-29 20:47:19', '2012-11-29 20:47:19'),
(488, '', '', 1, 'hilla.zweig@gmail.com', 'user', 0, 'hilla.zweig@gmail.com', '9317', '2012-12-03 16:50:27', '2012-12-05 17:09:55'),
(490, '', '', 1, 'alexpierce', 'user', 1, '1631393', '1234', '2012-12-04 12:11:53', '2012-12-04 12:11:53');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
