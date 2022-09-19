-- MariaDB dump 10.18  Distrib 10.5.8-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: wrm
-- ------------------------------------------------------
-- Server version	10.5.8-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Sequence structure for `accidentacno`
--

--DROP SEQUENCE IF EXISTS `accidentacno`;
--CREATE SEQUENCE `accidentacno` start with 1 minvalue 1 maxvalue 9223372036854775806 increment by 1 cache 1000 nocycle ENGINE=InnoDB;
--SELECT SETVAL(`accidentacno`, 9001, 0);

--
-- Table structure for table `tbcab0100`
--

DROP TABLE IF EXISTS `tbcab0100`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbcab0100` (
  `ACD_ACNO` varchar(10) NOT NULL,
  `IPDTM` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `INPP_CD` varchar(8) NOT NULL,
  `BILG_CUST_ID` char(10) DEFAULT NULL,
  `ACD_CUST_ID` char(10) DEFAULT NULL,
  `BLLP_ACDP_RSPCD` char(2) DEFAULT NULL,
  `ACPT_RQDT` char(8) DEFAULT NULL,
  `ACD_ACPT_PCD` varchar(2) DEFAULT NULL,
  `ACD_ACPT_PRG_SCD` varchar(2) DEFAULT NULL,
  `ACPP_CD` varchar(8) NOT NULL,
  `INFO_OFR_AGDT` char(8) DEFAULT NULL,
  PRIMARY KEY (`ACD_ACNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcab0100`
--

LOCK TABLES `tbcab0100` WRITE;
/*!40000 ALTER TABLE `tbcab0100` DISABLE KEYS */;
INSERT INTO `tbcab0100` VALUES ('5007','2022-08-30 05:20:28','00000000','0000000001','0000000001','01','20220830','00','00','00000000',''),('5008','2022-08-30 05:32:17','00000000','0000000001','0000000001','01','20220830','00','00','00000000',''),('5009','2022-08-30 05:37:56','00000000','0000000001','0000000001','01','20220830','00','00','00000000',''),('5010','2022-08-30 05:39:37','00000000','0000000001','0000000001','01','20220830','00','00','00000000',''),('5011','2022-08-30 05:39:42','00000000','0000000001','0000000001','01','20220830','00','00','00000000',''),('5012','2022-08-30 05:41:31','00000000','0000000001','0000000001','01','20220830','00','00','00000000',''),('5013','2022-08-30 05:45:45','00000000','0000000001','0000000001','01','20220830','00','00','00000000',''),('5014','2022-08-30 05:46:14','00000000','0000000001','0000000001','01','20220830','00','00','00000000',''),('6001','2022-08-31 04:30:15','00000000','0000000001','0000000001','01','20220831','00','00','00000000',''),('7001','2022-09-06 00:45:04','00000000','0000000001','0000000001','01','20220906','00','00','00000000',''),('7002','2022-09-06 01:06:30','00000000','0000000001','0000000001','01','20220906','00','00','00000000',''),('8004','2022-09-16 06:55:52','00000000','0000000001','0000000001','01','20220916','00','00','00000000','');
/*!40000 ALTER TABLE `tbcab0100` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbcab0102`
--

