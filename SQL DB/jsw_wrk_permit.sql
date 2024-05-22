-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 06:40 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jsw_wrk_permit`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_name` varchar(20) NOT NULL,
  `pass_word` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_name`, `pass_word`) VALUES
('ak', '$2y$12$kjN1QjI.ASRuD7ConjQPWeUaT53aScwH1RS8zLGfL3cXBTniyOJqW'),
('keerthi', '$2y$12$qJc9qmSRjLyxcjQunjpEa.5gx2SV5CaDuFG.9Mb7hvP');

-- --------------------------------------------------------

--
-- Table structure for table `aplnt_tbl`
--

CREATE TABLE `aplnt_tbl` (
  `aplnt_emp_id` varchar(20) NOT NULL,
  `aplnt_name` varchar(50) NOT NULL,
  `aplnt_email` varchar(100) NOT NULL,
  `aplnt_phno` varchar(15) NOT NULL,
  `aplnt_doj` date DEFAULT NULL,
  `aplnt_dob` date DEFAULT NULL,
  `aplnt_dept` varchar(20) NOT NULL,
  `aplnt_password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aplnt_tbl`
--

INSERT INTO `aplnt_tbl` (`aplnt_emp_id`, `aplnt_name`, `aplnt_email`, `aplnt_phno`, `aplnt_doj`, `aplnt_dob`, `aplnt_dept`, `aplnt_password`) VALUES
('1231', 'saran', 'saran@linux.com', '789654321', '2023-07-07', '2003-09-08', 'IT', '$2b$12$b2NIrz/kRhDXDdzBqoTiueyvkzGcnWFqdH8S02/qqBdhiQteaTi7G'),
('1239', 'saran', 'saran@linux.com', '789654321', '2023-07-07', '2003-09-08', 'IT', '$2b$12$nuGEztZHebFTWmQVGw6Ew.kBpn6rBJ7XHKlinwsDS9XbViWBK71eq'),
('1243', 'riyas', 'riyas@linux.com', '9876543210', '2022-03-25', '2003-03-20', 'IT', '$2b$12$r2LIohBu2yKTwx0Fgv1wa.9ENhS/c9OdO1Q4DTdXV0uWfTegjBIgq'),
('17393', 'jdkdlfkf', 'sndmdlfkcmxk', '929498393004', '2023-09-23', '2023-09-23', 'mdkkddjdj', '$2b$12$5hh8yyXPyiEnyJXoDWOliOodICnpywLY3xZ.bYMWNnF5uJoOTlyde'),
('23677', 'Keerthi ', 'Keerthi@gmail.com', '1234455577', '2023-10-20', '2023-10-27', 'It', '$2b$12$ngdhk9/PLMc7waG8/26zme2kNYBIJjXaMoCh0avAjclcj.n.vXmry'),
('567', 'saran', 'saran@gmail.com', '1244567890', '2023-09-15', '2023-09-13', 'IT', '$2b$12$l7/RA2JN2xEOkY6d9yWajO7Jwbu5L/u/WmfPQqWxwQ8Z/z5rVK/GC');

-- --------------------------------------------------------

--
-- Table structure for table `auth_tbl`
--

CREATE TABLE `auth_tbl` (
  `auth_emp_id` varchar(20) NOT NULL,
  `auth_name` varchar(50) NOT NULL,
  `auth_email` varchar(100) NOT NULL,
  `auth_phno` varchar(15) NOT NULL,
  `auth_doj` date DEFAULT NULL,
  `auth_dob` date DEFAULT NULL,
  `auth_dept` varchar(20) NOT NULL,
  `auth_password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_tbl`
--

INSERT INTO `auth_tbl` (`auth_emp_id`, `auth_name`, `auth_email`, `auth_phno`, `auth_doj`, `auth_dob`, `auth_dept`, `auth_password`) VALUES
('1231', 'saran', 'saran@linux.com', '789654321', '2023-07-07', '2003-09-08', 'IT', '$2b$12$nB7TPMyc4lVqZcCpdzhf2e1hlo2YnyJzDIPjc1nA0Qm1M.CcqWHM6');

-- --------------------------------------------------------

--
-- Table structure for table `certi_1_other_hazards`
--

CREATE TABLE `certi_1_other_hazards` (
  `id` int(11) NOT NULL,
  `certi_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `is_checked` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certi_1_other_hazards`
--

INSERT INTO `certi_1_other_hazards` (`id`, `certi_id`, `name`, `is_checked`) VALUES
(1, 1, 'toxic material', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cert_1_tbl`
--

