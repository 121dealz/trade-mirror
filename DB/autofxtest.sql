-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 19, 2012 at 06:01 AM
-- Server version: 5.1.65
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `the3d618_trademr`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48905 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48555 ;

--
-- Dumping data for table `signal_archives`
--

INSERT INTO `signal_archives` (`id`, `ticket`, `groupid`, `strategy`, `signal`, `created`, `closed`) VALUES
(48437, '3178768', 0, 'manual', 'OP1337187146_S_USDCAD_T_0_L_0.50_B_102225.21_P_1.01045_sl_1.00920_tp_0.00000', '20120516165224', '1'),
(48438, '3182391', 0, 'manual', 'OP1337201748_S_USDCAD_T_0_L_1.00_B_102163.28_P_1.01235_sl_1.01070_tp_0.00000', '20120516205547', '0'),
(48439, '3222280', 0, 'manual', 'OP1337249847_S_USDCHF_T_0_L_1.00_B_102131.92_P_0.94561_sl_0.94410_tp_0.00000', '20120517101725', '0'),
(48440, '3222364', 0, 'manual', 'OP1337249945_S_USDCAD_T_1_L_1.00_B_102131.92_P_1.01394_sl_1.02000_tp_0.00000', '20120517101903', '1'),
(48441, '3222423', 0, 'manual', 'OP1337249966_S_EURUSD_T_1_L_1.00_B_102131.92_P_1.26964_sl_1.27120_tp_0.00000', '20120517101925', '0'),
(48442, '3222483', 0, 'manual', 'OP1337250007_S_GBPUSD_T_1_L_1.00_B_102131.92_P_1.58560_sl_1.58860_tp_0.00000', '20120517102006', '0'),
(48443, '3222499', 0, 'manual', 'OP1337250024_S_USDJPY_T_0_L_1.00_B_102131.92_P_80.331_sl_79.810_tp_0.000', '20120517102023', '0'),
(48444, '3222525', 0, 'manual', 'OP1337250047_S_AUDUSD_T_1_L_1.00_B_102131.92_P_0.99109_sl_0.99410_tp_0.00000', '20120517102046', '0'),
(48445, '3223330', 0, 'manual', 'OP1337251898_S_EURUSD_T_0_L_1.00_B_101886.49_P_1.27013_sl_0.00000_tp_0.00000', '20120517105136', '1'),
(48446, '3223348', 0, 'manual', 'OP1337251986_S_EURUSD_T_0_L_1.00_B_101873.49_P_1.27026_sl_0.00000_tp_0.00000', '20120517105305', '1'),
(48447, '3223389', 0, 'manual', 'OP1337252090_S_EURUSD_T_0_L_1.00_B_101831.49_P_1.26977_sl_1.26880_tp_0.00000', '20120517105448', '1'),
(48448, '3223431', 0, 'manual', 'OP1337252124_S_EURUSD_T_0_L_1.00_B_101800.49_P_1.26963_sl_0.00000_tp_0.00000', '20120517105523', '0'),
(48449, '3223899', 0, 'manual', 'OP1337252715_S_EURUSD_T_0_L_0.50_B_101786.49_P_1.26948_sl_0.00000_tp_0.00000', '20120517110514', '1'),
(48450, '3224131', 0, 'manual', 'OP1337252912_S_USDCAD_T_0_L_0.50_B_101759.99_P_1.01457_sl_0.00000_tp_0.00000', '20120517110830', '1'),
(48451, '3229095', 0, 'manual', 'OP1337261399_S_EURUSD_T_1_L_1.00_B_101746.19_P_1.27091_sl_1.27230_tp_0.00000', '20120517132957', '1'),
(48452, '3293094', 0, 'manual', 'OP1337353086_S_USDCAD_T_0_L_1.00_B_101745.19_P_1.01748_sl_1.01640_tp_0.00000', '20120518145804', '0'),
(48453, '3352580', 0, 'manual', 'OP1337617799_S_GBPUSD_T_0_L_0.50_B_101911.45_P_1.58018_sl_1.57760_tp_0.00000', '20120521162958', '0'),
(48454, '3380403', 0, 'manual', 'OP1337638768_S_GBPUSD_T_0_L_1.00_B_101894.95_P_1.58293_sl_1.58120_tp_0.00000', '20120521221927', '0'),
(48455, '3383635', 0, 'manual', 'OP1337639653_S_GBPUSD_T_0_L_0.50_B_101849.95_P_1.58267_sl_0.00000_tp_0.00000', '20120521223412', '1'),
(48456, '3383640', 0, 'manual', 'OP1337639693_S_GBPUSD_T_0_L_0.50_B_101833.95_P_1.58260_sl_0.00000_tp_0.00000', '20120521223452', '1'),
(48457, '3464583', 0, 'manual', 'OP1337776291_S_USDCHF_T_0_L_1.00_B_101816.95_P_0.94871_sl_0.94770_tp_0.00000', '20120523123130', '1'),
(48458, '3479073', 0, 'manual', 'OP1337796316_S_USDCAD_T_0_L_1.00_B_101710.38_P_1.02606_sl_1.02470_tp_0.00000', '20120523180513', '1'),
(48459, '3523248', 0, 'manual', 'OP1337849302_S_USDCHF_T_0_L_1.00_B_101577.66_P_0.95776_sl_0.95620_tp_0.00000', '20120524084819', '1'),
(48460, '3726758', 0, 'manual', 'OP1338372219_S_AUDUSD_T_1_L_1.00_B_101414.51_P_0.97644_sl_0.97760_tp_0.00000', '20120530100337', '1'),
(48461, '3726883', 0, 'manual', 'OP1338372513_S_GBPUSD_T_1_L_1.00_B_101414.51_P_1.55695_sl_1.55780_tp_0.00000', '20120530100831', '1'),
(48462, '3727109', 0, 'manual', 'OP1338373414_S_GBPUSD_T_1_L_1.00_B_101329.51_P_1.55762_sl_1.55910_tp_0.00000', '20120530102332', '1'),
(48463, '3781700', 0, 'manual', 'OP1338451496_S_GBPUSD_T_0_L_1.00_B_101180.51_P_1.54832_sl_1.54690_tp_0.00000', '20120531080453', '0'),
(48464, '3795109', 0, 'manual', 'OP1338482421_S_GBPUSD_T_1_L_1.00_B_101441.51_P_1.54124_sl_1.54310_tp_0.00000', '20120531164018', '1'),
(48465, '3795391', 0, 'manual', 'OP1338483574_S_USDCAD_T_0_L_1.00_B_101441.51_P_1.03334_sl_1.03200_tp_0.00000', '20120531165930', '1'),
(48466, '3795863', 0, 'manual', 'OP1338485119_S_USDCAD_T_0_L_1.00_B_101124.67_P_1.03308_sl_1.03180_tp_0.00000', '20120531172515', '1'),
(48467, '3857912', 0, 'manual', 'OP1338563078_S_USDCAD_T_1_L_1.00_B_100999.64_P_1.04036_sl_1.04190_tp_0.00000', '20120601150434', '1'),
(48468, '3858383', 0, 'manual', 'OP1338564156_S_EURUSD_T_0_L_1.00_B_100999.64_P_1.23814_sl_1.23570_tp_0.00000', '20120601152231', '1'),
(48469, '4351161', 0, 'manual', 'OP1339586904_S_EURUSD_T_0_L_1.00_B_100999.64_P_1.25341_sl_1.25220_tp_0.00000', '20120613112821', '1'),
(48470, '4412736', 0, 'manual', 'OP1339677548_S_USDCAD_T_1_L_1.00_B_100999.64_P_1.02641_sl_1.02780_tp_0.00000', '20120614123904', '0'),
(48471, '4413812', 0, 'manual', 'OP1339679491_S_USDCAD_T_0_L_0.50_B_100999.64_P_1.02550_sl_0.00000_tp_0.00000', '20120614131127', '1'),
(48472, '4414691', 0, 'manual', 'OP1339681575_S_USDCAD_T_1_L_1.00_B_101017.66_P_1.02612_sl_1.02730_tp_0.00000', '20120614134611', '0'),
(48473, '4419801', 0, 'manual', 'OP1339692176_S_EURUSD_T_0_L_1.00_B_101074.74_P_1.26037_sl_1.25920_tp_0.00000', '20120614164252', '1'),
(48474, '4474156', 0, 'manual', 'OP1339748500_S_GBPUSD_T_1_L_1.00_B_100977.73_P_1.55087_sl_1.55250_tp_0.00000', '20120615082135', '1'),
(48475, '4485113', 0, 'manual', 'OP1339770180_S_EURUSD_T_1_L_1.00_B_100814.73_P_1.26182_sl_1.26300_tp_0.00000', '20120615142255', '1'),
(48476, '4485139', 0, 'manual', 'OP1339770266_S_USDCHF_T_0_L_1.00_B_100814.73_P_0.95193_sl_0.95080_tp_0.00000', '20120615142421', '1'),
(48477, '4673983', 0, 'manual', 'OP1340189069_S_AUDUSD_T_0_L_1.00_B_100576.88_P_1.01968_sl_1.01850_tp_0.00000', '20120620104429', '1'),
(48478, '4674005', 0, 'manual', 'OP1340189087_S_USDCHF_T_1_L_1.00_B_100576.88_P_0.94599_sl_0.94750_tp_0.00000', '20120620104447', '0'),
(48479, '4674027', 0, 'manual', 'OP1340189113_S_EURUSD_T_0_L_1.00_B_100576.88_P_1.26948_sl_1.26800_tp_0.00000', '20120620104513', '0'),
(48480, '4677320', 0, 'manual', 'OP1340198974_S_USDCAD_T_1_L_1.00_B_100784.46_P_1.01738_sl_1.01870_tp_0.00000', '20120620132934', '1'),
(48481, '4678779', 0, 'manual', 'OP1340201857_S_AUDUSD_T_0_L_1.00_B_100649.00_P_1.01935_sl_1.01730_tp_0.00000', '20120620141736', '1'),
(48482, '4680060', 0, 'manual', 'OP1340205068_S_EURUSD_T_0_L_1.00_B_100649.00_P_1.27089_sl_1.26900_tp_0.00000', '20120620151108', '1'),
(48483, '4820305', 0, 'manual', 'OP1340378140_S_USDCHF_T_1_L_1.00_B_100218.00_P_0.95796_sl_0.95950_tp_0.00000', '20120622151538', '0'),
(48484, '5005212', 0, 'manual', 'OP1340790370_S_GBPUSD_T_1_L_1.00_B_102233.46_P_1.56180_sl_1.56310_tp_0.00000', '20120627094609', '1'),
(48485, '5006973', 0, 'manual', 'OP1340798938_S_AUDUSD_T_0_L_1.00_B_102102.46_P_1.00806_sl_1.00700_tp_0.00000', '20120627120857', '1'),
(48486, '5079392', 0, 'manual', 'OP1340883438_S_USDCAD_T_0_L_1.00_B_101996.46_P_1.02653_sl_1.02520_tp_0.00000', '20120628113716', '0'),
(48487, '5079402', 0, 'manual', 'OP1340883484_S_USDCHF_T_0_L_1.00_B_101996.46_P_0.96502_sl_0.96380_tp_0.00000', '20120628113801', '0'),
(48488, '5383359', 0, 'manual', 'OP1341405630_S_USDCHF_T_0_L_1.00_B_102353.31_P_0.95635_sl_0.95510_tp_0.00000', '20120704124030', '0'),
(48489, '5785014', 0, 'manual', 'OP1342014753_S_GBPUSD_T_0_L_1.00_B_102605.70_P_1.55761_sl_1.55490_tp_0.00000', '20120711135230', '1'),
(48490, '5947391', 0, 'manual', 'OP1342186587_S_USDCAD_T_1_L_1.00_B_102331.70_P_1.01624_sl_1.01860_tp_0.00000', '20120713133623', '0'),
(48491, '6210996', 0, 'manual', 'OP1342615368_S_USDCHF_T_0_L_1.00_B_102498.79_P_0.98232_sl_0.98040_tp_0.00000', '20120718124248', '1'),
(48492, '6221593', 0, 'manual', 'OP1342626204_S_USDCAD_T_1_L_1.00_B_102293.75_P_1.01066_sl_1.01200_tp_0.00000', '20120718154324', '1'),
(48493, '6307289', 0, 'manual', 'OP1342700125_S_USDCAD_T_1_L_1.00_B_102296.96_P_1.00700_sl_1.00890_tp_0.00000', '20120719121523', '1'),
(48494, '6314728', 0, 'manual', 'OP1342705358_S_USDCAD_T_1_L_1.00_B_102103.69_P_1.00716_sl_1.00910_tp_0.00000', '20120719134237', '1'),
(48495, '6440822', 0, 'manual', 'OP1342790811_S_AUDUSD_T_1_L_1.00_B_101913.73_P_1.03810_sl_1.04010_tp_0.00000', '20120720132649', '1'),
(48496, '6449524', 0, 'manual', 'OP1342797632_S_GBPUSD_T_1_L_1.00_B_101913.73_P_1.56201_sl_1.56420_tp_0.00000', '20120720152030', '1'),
(48497, '6451579', 0, 'manual', 'OP1342799823_S_USDCAD_T_0_L_1.00_B_101913.73_P_1.01134_sl_1.00930_tp_0.00000', '20120720155700', '1'),
(48498, '6452845', 0, 'manual', 'OP1342801211_S_USDCHF_T_0_L_1.00_B_101913.73_P_0.98748_sl_0.98560_tp_0.00000', '20120720162009', '1'),
(48499, '11597635', 0, 'manual', 'OP1349869329_S_AUDUSD_T_0_L_1.00_B_101770.50_P_1.02475_sl_1.02395_tp_0.00000', '20121010114208', '1'),
(48500, '11797326', 0, 'manual', 'OP1350325707_S_EURUSD_T_0_L_1.00_B_25013.42_P_1.29426_sl_1.29275_tp_0.00000', '20121015182834', '0'),
(48501, '11797420', 0, 'manual', 'OP1350326115_S_EURUSD_T_0_L_1.00_B_24968.92_P_1.29422_sl_1.29275_tp_0.00000', '20121015183521', '1'),
(48502, '11843522', 0, 'manual', 'OP1350417737_S_AUDUSD_T_0_L_1.00_B_42665.19_P_1.02790_sl_1.02695_tp_0.00000', '20121016200238', '0'),
(48503, '11843590', 0, 'manual', 'OP1350418170_S_AUDUSD_T_1_L_0.50_B_42641.69_P_1.02743_sl_0.00000_tp_0.00000', '20121016200951', '1'),
(48504, '12209862', 0, 'manual', 'OP1350992292_S_GBPUSD_T_1_L_1.00_B_24942.92_P_1.59876_sl_1.59950_tp_0.00000', '20121023113812', '0'),
(48505, '12209862', 0, 'manual', 'OP1350992292_S_GBPUSD_T_1_L_1.00_B_24942.92_P_1.59876_sl_1.59950_tp_0.00000', '20121023113820', '0'),
(48506, '31121819', 0, 'manual', 'OP1351550721_S_EURUSD_T_1_L_1.00_B_9873.85_P_1.29008_sl_1.29080_tp_0.00000', '20121029204521', '1'),
(48507, '31122012', 0, 'manual', 'OP1351554144_S_EURUSD_T_0_L_1.00_B_9872.15_P_1.29039_sl_1.29000_tp_0.00000', '20121029214224', '0'),
(48508, '31128391', 0, 'manual', 'OP1351632666_S_GBPUSD_T_0_L_1.00_B_9870.50_P_1.60752_sl_1.60635_tp_0.00000', '20121030193105', '0'),
(48509, '31144348', 0, 'manual', 'OP1351818947_S_GBPUSD_T_0_L_1.00_B_9868.90_P_1.61324_sl_1.61100_tp_0.00000', '20121101231546', '1'),
(48510, '31144351', 0, 'manual', 'OP1351819020_S_GBPUSD_T_0_L_1.00_B_9866.00_P_1.61316_sl_1.61050_tp_0.00000', '20121101231659', '1'),
(48511, '31144958', 0, 'manual', 'OP1351827809_S_GBPUSD_T_0_L_1.00_B_9864.00_P_1.61136_sl_1.61076_tp_0.00000', '20121102014328', '0'),
(48512, '12917284', 0, 'manual', 'OP1352371564_S_USDCHF_T_1_L_1.00_B_25229.48_P_0.94634_sl_0.94800_tp_0.00000', '20121108104605', '1'),
(48513, '31199657', 0, 'manual', 'OP1352768679_S_GBPUSD_T_0_L_0.50_B_9860.60_P_1.58768_sl_1.58705_tp_0.00000', '20121112230436', '1'),
(48514, '31200073', 0, 'manual', 'OP1352774820_S_GBPUSD_T_0_L_0.50_B_9858.70_P_1.58681_sl_1.58571_tp_0.00000', '20121113004657', '1'),
(48515, '31200684', 0, 'manual', 'OP1352782716_S_GBPUSD_T_0_L_0.50_B_9857.80_P_1.58648_sl_1.58560_tp_0.00000', '20121113025833', '1'),
(48516, '31200729', 0, 'manual', 'OP1352782913_S_GBPUSD_T_0_L_0.50_B_9856.20_P_1.58637_sl_1.58580_tp_0.00000', '20121113030149', '0'),
(48517, '31232808', 0, 'manual', 'OP1353288606_S_EURUSD_T_0_L_1.00_B_9855.94_P_1.27513_sl_1.27400_tp_0.00000', '20121118233006', '0'),
(48518, '31233477', 0, 'manual', 'OP1353297607_S_EURUSD_T_0_L_1.00_B_9857.84_P_1.27580_sl_1.27500_tp_0.00000', '20121119020007', '0'),
(48519, '13862037', 0, 'manual', 'OP1353942845_S_EURUSD_T_1_L_1.00_B_23527.64_P_1.29696_sl_1.29950_tp_0.00000', '20121126151409', '1'),
(48520, '4747975', 0, 'manual', 'OP1353946647_S_EURUSD_T_1_L_0.03_B_407.38_P_1.29624_sl_0.00000_tp_0.00000', '20121126161727', '0'),
(48521, '4747978', 0, 'manual', 'OP1353946716_S_EURUSD_T_1_L_0.05_B_407.38_P_1.29620_sl_0.00000_tp_0.00000', '20121126161837', '0'),
(48522, '11940353', 0, 'manual', 'OP1353950674_S_EURUSD_T_0_L_1.00_B_10000.00_P_1.29599_sl_0.00000_tp_0.00000', '20121126162437', '1'),
(48523, '11940356', 0, 'manual', 'OP1353950700_S_EURUSD_T_0_L_1.00_B_10000.00_P_1.29599_sl_0.00000_tp_0.00000', '20121126162502', '1'),
(48524, '11940366', 0, 'manual', 'OP1353950870_S_AUDUSD_T_0_L_1.00_B_10000.00_P_1.04448_sl_0.00000_tp_0.00000', '20121126162753', '1'),
(48525, '11940382', 0, 'manual', 'OP1353951110_S_EURUSD_T_0_L_1.00_B_9927.00_P_1.29610_sl_0.00000_tp_0.00000', '20121126163152', '0'),
(48526, '11940385', 0, 'manual', 'OP1353951218_S_EURUSD_T_1_L_1.00_B_9927.00_P_1.29597_sl_0.00000_tp_0.00000', '20121126163340', '0'),
(48527, '11940386', 0, 'manual', 'OP1353951243_S_EURUSD_T_0_L_1.00_B_9927.00_P_1.29623_sl_0.00000_tp_0.00000', '20121126163405', '0'),
(48528, '11940557', 0, 'manual', 'OP1353961109_S_EURUSD_T_0_L_1.00_B_9927.00_P_1.29634_sl_0.00000_tp_0.00000', '20121126191831', '1'),
(48529, '11940562', 0, 'manual', 'OP1353961244_S_AUDUSD_T_0_L_1.00_B_9927.00_P_1.04537_sl_0.00000_tp_0.00000', '20121126192046', '1'),
(48530, '11940570', 0, 'manual', 'OP1353961730_S_GBPCHF_T_0_L_1.00_B_9885.00_P_1.48772_sl_0.00000_tp_0.00000', '20121126192852', '1'),
(48531, '11940586', 0, 'manual', 'OP1353962137_S_EURCAD_T_0_L_1.00_B_9806.37_P_1.28913_sl_0.00000_tp_0.00000', '20121126193539', '1'),
(48532, '11940589', 0, 'manual', 'OP1353962219_S_GBPUSD_T_2_L_1.00_B_9756.06_P_1.60168_sl_1.60127_tp_1.60226', '20121126193702', '1'),
(48533, '11940593', 0, 'manual', 'OP1353962370_S_EURUSD_T_0_L_1.00_B_9756.06_P_1.29648_sl_0.00000_tp_0.00000', '20121126193933', '1'),
(48534, '11940599', 0, 'manual', 'OP1353962555_S_EURUSD_T_0_L_1.00_B_9756.06_P_1.29636_sl_0.00000_tp_0.00000', '20121126194237', '1'),
(48535, '11940609', 0, 'manual', 'OP1353963375_S_AUDUSD_T_0_L_1.00_B_9694.06_P_1.04579_sl_0.00000_tp_0.00000', '20121126195618', '1'),
(48536, '11940610', 0, 'manual', 'OP1353963516_S_EURUSD_T_2_L_1.00_B_9660.06_P_1.29616_sl_0.00000_tp_0.00000', '20121126195839', '0'),
(48537, '11940611', 0, 'manual', 'OP1353963535_S_EURNZD_T_2_L_1.00_B_9660.06_P_1.57640_sl_0.00000_tp_0.00000', '20121126195857', '0'),
(48538, '11940614', 0, 'manual', 'OP1353963558_S_EURAUD_T_3_L_1.00_B_9660.06_P_1.23948_sl_0.00000_tp_0.00000', '20121126195921', '0'),
(48539, '11940615', 0, 'manual', 'OP1353963567_S_AUDUSD_T_0_L_1.00_B_9660.06_P_1.04601_sl_0.00000_tp_0.00000', '20121126195930', '0'),
(48540, '11940616', 0, 'manual', 'OP1353963581_S_GBPCHF_T_3_L_1.00_B_9660.06_P_1.48744_sl_0.00000_tp_0.00000', '20121126195944', '0'),
(48541, '11940621', 0, 'manual', 'OP1353963690_S_EURNZD_T_0_L_1.00_B_9660.06_P_1.57745_sl_0.00000_tp_0.00000', '20121126200133', '0'),
(48542, '11956480', 0, 'manual', 'OP1354000969_S_AUDUSD_T_0_L_1.00_B_9660.06_P_1.04807_sl_0.00000_tp_0.00000', '20121127062250', '1'),
(48543, '11957235', 0, 'manual', 'OP1354001555_S_EURUSD_T_0_L_1.00_B_9660.06_P_1.29897_sl_0.00000_tp_0.00000', '20121127063236', '1'),
(48544, '11957357', 0, 'manual', 'OP1354001652_S_GBPUSD_T_0_L_1.00_B_9660.06_P_1.60421_sl_0.00000_tp_0.00000', '20121127063412', '1'),
(48545, '194392170', 0, 'manual', 'OP1354658391_S_GBPUSD_T_1_L_1.00_B_4957.43_P_1.60992_sl_0.00000_tp_0.00000', '20121204220010', '1'),
(48546, '194392237', 0, 'manual', 'OP1354659438_S_EURUSD_T_0_L_1.00_B_4955.43_P_1.30942_sl_0.00000_tp_0.00000', '20121204221737', '1'),
(48547, '12109682', 0, 'manual', 'OP1354877326_S_GBPUSD_T_1_L_1.00_B_9883.60_P_1.60365_sl_0.00000_tp_0.00000', '20121207094844', '1'),
(48548, '12109683', 0, 'manual', 'OP1354877390_S_GBPUSD_T_0_L_1.00_B_9837.60_P_1.60406_sl_0.00000_tp_0.00000', '20121207094949', '1'),
(48549, '12109727', 0, 'manual', 'OP1354877804_S_GBPUSD_T_0_L_1.00_B_9835.60_P_1.60378_sl_0.00000_tp_0.00000', '20121207095643', '1'),
(48550, '12109757', 0, 'manual', 'OP1354878409_S_GBPUSD_T_1_L_1.00_B_9804.60_P_1.60343_sl_0.00000_tp_0.00000', '20121207100647', '1'),
(48551, '12109959', 0, 'manual', 'OP1354880993_S_GBPUSD_T_1_L_1.00_B_9744.60_P_1.60316_sl_0.00000_tp_0.00000', '20121207104951', '1'),
(48552, '12109965', 0, 'manual', 'OP1354881194_S_GBPUSD_T_1_L_1.00_B_9730.60_P_1.60302_sl_0.00000_tp_0.00000', '20121207105313', '1'),
(48553, '12110033', 0, 'manual', 'OP1354881787_S_GBPUSD_T_1_L_1.00_B_9747.60_P_1.60254_sl_0.00000_tp_0.00000', '20121207110305', '1'),
(48554, '12133863', 0, 'manual', 'OP1355339173_S_GBPUSD_T_1_L_1.00_B_9675.60_P_1.61660_sl_0.00000_tp_0.00000', '20121212180615', '1');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=410 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `groupid`, `email`, `role`, `status`, `account_number`, `keystring`, `created`, `modified`) VALUES
(1, 'admin', 'Welcome', 0, NULL, 'admin', 1, '', '', NULL, '2011-09-06 00:02:22'),
(349, '', '', 0, 'guv_kk@hotmail.com', 'user', 1, '1413684', 'forexsuccess', '2012-05-16 15:28:19', '2012-05-16 15:28:19'),
(366, '', '', 0, 'kajshfkjashf@dsajkfhsd.com', 'user', 1, '1417103', '23456', '2012-10-16 19:58:27', '2012-10-16 19:58:27'),
(352, '', '', 1, 'autosender@hotmail.com', 'user', 1, '80147886', '1234', '2012-05-16 17:02:20', '2012-05-16 17:02:20'),
(353, '', '', 1, 'jaydre@hotmail.co.uk', 'user', 1, '1413682', '1234', '2012-05-16 20:18:18', '2012-05-16 20:18:18'),
(354, '', '', 1, 'akamkolkar@hotmail.com', 'user', 0, '1000148', '4856', '2012-05-22 15:49:37', '2012-10-08 10:57:05'),
(355, '', '', 1, 'kevmitt@yahoo.com', 'user', 0, '86004277', '54d564d', '2012-05-22 17:31:01', '2012-07-03 10:46:27'),
(356, '', '', 1, 'larrydawes@gmail.com', 'user', 0, '6157621', '4554s55', '2012-05-23 08:44:58', '2012-10-08 10:56:57'),
(357, '', '', 1, 'erickva@gmail.com', 'user', 0, '405304', '8466f4f', '2012-05-23 11:20:49', '2012-06-24 14:30:47'),
(358, '', '', 1, 'jm.kramwell@gmail.com', 'user', 0, '51950', '89d3f5f56', '2012-05-24 07:41:46', '2012-07-26 11:05:17'),
(359, '', '', 1, 'dean@autohaus.net.au', 'user', 0, '409261', '444564', '2012-05-25 12:04:51', '2012-06-24 14:31:31'),
(360, '', '', 1, 'rb2139@metrocast.net', 'user', 0, '11182', '155d455', '2012-05-28 10:20:10', '2012-06-01 08:11:44'),
(361, '', '', 1, 'hamish@harvestthe.net', 'user', 0, '523617', '6154556dd', '2012-05-30 08:02:58', '2012-10-08 11:00:44'),
(371, '', '', 1, 'jaydre forex.com', 'user', 1, '91331329', '1234', '2012-11-08 10:19:28', '2012-12-07 09:08:53'),
(370, '', '', 1, 'harpal', 'user', 1, '58022900', '12345', '2012-10-30 18:44:32', '2012-10-30 18:44:32'),
(364, '', '', 0, 'jaydre', 'user', 1, '1413682', '1234', '2012-10-15 18:17:57', '2012-10-15 18:17:57'),
(365, '', '', 1, 'seanchase', 'user', 1, '1618536', '1234', '2012-10-15 18:18:49', '2012-11-26 15:11:43'),
(367, '', '', 1, 'gaurav', 'user', 0, '1417103', '1471', '2012-10-23 11:36:46', '2012-11-26 15:03:41'),
(368, '', '', 0, 'ddddd', 'user', 1, '58022900', '6789', '2012-10-29 20:41:07', '2012-10-29 20:41:07'),
(369, '', '', 1, 'alex pierce', 'user', 1, '58022622', '12345', '2012-10-30 18:28:15', '2012-12-04 22:23:34'),
(374, '', '', 0, 'Aziz Maliks', 'user', 1, '60491777', '1234', '2012-11-26 15:55:57', '2012-11-26 15:55:57'),
(373, '', '', 1, 'Aziz Malik', 'user', 1, '12354285', '1234', '2012-11-26 15:39:21', '2012-11-26 15:39:21'),
(375, '', '', 0, 'Aziz Malikss', 'user', 1, '1234617934', '1234', '2012-11-26 16:22:39', '2012-11-26 16:22:39'),
(376, '', '', 1, 'Aziz Maliksss', 'user', 1, '4038337', '1234', '2012-11-26 18:51:01', '2012-11-26 18:51:01'),
(377, '', '', 1, 'Aziz Malikssss', 'user', 1, '14242823', '1234', '2012-11-26 18:51:33', '2012-11-26 18:51:33'),
(378, '', '', 1, 'Aziz Maliksssss', 'user', 1, '1620255', '1234', '2012-11-26 18:52:11', '2012-11-26 18:52:11'),
(379, '2089612914', '1234', 1, 'aziz', 'user', 1, '2089612914', '1234', '2012-11-27 00:00:00', '2012-11-27 00:00:00'),
(381, '', '', 1, 'IBFX-J', 'user', 1, '12362465', '1234', '2012-11-26 23:08:07', '2012-11-26 23:08:07'),
(382, '', '', 1, 'Varengold-J', 'user', 1, '1234617988', '1234', '2012-11-26 23:08:46', '2012-11-26 23:08:46'),
(383, '', '', 1, 'OANDA-J', 'user', 1, '631622', '1234', '2012-11-26 23:09:10', '2012-11-26 23:09:10'),
(384, '', '', 1, 'MT4-Only', 'user', 1, '1620384', '1234', '2012-11-26 23:09:34', '2012-11-26 23:09:34'),
(385, '', '', 1, 'IBFX-J-1', 'user', 1, '12362472', '1234', '2012-11-26 23:11:56', '2012-11-26 23:11:56'),
(386, '', '', 1, 'Varengold-J-1', 'user', 1, '1234617990', '1234', '2012-11-26 23:12:22', '2012-11-26 23:12:22'),
(387, '', '', 1, 'OANDA-J-1', 'user', 1, '637110', '1234', '2012-11-26 23:13:19', '2012-11-26 23:13:19'),
(388, '', '', 1, 'MT4-Only-J-1', 'user', 1, '1213757959', '1234', '2012-11-26 23:13:54', '2012-11-26 23:13:54'),
(389, '', '', 1, 'OANDA-K', 'user', 1, '722710', '1234', '2012-11-26 23:29:58', '2012-11-26 23:29:58'),
(390, '', '', 1, 'IBFX-K', 'user', 1, '12362474', '1234', '2012-11-26 23:30:40', '2012-11-26 23:30:40'),
(391, '', '', 1, 'MT4-Only-K', 'user', 1, '1620402', '1234', '2012-11-26 23:31:25', '2012-11-26 23:31:25'),
(392, '', '', 1, 'Varengold-K', 'user', 1, '1234617992', '1234', '2012-11-26 23:32:15', '2012-11-26 23:32:15'),
(393, '', '', 1, 'FXCM-K', 'user', 1, '1417103', '1234', '2012-11-26 23:33:36', '2012-11-26 23:33:36'),
(394, '', '', 1, 'OANDA-K-1', 'user', 1, '384318', '1234', '2012-11-26 23:34:54', '2012-11-26 23:34:54'),
(395, '', '', 1, 'Varengold-K-1', 'user', 1, '1234617991', '1234', '2012-11-26 23:36:44', '2012-11-26 23:36:44'),
(396, '', '', 1, 'MT4-Only-K-1', 'user', 1, '1620401', '1234', '2012-11-26 23:37:17', '2012-11-26 23:37:17'),
(397, '', '', 1, 'IBFX-K-1', 'user', 1, '12362470', '1234', '2012-11-26 23:37:51', '2012-11-26 23:37:51'),
(398, '', '', 1, 'MT4-Only-K-2', 'user', 1, '1213757953', '1234', '2012-11-26 23:41:06', '2012-11-26 23:41:06'),
(399, '', '', 1, 'Varengold-K-2', 'user', 1, '1234617987', '1234', '2012-11-26 23:42:11', '2012-11-26 23:42:11'),
(400, '', '', 1, 'OANDA-K-2', 'user', 1, '849730', '1234', '2012-11-26 23:42:54', '2012-11-26 23:42:54'),
(401, '', '', 1, 'IBFX-K-2', 'user', 1, '12362468', '1234', '2012-11-26 23:44:42', '2012-11-26 23:44:42'),
(402, 'aziz', '1234', 1, 'aziz', 'user', 1, '1234617948', '1234', '2012-11-27 00:00:00', '2012-11-27 00:00:00'),
(407, '', '', 0, 'g.varungold', 'user', 1, '1234617992', '1234', '2012-12-07 09:47:12', '2012-12-07 09:47:12'),
(406, '', '', 1, 'g.armada', 'user', 1, '2088652373', '1234', '2012-12-07 09:44:58', '2012-12-07 09:44:58'),
(408, '', '', 1, 'jaydre.fxprimus', 'user', 1, '217730551', '1234', '2012-12-07 10:04:08', '2012-12-07 10:04:08'),
(409, '', '', 1, 'J-FXDD', 'user', 1, '80066165', '1234', '2012-12-12 18:04:08', '2012-12-12 18:04:08');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