DROP TABLE IF EXISTS `tbcab0102`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbcab0102` (
  `BILG_ID` varchar(20) NOT NULL,
  `IPDTM` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `INPP_CD` varchar(8) NOT NULL,
  `ACD_CUST_ID` char(10) DEFAULT NULL,
  `ACDT` char(8) DEFAULT NULL,
  `ACD_ACNO` varchar(10) DEFAULT NULL,
  `BLRS_CD` varchar(2) DEFAULT NULL,
  `ACD_CAS_DSCD` varchar(4) DEFAULT NULL,
  `ACD_RST_DSCD` varchar(4) DEFAULT NULL,
  `ACDDT` char(8) DEFAULT NULL,
  `PAY_RSN_OGTDT` char(8) DEFAULT NULL,
  `HSP_NO` varchar(8) DEFAULT NULL,
  `HSPNM` varchar(100) DEFAULT NULL,
  `DR_NO` varchar(20) DEFAULT NULL,
  `DR_NM` varchar(100) DEFAULT NULL,
  `SUROP_CD` varchar(6) DEFAULT NULL,
  `SUROP_HNNM` varchar(100) DEFAULT NULL,
  `GDAD_ACDD_DCD` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`BILG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcab0102`
--

LOCK TABLES `tbcab0102` WRITE;
/*!40000 ALTER TABLE `tbcab0102` DISABLE KEYS */;
INSERT INTO `tbcab0102` VALUES ('0000000001','2022-09-08 01:37:58','00000000','0000000001','20220101','5007','10','K71','K71','20220101','20220105','0101','병원명','0011','닥터명',NULL,NULL,'1'),('0000000002','2022-09-08 01:37:58','00000000','0000000001','20220101','5007','31','S025','S025','20220101','20220101','0101','병원명','0011','닥터명','1111','11111','1'),('0000000003','2022-09-08 01:37:58','00000000','0000000001','20220101','5007','31','K71','K71','20220101','20220102','0101','병원명','0011','닥터명','1111','11111','1'),('0000000004','2022-09-08 01:37:58','00000000','0000000001','20220101','5007','37','K71','K71','20220101','20220102','0101','병원명','0011','닥터명','1111','11111','1'),('0000000005','2022-09-08 01:37:58','00000000','0000000001','20220101','5007','37','K71','K71','20220101','20220102','0101','병원명','0011','닥터명','1111','11111','1'),('20220913133524431','2022-09-13 04:35:24','00000000','0000000001','20220830','5008','10','K71','K71','20220901','20220906','K02023','병원1','K02024','의사1','','',''),('20220913133524449','2022-09-13 04:35:24','00000000','0000000001','20220830','5008','34','K71','K71','20220901','','K02023','병원1','K02024','의사1','11111','20220904',''),('20220913133524452','2022-09-13 04:35:24','00000000','0000000001','20220830','5008','34','K71','K71','20220901','','K02023','병원1','K02024','의사1','22222','20220905',''),('20220913133524454','2022-09-13 04:35:24','00000000','0000000001','20220830','5008','36','K71','K71','20220901','20220902','K02023','병원1','K02024','의사1','','',''),('20220913133524456','2022-09-13 04:35:24','00000000','0000000001','20220830','5008','36','K71','K71','20220901','20220903','K02023','병원1','K02024','의사1','','','');
/*!40000 ALTER TABLE `tbcab0102` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbcmc001`
--