CREATE TABLE `cert_1_tbl` (
  `cert_1_id` int(11) NOT NULL,
  `pmt_no` int(11) NOT NULL,
  `aplnt_name` varchar(20) NOT NULL,
  `date_of_issue` date DEFAULT NULL,
  `plant` int(11) NOT NULL,
  `dept` int(11) NOT NULL,
  `csi_no` int(11) NOT NULL,
  `desc_sc` varchar(100) NOT NULL,
  `wrk_desc` varchar(100) NOT NULL,
  `chemical_used` varchar(100) NOT NULL,
  `welding` varchar(50) NOT NULL,
  `burning` varchar(50) NOT NULL,
  `open_flame` varchar(50) NOT NULL,
  `chipping` varchar(50) NOT NULL,
  `grinding` varchar(50) NOT NULL,
  `drilling` varchar(50) NOT NULL,
  `electrical` varchar(50) NOT NULL,
  `rotating_space` varchar(50) NOT NULL,
  `task_generation` varchar(50) NOT NULL,
  `other_hazards` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cert_1_tbl`
--

INSERT INTO `cert_1_tbl` (`cert_1_id`, `pmt_no`, `aplnt_name`, `date_of_issue`, `plant`, `dept`, `csi_no`, `desc_sc`, `wrk_desc`, `chemical_used`, `welding`, `burning`, `open_flame`, `chipping`, `grinding`, `drilling`, `electrical`, `rotating_space`, `task_generation`, `other_hazards`) VALUES
(1, 1, '', NULL, 1, 1, 0, '', '', '', '', '', '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cert_2_tbl`
--

CREATE TABLE `cert_2_tbl` (
  `cert_2_id` int(11) NOT NULL,
  `pmt_no` int(11) NOT NULL,
  `loto_date` date NOT NULL DEFAULT current_timestamp(),
  `time` time NOT NULL,
  `aplnt_name` varchar(30) NOT NULL,
  `dic` varchar(30) NOT NULL,
  `dept` varchar(30) NOT NULL,
  `loc` varchar(30) NOT NULL,
  `ep_iso` varchar(30) NOT NULL,
  `padlockNo_2_1` varchar(50) NOT NULL,
  `padlockNo_2_2` varchar(50) NOT NULL,
  `padlockNo_2_3` varchar(50) NOT NULL,
  `padlockNo_2_4` varchar(50) NOT NULL,
  `padlockNo_2_5` varchar(50) NOT NULL,
  `padlockNo_2_6` varchar(50) NOT NULL,
  `tagged_2_1` varchar(50) NOT NULL,
  `tagged_2_2` varchar(50) NOT NULL,
  `tagged_2_3` varchar(50) NOT NULL,
  `tagged_2_4` varchar(50) NOT NULL,
  `tagged_2_5` varchar(50) NOT NULL,
  `tagged_2_6` varchar(50) NOT NULL,
  `remarks_2_1` varchar(50) NOT NULL,
  `remarks_2_2` varchar(50) NOT NULL,
  `remarks_2_3` varchar(50) NOT NULL,
  `remarks_2_4` varchar(50) NOT NULL,
  `remarks_2_5` varchar(50) NOT NULL,
  `remarks_2_6` varchar(50) NOT NULL,
  `auth_emp_id` int(11) NOT NULL,
  `in_charge` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cert_2_tbl`
--

INSERT INTO `cert_2_tbl` (`cert_2_id`, `pmt_no`, `loto_date`, `time`, `aplnt_name`, `dic`, `dept`, `loc`, `ep_iso`, `padlockNo_2_1`, `padlockNo_2_2`, `padlockNo_2_3`, `padlockNo_2_4`, `padlockNo_2_5`, `padlockNo_2_6`, `tagged_2_1`, `tagged_2_2`, `tagged_2_3`, `tagged_2_4`, `tagged_2_5`, `tagged_2_6`, `remarks_2_1`, `remarks_2_2`, `remarks_2_3`, `remarks_2_4`, `remarks_2_5`, `remarks_2_6`, `auth_emp_id`, `in_charge`) VALUES
(1, 0, '2023-10-18', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, ''),
(2, 1, '2023-10-18', '16:34:06', 'ytesrth', '', '', 'yrjwryj', 'rjwrjwrtr', 'wrthjwrtsjww', 'etrhseth', 'etheqtrh', 'eahtaeth', 'aehaerh', 'aerhaertrh', 'rhAERHE', 'ethwth', 'rwthjwtrjh', 'wertrhwtr', 'wrthwrteh', 'tehwthe', 'ethaeth', 'etahaeth', 'jhbhjkb', 'blhbhjb', 'jhblhbh', 'hvhjvhvh', 1231, 'dhhnsryjn'),
(3, 150, '2023-10-19', '19:58:00', 'gyhhi', '', '', 'option1', 'option1', 'option1', 'ftgfcghfkg', 'sfvasfv', 'srdfefg', 'sfvbasfb', 'sdvasfvb', 'svsVBSRSVBR', 'SDDVASFVB', 'no', 'yes', 'no', 'yes', 'no', 'yes', 'asfvasfv', 'afvafv', 'asfvafvb', 'asfbasfbasfb', 0, 'sfVBASFVB');

-- --------------------------------------------------------

--
-- Table structure for table `cert_3_tbl`
--

CREATE TABLE `cert_3_tbl` (
  `cert_3_id` int(11) NOT NULL,
  `pmt_no` int(11) NOT NULL,
  `wrj_type` int(3) NOT NULL,
  `plant` varchar(30) NOT NULL,
  `eqp_tag_no` int(11) NOT NULL,
  `detials` varchar(50) NOT NULL,
  `cont_name` varchar(30) NOT NULL,
  `no_of_workers` int(11) NOT NULL,
  `loc` varchar(30) NOT NULL,
  `dic` varchar(30) NOT NULL,
  `dept` varchar(30) NOT NULL,
  `loc_` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `time` time NOT NULL,
  `explosive_test` varchar(30) NOT NULL,
  `pow_fuse` varchar(30) NOT NULL,
  `heat_fuse` varchar(30) NOT NULL,
  `break` varchar(30) NOT NULL,
  `tag_provided` varchar(30) NOT NULL,
  `tag_no` varchar(30) NOT NULL,
  `short_circuited` varchar(30) NOT NULL,
  `earth` varchar(30) NOT NULL,
  `gloves` varchar(30) NOT NULL,
  `others` varchar(30) NOT NULL,
  `special_ins` varchar(50) NOT NULL,
  `valid_time` time NOT NULL,
  `valid_date` date NOT NULL DEFAULT current_timestamp(),
  `ele_name` varchar(30) NOT NULL,
  `app_date` date NOT NULL DEFAULT current_timestamp(),
  `app_time` time NOT NULL,
  `auth_name` varchar(30) NOT NULL,
  `auth_date` date NOT NULL DEFAULT current_timestamp(),
  `auth_time` time NOT NULL,
  `holder_name` varchar(30) NOT NULL,
  `hold_date` date NOT NULL DEFAULT current_timestamp(),
  `hold_time` time NOT NULL,
  `ext1_app_name` varchar(30) NOT NULL,
  `ext1_auth_name` varchar(30) NOT NULL,
  `ext1_date` date NOT NULL DEFAULT current_timestamp(),
  `ext1_time` time NOT NULL,
  `ext2_app_name` varchar(30) NOT NULL,
  `ext2_auth_name` varchar(30) NOT NULL,
  `ext2_date` date NOT NULL DEFAULT current_timestamp(),
  `ext2_time` time NOT NULL,
  `close_name` varchar(30) NOT NULL,
  `close_date` date NOT NULL DEFAULT current_timestamp(),
  `close_time` time NOT NULL,
  `close_auth_name` varchar(30) NOT NULL,
  `close_auth_date` date NOT NULL DEFAULT current_timestamp(),
  `close_auth_time` time NOT NULL,
  `permit_name` varchar(30) NOT NULL,
  `permit_date` date NOT NULL DEFAULT current_timestamp(),
  `permit_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cert_3_tbl`
--

INSERT INTO `cert_3_tbl` (`cert_3_id`, `pmt_no`, `wrj_type`, `plant`, `eqp_tag_no`, `detials`, `cont_name`, `no_of_workers`, `loc`, `dic`, `dept`, `loc_`, `name`, `date`, `time`, `explosive_test`, `pow_fuse`, `heat_fuse`, `break`, `tag_provided`, `tag_no`, `short_circuited`, `earth`, `gloves`, `others`, `special_ins`, `valid_time`, `valid_date`, `ele_name`, `app_date`, `app_time`, `auth_name`, `auth_date`, `auth_time`, `holder_name`, `hold_date`, `hold_time`, `ext1_app_name`, `ext1_auth_name`, `ext1_date`, `ext1_time`, `ext2_app_name`, `ext2_auth_name`, `ext2_date`, `ext2_time`, `close_name`, `close_date`, `close_time`, `close_auth_name`, `close_auth_date`, `close_auth_time`, `permit_name`, `permit_date`, `permit_time`) VALUES
(1, 0, 0, '', 0, '', '', 0, '', '', '', '', '', '2023-10-26', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '00:00:00', '2023-10-26', '', '2023-10-26', '00:00:00', '', '2023-10-26', '00:00:00', '', '2023-10-26', '00:00:00', '', '', '2023-10-26', '00:00:00', '', '', '2023-10-26', '00:00:00', '', '2023-10-26', '00:00:00', '', '2023-10-26', '00:00:00', '', '2023-10-26', '00:00:00'),
(2, 2, 0, '6tyytd', 52, 'rgrgerg', 'rrgaergaer', 5, 'WSRGW', 'eagae', 'sfgasrgr', 'sfgbsf', 'sfvsffgb', '2023-11-24', '16:34:06', 'vyivg', 'khbjh ', 'g gk gh ', 'vuvgvg', 'hgv gh gh ', ' vgy gh gv', 'g h h h  gh ', 'gvgvgvg', 'ghgcvutcvt', 'vtvtyvytvtv', 'h g hg', '22:40:31', '2023-11-24', ' hgvgh g ', '2023-11-24', '18:40:31', 'gj jg jh g', '2023-11-24', '20:40:31', 'g gj   vh vh vh', '2023-11-24', '18:40:31', 'uv jg  jkgb ', 'h gk  ', '2023-11-24', '22:40:31', 'g jghg gj ', 'hg g g ', '2023-11-24', '10:45:31', 'hvghgvghjhvv', '2023-11-24', '20:40:31', 'h gjk g ', '2023-11-24', '10:40:31', 'gv jgh', '2023-11-24', '10:40:24');

-- --------------------------------------------------------

--
-- Table structure for table `cert_4_tbl`
--

CREATE TABLE `cert_4_tbl` (
  `cert_4_id` int(11) NOT NULL,
  `pmt_no` int(11) NOT NULL,
  `date_of_issue` text NOT NULL,
  `valid_from` time NOT NULL,
  `valid_to` time NOT NULL,
  `aplnt_name` varchar(20) NOT NULL,
  `dic` varchar(30) NOT NULL,
  `dept` varchar(30) NOT NULL,
  `loc` varchar(30) NOT NULL,
  `desc_wrk` varchar(50) NOT NULL,
  `risk_asmt` varchar(10) NOT NULL,
  `contractor` varchar(10) NOT NULL,
  `safe_access` varchar(10) NOT NULL,
  `wrk_platform` varchar(10) NOT NULL,
  `fall_proct` varchar(10) NOT NULL,
  `wrkmen_med` varchar(10) NOT NULL,
  `vicinity` varchar(10) NOT NULL,
  `obj_fall` varchar(10) NOT NULL,
  `unauth_entries` varchar(10) NOT NULL,
  `elevation` varchar(10) NOT NULL,
  `other` varchar(10) NOT NULL,
  `auth_name` varchar(20) NOT NULL,
  `auth_dept` varchar(20) NOT NULL,
  `permit_holder` varchar(20) NOT NULL,
  `date_of_trans` date DEFAULT NULL,
  `t_time_frm` time NOT NULL,
  `t_time_to` time NOT NULL,
  `hldr_name` varchar(20) NOT NULL,
  `aplnt_name_t` varchar(20) NOT NULL,
  `auth_name_t` varchar(20) NOT NULL,
  `remark` varchar(20) NOT NULL,
  `p_holder_3` varchar(20) NOT NULL,
  `doc_3` date DEFAULT NULL,
  `toc_3` time NOT NULL,
  `auth_4` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cert_4_tbl`
--

INSERT INTO `cert_4_tbl` (`cert_4_id`, `pmt_no`, `date_of_issue`, `valid_from`, `valid_to`, `aplnt_name`, `dic`, `dept`, `loc`, `desc_wrk`, `risk_asmt`, `contractor`, `safe_access`, `wrk_platform`, `fall_proct`, `wrkmen_med`, `vicinity`, `obj_fall`, `unauth_entries`, `elevation`, `other`, `auth_name`, `auth_dept`, `permit_holder`, `date_of_trans`, `t_time_frm`, `t_time_to`, `hldr_name`, `aplnt_name_t`, `auth_name_t`, `remark`, `p_holder_3`, `doc_3`, `toc_3`, `auth_4`) VALUES
(1, 0, '', '00:00:00', '00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '00:00:00', '00:00:00', '', '', '', '', '', NULL, '00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `cert_5_tbl`
--

CREATE TABLE `cert_5_tbl` (
  `cert_5_id` int(11) NOT NULL,
  `pmt_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cert_5_tbl`
--

INSERT INTO `cert_5_tbl` (`cert_5_id`, `pmt_no`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cert_6_tbl`
--

CREATE TABLE `cert_6_tbl` (
  `cert_6_id` int(11) NOT NULL,
  `pmt_no` int(11) NOT NULL,
  `dic` varchar(30) NOT NULL,
  `dept` varchar(30) NOT NULL,
  `loc` varchar(20) NOT NULL,
  `time` time NOT NULL DEFAULT current_timestamp(),
  `date` date NOT NULL DEFAULT current_timestamp(),
  `load_d` varchar(70) NOT NULL,
  `load_w` varchar(70) NOT NULL,
  `dimen` varchar(50) NOT NULL,
  `crane` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `model` varchar(30) NOT NULL,
  `cpt_cert` varchar(30) NOT NULL,
  `max_opr_rad` varchar(30) NOT NULL,
  `boom_len` varchar(30) NOT NULL,
  `jib_length` varchar(30) NOT NULL,
  `jib_offset` varchar(30) NOT NULL,
  `attachment` varchar(30) NOT NULL,
  `counter_weight_required` varchar(30) NOT NULL,
  `vcb` varchar(30) NOT NULL,
  `driving_lic` varchar(30) NOT NULL,
  `med_fit` varchar(30) NOT NULL,
  `oem` varchar(30) NOT NULL,
  `crane_operator` varchar(30) NOT NULL,
  `obstruction` varchar(30) NOT NULL,
  `dis_frm_power` varchar(30) NOT NULL,
  `ground_stability` varchar(30) NOT NULL,
  `underground` varchar(30) NOT NULL,
  `mats` varchar(30) NOT NULL,
  `lifting_cap` varchar(30) NOT NULL,
  `weight_of_load` varchar(30) NOT NULL,
  `weight_of_acc` varchar(30) NOT NULL,
  `weight_of_lift` varchar(30) NOT NULL,
  `auth_eng` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cert_6_tbl`
--

INSERT INTO `cert_6_tbl` (`cert_6_id`, `pmt_no`, `dic`, `dept`, `loc`, `time`, `date`, `load_d`, `load_w`, `dimen`, `crane`, `type`, `model`, `cpt_cert`, `max_opr_rad`, `boom_len`, `jib_length`, `jib_offset`, `attachment`, `counter_weight_required`, `vcb`, `driving_lic`, `med_fit`, `oem`, `crane_operator`, `obstruction`, `dis_frm_power`, `ground_stability`, `underground`, `mats`, `lifting_cap`, `weight_of_load`, `weight_of_acc`, `weight_of_lift`, `auth_eng`) VALUES
(0, 0, '', '', 'volvo', '00:00:00', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(1, 0, '', '', '', '17:28:08', '2023-10-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 1, '', '', 'edrftghyj', '00:00:00', '2023-10-12', 'hgfdsajhgfds', 'jhgfdsjhgf', 'jhgfdsa', 'jhgfds', 'jhgfds', 'sdfghgfds', '', 'sdfghj', 'zxcvbnm', 'sedrftgyh', 'sdfgh', 'sdfvgbn', 'sdfgbhnm', 'xcvbn', 'dfghnm', 'xcvbn', 'sdfghj', 'hgfds', '', '', '', '', '', 'hgvfcdxs', 'hgfds', 'hgfds', 'hgfds', ''),
(3, 2, '', '', 'edrftghyj', '00:00:00', '2023-10-12', 'hgfdsajhgfds', 'jhgfdsjhgf', 'jhgfdsa', 'jhgfds', 'jhgfds', 'sdfghgfds', '', 'sdfghj', 'zxcvbnm', 'sedrftgyh', 'sdfgh', 'sdfvgbn', 'sdfgbhnm', 'xcvbn', 'dfghnm', 'xcvbn', 'sdfghj', 'hgfds', '', '', '', '', '', 'hgvfcdxs', 'hgfds', 'hgfds', 'hgfds', ''),
(4, 3, '', '', 'volvo', '19:01:00', '0000-00-00', 'ergnentyn', 'jnllj', 'hhjlh', 'hnujhu', 'uohoihoih', 'hnhioh', '', 'oiohoihuoh', 'jhohnouhn', 'jhnuohouh', 'hhouhou', 'hiohoihj', 'hhnohi', 'hohoho', 'iohiohio', 'ihiohiohio', 'hihohioh', 'ihiohoih', '', '', '', '', '', 'nhohnouh', 'jhoiuh', 'nouh', 'booihoi', ''),
(9, 8, '', '', 'Others', '11:07:00', '0000-00-00', 'duck', 'duck', 'redd', 'hero', 'gg', 'dark', '', 'gg', 'calc', 'creek', 'ftghh', 'didi', 'creativity', 'bee', 'cycle', 'deep', 'train', 'bddhh', 'uuuyu', 'chick', 'ftghh', 'tech', 'chick', 'feeding', 'TT', 'jee', 'creek', 'creek'),
(14, 13, '', '', 'Others', '12:13:00', '0000-00-00', 'chhu', 'vill', 'chummi ', 'Nick', 'yam', 'chhu', '', 'mo', 'bhi', 'Buji', 'khu', 'CNN', 'ch', 'kal', 'kani', 'nahi', 'full', 'hhjj', 'Buji', 'Bu LK', 'chi', 'bdi', 'cc', 'DM', 'KD', 'GM', 'bhi', 'chi'),
(16, 15, '', '', 'Others', '12:13:00', '2023-10-16', 'chhu', 'vill', 'chummi ', 'Nick', 'yam', 'chhu', '', 'mo', 'bhi', 'Buji', 'khu', 'CNN', 'ch', 'kal', 'kani', 'nahi', 'full', 'hhjj', 'Buji', 'Bu LK', 'chi', 'bdi', 'cc', 'DM', 'KD', 'GM', 'bhi', 'chi'),
(13838, 13728, '', '', 'Others', '03:07:00', '2023-10-12', 'sjdj', 'hhjj', 'jjjj', 'jdjdj', 'dhdjdj', 'dhdjdj', '', 'akakak', 'aakaka', 'akakak', 'akaka', 'ajakak', 'smaal', 'apaoap', 'alall', 'eididnd', 'apalql', 'apqpal', 'rpfjfk', 'skskdj', 'wkskdkdj', 'woskdkdk', 'skskdk', 'jeidjdj', 'sjsjsj', 'djsjsj', 'sjjsjs', 'djsks'),
(4546767, 894979, '', '', 'saab', '14:18:00', '0000-00-00', 'Djdjk', 'Dkd', 'Dk', 'Djdk', 'Djdkd', 'Djdjd', '', 'Jdjdjd', 'Djdkd', 'Djdkdm', 'Djdmdmd', 'Jdjdkdd', 'Jdjdkdkd', 'Djdjdkdkd', 'Djdjdkmd', 'Djdjdkmddk', 'Jdjfkfkfkd', 'Djdjdkkd', '', '', '', '', '', 'Jddjdkkd', 'Djdjkdkd', 'Jdjdkdkf', 'Jdjdkdkd', '');

-- --------------------------------------------------------

--
-- Table structure for table `cert_7_tbl`
--

CREATE TABLE `cert_7_tbl` (
  `cert_7_id` int(11) NOT NULL,
  `pmt_no` int(11) NOT NULL,
  `aplnt_name` varchar(20) NOT NULL,
  `auth_name` varchar(20) NOT NULL,
  `dic` varchar(20) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `loc` varchar(20) NOT NULL,
  `wrk_agency` varchar(20) NOT NULL,
  `hydra` varchar(20) NOT NULL,
  `j_time_from` time NOT NULL,
  `j_time_to` time NOT NULL,
  `j_dt_from` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cert_7_tbl`
--

INSERT INTO `cert_7_tbl` (`cert_7_id`, `pmt_no`, `aplnt_name`, `auth_name`, `dic`, `dept`, `loc`, `wrk_agency`, `hydra`, `j_time_from`, `j_time_to`, `j_dt_from`) VALUES
(1, 0, '', '', '', '', '', '', '', '00:00:00', '00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cert_8_tbl`
--

CREATE TABLE `cert_8_tbl` (
  `cert_8_id` int(11) NOT NULL,
  `pmt_no` int(11) NOT NULL,
  `plant` varchar(30) NOT NULL,
  `eq_no` varchar(30) NOT NULL,
  `contractor` varchar(30) NOT NULL,
  `workers` varchar(30) NOT NULL,
  `alternate_route` int(1) NOT NULL,
  `alternate_route_desc` varchar(40) NOT NULL,
  `temp_barricade` int(1) NOT NULL,
  `phy_barricade` int(1) NOT NULL,
  `warning_sign` int(1) NOT NULL,
  `f_alter_route` int(1) NOT NULL,
  `f_alter_sugg` varchar(30) NOT NULL,
  `f_security_dept` int(1) NOT NULL,
  `f_security_dept_sugg` varchar(30) NOT NULL,
  `fire_dept_name` varchar(30) NOT NULL,
  `f_date` date DEFAULT NULL,
  `f_time` time NOT NULL,
  `security_dept_name` varchar(30) NOT NULL,
  `s_date` date DEFAULT NULL,
  `s_time` time NOT NULL,
  `spec_ins` varchar(30) NOT NULL,
  `permit_valid` int(11) NOT NULL,
  `permit_valid_dt` date DEFAULT NULL,
  `aplnt_des` varchar(20) NOT NULL,
  `aplnt_name` varchar(30) NOT NULL,
  `a_date` date DEFAULT NULL,
  `a_time` time NOT NULL,
  `auth_des` varchar(30) NOT NULL,
  `auth_name` varchar(30) NOT NULL,
  `au_date` date DEFAULT NULL,
  `au_time` time NOT NULL,
  `permit_hdr_des` varchar(30) NOT NULL,
  `permit_hdr_name` varchar(30) NOT NULL,
  `permit_h_date` date DEFAULT NULL,
  `permit_h_time` time NOT NULL,
  `ext1_aplnt_name` varchar(30) NOT NULL,
  `ext1_acc_auth` varchar(30) NOT NULL,
  `ext1_date` date DEFAULT NULL,
  `ext1_time` time NOT NULL,
  `ext2_aplnt_name` varchar(30) NOT NULL,
  `ext2_acc_auth` varchar(30) NOT NULL,
  `ext2_date` date DEFAULT NULL,
  `ext2_time` time NOT NULL,
  `ext3_aplnt_name` varchar(30) NOT NULL,
  `ext3_acc_auth` varchar(30) NOT NULL,
  `ext3_date` date DEFAULT NULL,
  `ext3_time` time NOT NULL,
  `ext4_aplnt_name` varchar(30) NOT NULL,
  `ext4_acc_auth` varchar(30) NOT NULL,
  `ext4_date` date DEFAULT NULL,
  `ext4_time` time NOT NULL,
  `ext5_aplnt_name` varchar(30) NOT NULL,
  `ext5_acc_auth` varchar(30) NOT NULL,
  `ext5_date` date DEFAULT NULL,
  `ext5_time` time NOT NULL,
  `ext6_aplnt_name` varchar(30) NOT NULL,
  `ext6_acc_auth` varchar(30) NOT NULL,
  `ext6_date` date DEFAULT NULL,
  `ext6_time` time NOT NULL,
  `com_aplnt_name` varchar(30) NOT NULL,
  `com_date` date DEFAULT NULL,
  `com_time` time NOT NULL,
  `com_auth` varchar(30) NOT NULL,
  `com_auth_date` date DEFAULT NULL,
  `com_auth_time` time NOT NULL,
  `com_permit_name` varchar(30) NOT NULL,
  `com_permit_date` date DEFAULT NULL,
  `com_permit_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cert_8_tbl`
--

INSERT INTO `cert_8_tbl` (`cert_8_id`, `pmt_no`, `plant`, `eq_no`, `contractor`, `workers`, `alternate_route`, `alternate_route_desc`, `temp_barricade`, `phy_barricade`, `warning_sign`, `f_alter_route`, `f_alter_sugg`, `f_security_dept`, `f_security_dept_sugg`, `fire_dept_name`, `f_date`, `f_time`, `security_dept_name`, `s_date`, `s_time`, `spec_ins`, `permit_valid`, `permit_valid_dt`, `aplnt_des`, `aplnt_name`, `a_date`, `a_time`, `auth_des`, `auth_name`, `au_date`, `au_time`, `permit_hdr_des`, `permit_hdr_name`, `permit_h_date`, `permit_h_time`, `ext1_aplnt_name`, `ext1_acc_auth`, `ext1_date`, `ext1_time`, `ext2_aplnt_name`, `ext2_acc_auth`, `ext2_date`, `ext2_time`, `ext3_aplnt_name`, `ext3_acc_auth`, `ext3_date`, `ext3_time`, `ext4_aplnt_name`, `ext4_acc_auth`, `ext4_date`, `ext4_time`, `ext5_aplnt_name`, `ext5_acc_auth`, `ext5_date`, `ext5_time`, `ext6_aplnt_name`, `ext6_acc_auth`, `ext6_date`, `ext6_time`, `com_aplnt_name`, `com_date`, `com_time`, `com_auth`, `com_auth_date`, `com_auth_time`, `com_permit_name`, `com_permit_date`, `com_permit_time`) VALUES
(1, 0, '', '', '', '', 0, '', 0, 0, 0, 0, '', 0, '', '', NULL, '00:00:00', '', NULL, '00:00:00', '', 0, NULL, '', '', NULL, '00:00:00', '', '', NULL, '00:00:00', '', '', NULL, '00:00:00', '', '', NULL, '00:00:00', '', '', NULL, '00:00:00', '', '', NULL, '00:00:00', '', '', NULL, '00:00:00', '', '', NULL, '00:00:00', '', '', NULL, '00:00:00', '', NULL, '00:00:00', '', NULL, '00:00:00', '', NULL, '00:00:00'),
(2, 1, 'gbgrb', 'rhner', 'hetrnerhn', 'rehnenh', 1, 'rgnwrg', 0, 0, 1, 0, 'wgngg', 0, 'dgbs', 'bsedb', '2023-12-12', '19:30:49', 'sfbadb', '2023-12-18', '23:30:49', 'b sg', 2, '2023-12-19', 'jnjwnertb', 'ynhtehj', '2023-12-18', '19:30:49', 'eymrn', 'ryjryj', '2023-12-19', '20:30:49', 'mndfng', 'srnfgng', '2023-12-19', '10:35:49', 'sfrhnfg', 'sfgnsfn', '2023-12-19', '10:35:49', 'fhmnsfgn', 'snsdgn', '2023-12-19', '10:35:49', 'ryjrhsrth', 'ehathjaet', '2023-12-19', '19:30:49', 'sthaeth', 'eatheth', '2023-12-19', '10:30:42', 'tnhjenthj', 'adekjthnjetnh', '2023-12-19', '20:30:49', 'gnsn', 'aenthasterh', '2023-12-19', '19:30:49', 'ejtjhnweethnkt', '2023-12-20', '20:30:49', 'j,tuftufk', '2023-12-20', '10:30:53', 'fdtyykt', '2023-12-21', '10:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `cert_9_tbl`
--

CREATE TABLE `cert_9_tbl` (
  `cert_9_id` int(11) NOT NULL,
  `pmt_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cert_10_tbl`
--

CREATE TABLE `cert_10_tbl` (
  `cert_10_id` int(11) NOT NULL,
  `pmt_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dept_`
--

CREATE TABLE `dept_` (
  `id` int(11) NOT NULL,
  `dept_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dept_`
--

INSERT INTO `dept_` (`id`, `dept_name`) VALUES
(1, 'quality control'),
(2, 'production'),
(3, 'testing');

-- --------------------------------------------------------

--
-- Table structure for table `plant_`
--

CREATE TABLE `plant_` (
  `plnt_id` int(11) NOT NULL,
  `plnt_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plant_`
--

INSERT INTO `plant_` (`plnt_id`, `plnt_name`) VALUES
(1, 'cemet');

-- --------------------------------------------------------

--
-- Table structure for table `pmt_tbl`
--

CREATE TABLE `pmt_tbl` (
  `pmt_id` int(11) NOT NULL,
  `pmt_no` int(11) NOT NULL,
  `work_type` int(11) NOT NULL,
  `from_dt` date NOT NULL,
  `to_dt` date NOT NULL,
  `frm_time` time NOT NULL,
  `to_time` time NOT NULL,
  `dic` varchar(30) NOT NULL,
  `wrk_dept` varchar(20) NOT NULL,
  `wrk_loct` varchar(50) NOT NULL,
  `wrk_dsc` varchar(80) NOT NULL,
  `shutdown_auth` int(2) NOT NULL,
  `sft_1` int(11) NOT NULL,
  `sft_1_dsc` varchar(30) NOT NULL,
  `sft_2` int(11) NOT NULL,
  `sft_2_dsc` varchar(30) NOT NULL,
  `sft_3` int(11) NOT NULL,
  `sft_3_dsc` varchar(30) NOT NULL,
  `sft_4` int(11) NOT NULL,
  `sft_4_dsc` varchar(30) NOT NULL,
  `sft_5` int(11) NOT NULL,
  `sft_5_dsc` varchar(30) NOT NULL,
  `sft_6` int(11) NOT NULL,
  `sft_6_dsc` varchar(30) NOT NULL,
  `sft_7` int(11) NOT NULL,
  `sft_7_dsc` varchar(30) NOT NULL,
  `sft_8` int(11) NOT NULL,
  `sft_8_dsc` varchar(30) NOT NULL,
  `ppe_1` int(11) NOT NULL,
  `ppe_2` int(11) NOT NULL,
  `ppe_3` int(11) NOT NULL,
  `ppe_4` int(11) NOT NULL,
  `ppe_5` int(11) NOT NULL,
  `ppe_6` int(11) NOT NULL,
  `ppe_7` int(11) NOT NULL,
  `ppe_8` int(11) NOT NULL,
  `fire_1` int(11) NOT NULL,
  `fire_2` int(11) NOT NULL,
  `fire_3` int(11) NOT NULL,
  `fire_4` int(11) NOT NULL,
  `fire_5` int(11) NOT NULL,
  `fire_6` int(11) NOT NULL,
  `fire_7` int(11) NOT NULL,
  `fire_8` int(11) NOT NULL,
  `cert_1_id` int(11) NOT NULL,
  `cert_2_id` int(11) NOT NULL,
  `cert_3_id` int(11) NOT NULL,
  `cert_4_id` int(11) NOT NULL,
  `cert_5_id` int(11) NOT NULL,
  `cert_6_id` int(11) NOT NULL,
  `cert_7_id` int(11) NOT NULL,
  `cert_8_id` int(11) NOT NULL,
  `auth_emp_id` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pmt_tbl`
--

INSERT INTO `pmt_tbl` (`pmt_id`, `pmt_no`, `work_type`, `from_dt`, `to_dt`, `frm_time`, `to_time`, `dic`, `wrk_dept`, `wrk_loct`, `wrk_dsc`, `shutdown_auth`, `sft_1`, `sft_1_dsc`, `sft_2`, `sft_2_dsc`, `sft_3`, `sft_3_dsc`, `sft_4`, `sft_4_dsc`, `sft_5`, `sft_5_dsc`, `sft_6`, `sft_6_dsc`, `sft_7`, `sft_7_dsc`, `sft_8`, `sft_8_dsc`, `ppe_1`, `ppe_2`, `ppe_3`, `ppe_4`, `ppe_5`, `ppe_6`, `ppe_7`, `ppe_8`, `fire_1`, `fire_2`, `fire_3`, `fire_4`, `fire_5`, `fire_6`, `fire_7`, `fire_8`, `cert_1_id`, `cert_2_id`, `cert_3_id`, `cert_4_id`, `cert_5_id`, `cert_6_id`, `cert_7_id`, `cert_8_id`, `auth_emp_id`, `status`) VALUES
(1, 1, 1, '2023-09-28', '2023-09-28', '16:49:34', '16:49:34', '', 'sdfghj', 'sfhaehe', 'fgysDVGwdvhWDVJHJdgvhWDV', 0, 1, 'edfghjkl', 2, 'erty', 3, 'dfghjk', 4, 'kjhgfdxz', 5, 'fdssdfd', 6, 'thewhwehgw', 7, 'qwrgqerg', 8, 'ergqerg', 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 1, 1, 1, 1, 1, 1, 1, 1, '1231', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_name`);

--
-- Indexes for table `aplnt_tbl`
--
ALTER TABLE `aplnt_tbl`
  ADD PRIMARY KEY (`aplnt_emp_id`);

--
-- Indexes for table `auth_tbl`
--
ALTER TABLE `auth_tbl`
  ADD PRIMARY KEY (`auth_emp_id`);

--
-- Indexes for table `certi_1_other_hazards`
--
ALTER TABLE `certi_1_other_hazards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `certi_id` (`certi_id`);

--
-- Indexes for table `cert_1_tbl`
--
ALTER TABLE `cert_1_tbl`
  ADD PRIMARY KEY (`cert_1_id`),
  ADD UNIQUE KEY `pmt_no` (`pmt_no`),
  ADD KEY `foregin_plant` (`plant`),
  ADD KEY `foregin_dept` (`dept`),
  ADD KEY `foregin_other_hazards` (`other_hazards`);

--
-- Indexes for table `cert_2_tbl`
--
ALTER TABLE `cert_2_tbl`
  ADD PRIMARY KEY (`cert_2_id`);

--
-- Indexes for table `cert_3_tbl`
--
ALTER TABLE `cert_3_tbl`
  ADD PRIMARY KEY (`cert_3_id`);

--
-- Indexes for table `cert_4_tbl`
--
ALTER TABLE `cert_4_tbl`
  ADD PRIMARY KEY (`cert_4_id`);

--
-- Indexes for table `cert_5_tbl`
--
ALTER TABLE `cert_5_tbl`
  ADD PRIMARY KEY (`cert_5_id`);

--
-- Indexes for table `cert_6_tbl`
--
ALTER TABLE `cert_6_tbl`
  ADD PRIMARY KEY (`cert_6_id`);

--
-- Indexes for table `cert_7_tbl`
--
ALTER TABLE `cert_7_tbl`
  ADD PRIMARY KEY (`cert_7_id`);

--
-- Indexes for table `cert_8_tbl`
--
ALTER TABLE `cert_8_tbl`
  ADD PRIMARY KEY (`cert_8_id`);

--
-- Indexes for table `cert_9_tbl`
--
ALTER TABLE `cert_9_tbl`
  ADD PRIMARY KEY (`cert_9_id`);

--
-- Indexes for table `cert_10_tbl`
--
ALTER TABLE `cert_10_tbl`
  ADD PRIMARY KEY (`cert_10_id`);

--
-- Indexes for table `dept_`
--
ALTER TABLE `dept_`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plant_`
--
ALTER TABLE `plant_`
  ADD PRIMARY KEY (`plnt_id`);

--
-- Indexes for table `pmt_tbl`
--
ALTER TABLE `pmt_tbl`
  ADD PRIMARY KEY (`pmt_id`),
  ADD UNIQUE KEY `pmt_no` (`pmt_no`),
  ADD KEY `cert_1` (`cert_1_id`),
  ADD KEY `cert_2` (`cert_2_id`),
  ADD KEY `cert_3` (`cert_3_id`),
  ADD KEY `cert_4` (`cert_4_id`),
  ADD KEY `cert_5` (`cert_5_id`),
  ADD KEY `cert_6` (`cert_6_id`),
  ADD KEY `cert_7` (`cert_7_id`),
  ADD KEY `cert_8` (`cert_8_id`),
  ADD KEY `auth_for` (`auth_emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certi_1_other_hazards`
--
ALTER TABLE `certi_1_other_hazards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cert_9_tbl`
--
ALTER TABLE `cert_9_tbl`
  MODIFY `cert_9_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cert_10_tbl`
--
ALTER TABLE `cert_10_tbl`
  MODIFY `cert_10_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dept_`
--
ALTER TABLE `dept_`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `plant_`
--
ALTER TABLE `plant_`
  MODIFY `plnt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pmt_tbl`
--
ALTER TABLE `pmt_tbl`
  MODIFY `pmt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cert_1_tbl`
--
ALTER TABLE `cert_1_tbl`
  ADD CONSTRAINT `foregin_dept` FOREIGN KEY (`dept`) REFERENCES `dept_` (`id`),
  ADD CONSTRAINT `foregin_other_hazards` FOREIGN KEY (`other_hazards`) REFERENCES `certi_1_other_hazards` (`certi_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foregin_plant` FOREIGN KEY (`plant`) REFERENCES `plant_` (`plnt_id`);

--
-- Constraints for table `pmt_tbl`
--
ALTER TABLE `pmt_tbl`
  ADD CONSTRAINT `auth_for` FOREIGN KEY (`auth_emp_id`) REFERENCES `auth_tbl` (`auth_emp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cert_1` FOREIGN KEY (`cert_1_id`) REFERENCES `cert_1_tbl` (`cert_1_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cert_2` FOREIGN KEY (`cert_2_id`) REFERENCES `cert_2_tbl` (`cert_2_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cert_3` FOREIGN KEY (`cert_3_id`) REFERENCES `cert_3_tbl` (`cert_3_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cert_4` FOREIGN KEY (`cert_4_id`) REFERENCES `cert_4_tbl` (`cert_4_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cert_5` FOREIGN KEY (`cert_5_id`) REFERENCES `cert_5_tbl` (`cert_5_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cert_6` FOREIGN KEY (`cert_6_id`) REFERENCES `cert_6_tbl` (`cert_6_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cert_7` FOREIGN KEY (`cert_7_id`) REFERENCES `cert_7_tbl` (`cert_7_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `cert_8` FOREIGN KEY (`cert_8_id`) REFERENCES `cert_8_tbl` (`cert_8_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