DROP TABLE IF EXISTS `tbcmc001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbcmc001` (
  `CMMCD_GRPID` varchar(5) NOT NULL,
  `CD` varchar(20) NOT NULL,
  `IPDTM` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `INPP_CD` varchar(8) NOT NULL,
  `CD_NM` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`CMMCD_GRPID`,`CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcmc001`
--

LOCK TABLES `tbcmc001` WRITE;
/*!40000 ALTER TABLE `tbcmc001` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbcmc001` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbcsb0001`
--

DROP TABLE IF EXISTS `tbcsb0001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbcsb0001` (
  `CUST_ID` char(10) NOT NULL,
  `IPDTM` timestamp NULL DEFAULT NULL,
  `INPP_CD` varchar(8) DEFAULT NULL,
  `RGNO` varchar(13) NOT NULL,
  `CSNM` varchar(100) NOT NULL,
  `CPN` varchar(20) NOT NULL,
  PRIMARY KEY (`CUST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcsb0001`
--

LOCK TABLES `tbcsb0001` WRITE;
/*!40000 ALTER TABLE `tbcsb0001` DISABLE KEYS */;
INSERT INTO `tbcsb0001` VALUES ('0000000001','2021-12-31 15:00:00','00000000','8002041111111','홍길동','0101111111'),('0000000002','2021-12-31 15:00:00','00000000','8002041111111','홍길순','0101111111');
/*!40000 ALTER TABLE `tbcsb0001` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbcsb0002`
--

DROP TABLE IF EXISTS `tbcsb0002`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbcsb0002` (
  `POLI_NO` varchar(10) NOT NULL,
  `CUST_ID` char(10) NOT NULL,
  `CUST_CNTR_RTPY` varchar(2) NOT NULL,
  `IPDTM` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `INPP_CD` varchar(8) NOT NULL,
  PRIMARY KEY (`POLI_NO`,`CUST_ID`,`CUST_CNTR_RTPY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcsb0002`
--

LOCK TABLES `tbcsb0002` WRITE;
/*!40000 ALTER TABLE `tbcsb0002` DISABLE KEYS */;
INSERT INTO `tbcsb0002` VALUES ('1000000000','0000000001','01','2022-08-30 01:00:49','0111111');
/*!40000 ALTER TABLE `tbcsb0002` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbcsb0101`
--

DROP TABLE IF EXISTS `tbcsb0101`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbcsb0101` (
  `ACD_ACNO` varchar(10) NOT NULL,
  `ACD_ACPT_DOC_DCD` varchar(2) NOT NULL,
  `IPDTM` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `INPP_CD` varchar(8) NOT NULL,
  `ATCG_FILE_NM` varchar(100) DEFAULT NULL,
  `ATCG_FILE_PATH_NM` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ACD_ACNO`,`ACD_ACPT_DOC_DCD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbcsb0101`
--

LOCK TABLES `tbcsb0101` WRITE;
/*!40000 ALTER TABLE `tbcsb0101` DISABLE KEYS */;
INSERT INTO `tbcsb0101` VALUES ('6001','00','2022-08-31 04:30:15','00000000','C:\\fakepath\\MSA구현테스트_결제취소추가문서.rtf','C:\\fakepath\\MSA구현테스트_결제취소추가문서.rtf'),('7001','00','2022-09-06 00:45:04','00000000','C:\\fakepath\\2.jfif','C:\\fakepath\\2.jfif'),('7002','00','2022-09-06 01:06:30','00000000','C:\\fakepath\\2.jfif','C:\\fakepath\\2.jfif'),('8004','00','2022-09-16 06:55:52','00000000','C:\\fakepath\\2.jfif','C:\\fakepath\\2.jfif');
/*!40000 ALTER TABLE `tbcsb0101` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbnbb0001`
--

DROP TABLE IF EXISTS `tbnbb0001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbnbb0001` (
  `POLI_NO` varchar(10) NOT NULL,
  `PLCD` varchar(5) DEFAULT NULL,
  `PDNM` varchar(100) DEFAULT NULL,
  `CTRDT` char(8) DEFAULT NULL,
  `EXDT` char(8) DEFAULT NULL,
  `CSCD` char(2) DEFAULT NULL,
  `CNTR_DTL_SCD` char(4) DEFAULT NULL,
  `RVCY_CD` varchar(2) DEFAULT NULL,
  `RVST_CD` varchar(2) DEFAULT NULL,
  `TPRM` bigint(15) DEFAULT NULL,
  `IPDTM` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `INPP_CD` varchar(8) NOT NULL,
  PRIMARY KEY (`POLI_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbnbb0001`
--

LOCK TABLES `tbnbb0001` WRITE;
/*!40000 ALTER TABLE `tbnbb0001` DISABLE KEYS */;
INSERT INTO `tbnbb0001` VALUES ('1000000000','11111','pdnm','20210101',NULL,'30','3001','01','01',100000,'2022-09-06 04:20:24','00000000');
/*!40000 ALTER TABLE `tbnbb0001` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbnbb0002`
--

DROP TABLE IF EXISTS `tbnbb0002`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbnbb0002` (
  `MCTR_TRT_ID` varchar(20) NOT NULL,
  `POLI_NO` varchar(10) NOT NULL,
  `PLICD` varchar(5) DEFAULT NULL,
  `PITM_NM` varchar(100) DEFAULT NULL,
  `PITM_DCD` varchar(2) DEFAULT NULL,
  `ISPRD_DCD` varchar(2) DEFAULT NULL,
  `ISPRD_DVVL` int(3) DEFAULT NULL,
  `ISPRD` int(4) DEFAULT NULL,
  `RVCY_CD` varchar(2) DEFAULT NULL,
  `RVPD_DCD` varchar(2) DEFAULT NULL,
  `RVPD_DVVL` int(3) DEFAULT NULL,
  `RVPD` int(4) DEFAULT NULL,
  `MTDT` char(8) DEFAULT NULL,
  `NTRY_AMT` bigint(15) DEFAULT NULL,
  `PRM` bigint(15) DEFAULT NULL,
  `CTRDT` char(8) DEFAULT NULL,
  `EXDT` char(8) DEFAULT NULL,
  `ND2_ISPRD_OPDT` char(8) DEFAULT NULL,
  `IPDTM` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `INPP_CD` varchar(8) NOT NULL,
  `LSTRV_NBTM` int(4) DEFAULT NULL,
  `LSTRV_YM` char(6) DEFAULT NULL,
  `LSTRV_DT` char(8) DEFAULT NULL,
  PRIMARY KEY (`MCTR_TRT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbnbb0002`
--

LOCK TABLES `tbnbb0002` WRITE;
/*!40000 ALTER TABLE `tbnbb0002` DISABLE KEYS */;
INSERT INTO `tbnbb0002` VALUES ('00000000000000000001','1000000000','00001','보종1','01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000,NULL,NULL,NULL,NULL,'2022-09-14 01:05:23','00000000',NULL,NULL,NULL),('00000000000000000002','1000000000','00002','보종2','02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2000000,NULL,NULL,NULL,NULL,'2022-09-14 01:05:23','00000000',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbnbb0002` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbnbb0003`
--

DROP TABLE IF EXISTS `tbnbb0003`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbnbb0003` (
  `CUST_ID` char(10) NOT NULL,
  `CUST_CNTR_RTPY` varchar(2) NOT NULL,
  `POLI_NO` varchar(10) NOT NULL,
  `NTRY_AGE` int(3) DEFAULT NULL,
  `JOBCD` varchar(6) DEFAULT NULL,
  `RISK_HOBY_CD` varchar(2) DEFAULT NULL,
  `DRVG_CARTP_CD` varchar(2) DEFAULT NULL,
  `IPDTM` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `INPP_CD` varchar(8) NOT NULL,
  PRIMARY KEY (`CUST_ID`,`CUST_CNTR_RTPY`,`POLI_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbnbb0003`
--

LOCK TABLES `tbnbb0003` WRITE;
/*!40000 ALTER TABLE `tbnbb0003` DISABLE KEYS */;
INSERT INTO `tbnbb0003` VALUES ('0000000001','11','1000000000',11,'22','33','4','2022-09-13 08:03:51','00000000'),('0000000002','21','1000000000',22,'33','44','1','2022-09-13 08:04:16','00000000');
/*!40000 ALTER TABLE `tbnbb0003` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbpcb0001`
--

DROP TABLE IF EXISTS `tbpcb0001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbpcb0001` (
  `CHG_REQS_ID` varchar(20) NOT NULL,
  `IPDTM` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `INPP_CD` varchar(8) NOT NULL,
  `POLI_NO` varchar(10) NOT NULL,
  `CUST_ID` varchar(10) DEFAULT NULL,
  `CHG_RQDT` char(8) DEFAULT NULL,
  `CHG_REQS_DCD` varchar(1) DEFAULT NULL,
  `RQP_CD` varchar(8) DEFAULT NULL,
  `CHG_PRC_SCD` varchar(2) DEFAULT NULL,
  `CDAMT` bigint(15) DEFAULT NULL,
  `CHGBF_SRRF` bigint(15) DEFAULT NULL,
  `CHGAF_SRRF` bigint(15) DEFAULT NULL,
  `CTCG_CD` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`CHG_REQS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbpcb0001`
--

LOCK TABLES `tbpcb0001` WRITE;
/*!40000 ALTER TABLE `tbpcb0001` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbpcb0001` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbpcb0002`
--

DROP TABLE IF EXISTS `tbpcb0002`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbpcb0002` (
  `CHG_REQS_ID` varchar(20) NOT NULL,
  `CHG_REQS_BFAF_DCD` varchar(1) NOT NULL,
  `IPDTM` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `INPP_CD` varchar(8) NOT NULL,
  `TPRM` bigint(15) DEFAULT NULL,
  `CTCG_YN` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`CHG_REQS_ID`,`CHG_REQS_BFAF_DCD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbpcb0002`
--

LOCK TABLES `tbpcb0002` WRITE;
/*!40000 ALTER TABLE `tbpcb0002` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbpcb0002` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbpcb0003`
--

DROP TABLE IF EXISTS `tbpcb0003`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbpcb0003` (
  `CHG_REQS_ID` varchar(20) NOT NULL,
  `MCTR_TRT_ID` varchar(20) NOT NULL,
  `CHG_REQS_BFAF_DCD` varchar(1) NOT NULL,
  `IPDTM` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `INPP_CD` varchar(8) NOT NULL,
  `PLICD` varchar(5) NOT NULL,
  `NTRY_AMT` bigint(15) DEFAULT NULL,
  `PRM` bigint(15) DEFAULT NULL,
  PRIMARY KEY (`CHG_REQS_ID`,`MCTR_TRT_ID`,`CHG_REQS_BFAF_DCD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbpcb0003`
--

LOCK TABLES `tbpcb0003` WRITE;
/*!40000 ALTER TABLE `tbpcb0003` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbpcb0003` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-19 15:36:49
