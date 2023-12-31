-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 16, 2023 at 07:14 PM
-- Server version: 5.6.13
-- PHP Version: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bioserverproject`
--
CREATE DATABASE IF NOT EXISTS `bioserverproject` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bioserverproject`;

-- --------------------------------------------------------

--
-- Table structure for table `influenza_a_virus`
--

CREATE TABLE IF NOT EXISTS `influenza_a_virus` (
  `ID` int(1) NOT NULL AUTO_INCREMENT,
  `Sequence` mediumtext NOT NULL,
  `Locus_Tag` varchar(2000) NOT NULL,
  `Description` varchar(2000) NOT NULL,
  `Organism` varchar(2000) NOT NULL,
  `Gene_Type` varchar(2000) NOT NULL,
  `Gene_Symbol` varchar(2000) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `influenza_a_virus`
--

INSERT INTO `influenza_a_virus` (`ID`, `Sequence`, `Locus_Tag`, `Description`, `Organism`, `Gene_Type`, `Gene_Symbol`) VALUES
(1, 'AGCAAAAGCAGGTCAATTATATTCAGTATGGAAAGAATAAAAGAACTACGGAACCTGATGTCGCAGTCTCGCACTCGCGAGATACTGACAAAAACCACAGTGGACCATATGGCCATAATTAAGAAGTACACATCGGGGAGACAGGAAAAGAACCCGTCACTTAGGATGAAATGGATGATGGCAATGAAATACCCAATCACTGCTGACAAAAGGATAACAGAAATGGTTCCGGAGAGAAATGAACAAGGACAAACTCTATGGAGTAAAATGAGTGATGCTGGATCAGATCGAGTGATGGTATCACCTTTGGCTGTAACATGGTGGAATAGAAATGGACCCGTGGCAAGTACGGTCCATTACCCAAAAGTATACAAGACTTATTTTGACAAAGTCGAAAGGTTAAAACATGGAACCTTTGGCCCTGTTCATTTTAGAAATCAAGTCAAGATACGCAGAAGAGTAGACATAAACCCTGGTCATGCAGACCTCAGTGCCAAAGAGGCACAAGATGTAATTATGGAAGTTGTTTTTCCCAATGAAGTGGGAGCCAGGATACTAACATCAGAATCGCAATTAACAATAACTAAAGAGAAAAAAGAAGAACTCCGAGATTGCAAAATTTCTCCCTTGATGGTTGCATACATGTTAGAGAGAGAACTTGTCCGAAAAACAAGATTTCTCCCAGTTGCTGGCGGAACAAGCAGTATATACATTGAAGTCTTACATTTGACTCAAGGAACGTGTTGGGAACAAATGTACACTCCAGGTGGAGAAGTGAGGAATGACGATGTTGACCAAAGCCTAATTATTGCGGCCAGGAACATAGTAAGAAGAGCTGCAGTATCAGCAGATCCACTAGCATCTTTATTGGAGATGTGCCACAGCACACAAATTGGCGGGACAAGGATGGTGGACATTCTTAGACAGAACCCGACTGAAGAACAAGCTGTGGATATATGCAAGGCTGCAATGGGATTGAGAATCAGCTCATCCTTCAGCTTTGGTGGGTTTACATTTAAAAGAACAAGCGGGTCATCAGTCAAAAAAGAGGAAGAAGTGCTTACAGGCAATCTCCAAACATTGAAGATAAGAGTACATGAGGGGTATGAGGAGTTCACAATGGTGGGGAAAAGAGCAACAGCTATACTCAGAAAAGCAACCAGAAGATTGGTTCAGCTCATAGTGAGTGGAAGAGACGAACAGTCAATAGCCGAAGCAATAATCGTGGCCATGGTGTTTTCACAAGAGGATTGCATGATAAAAGCAGTTAGAGGTGACCTGAATTTCGTCAACAGAGCAAATCAACGGTTGAACCCCATGCATCAGCTTTTAAGGCATTTTCAGAAAGATGCGAAAGTGCTTTTTCAAAATTGGGGAATTGAACACATCGACAGTGTGATGGGAATGGTTGGAGTATTACCAGATATGACTCCAAGCACAGAGATGTCAATGAGAGGAATAAGAGTCAGCAAAATGGGTGTGGATGAATACTCCAGTACAGAGAGGGTGGTGGTTAGCATTGATCGGTTTTTGAGAGTTCGAGACCAACGCGGGAATGTATTATTGTCTCCTGAGGAGGTCAGTGAAACACAGGGAACTGAAAGATTGACAATAACATATTCATCGTCGATGATGTGGGAGATTAACGGTCCTGAGTCGGTTTTGGTCAATACCTATCAATGGATCATCAGAAATTGGGAAGCTGTCAAAATTCAATGGTCTCAGAATCCTGCAATGTTGTACAACAAAATGGAATTTGAACCATTTCAATCTTTAGTCCCCAAGGCCATTAGAAGCCAATACAGTGGGTTTGTCAGAACTCTATTCCAACAAATGAGAGACGTACTTGGGACATTTGACACCACCCAGATAATAAAGCTTCTCCCTTTTGCAGCCGCTCCACCAAAGCAAAGCAGAATGCAGTTCTCTTCACTGACTGTAAATGTGAGGGGATCAGGGATGAGAATACTTGTAAGGGGCAATTCTCCTGTATTCAACTACAACAAGACCACTAAAAGACTAACAATTCTCGGAAAAGATGCCGGCACTTTAATTGAAGACCCAGATGAAAGCACATCCGGAGTGGAGTCCGCCGTCTTGAGAGGGTTTCTCATTATAGGTAAGGAAGACAGAAGATACGGACCAGCATTAAGCATCAATGAACTGAGTAACCTTGCAAAAGGGGAAAAGGCTAATGTGCTAATCGGGCAAGGAGACGTGGTGTTGGTAATGAAACGAAAACGGGACTCTAGCATACTTACTGACAGCCAGACAGCGACCAAAAGAATTCGGATGGCCATCAATTAATGTTGAATAGTTTAAAAACGACCTTGTTTCTACT', 'FLUAVH3N2_s1p1', 'Influenza A virus (A/New York/392/2004(H3N2)) segment 1, complete', ' Influenza A virus (A/New York/392/2004(H3N2))\r\n            Viruses; Riboviria; Orthornavirae; Negarnaviricota;\r\n            Polyploviricotina; Insthoviricetes; Articulavirales;\r\n            Orthomyxoviridae; Alphainfluenzavirus.', 'DNA', 'PB2'),
(2, 'AGCAAAAGCAGGCAAACCATTTGAATGGATGTCAATCCGACTCTACTGTTCCTAAAGGTTCCAGCGCAAAATGCCATAAGCACCACATTCCCTTATACTGGAGATCCTCCATACAGCCATGGAACAGGAACAGGATACACCATGGACACAGTCAACAGAACACACCAATATTCAGAGAAGGGGAAGTGGACGACAAATACAGAAACTGGGGCACCCCAACTCAACCCAATTGATGGACCACTACCTGAGGATAATGAGCCAAGTGGATATGCACAAACAGACTGTGTCCTGGAGGCTATGGCCTTCCTTGAAGAATCCCACCCAGGTATCTTTGAGAACTCATGCCTTGAAACAATGGAAGTCGTTCAACAAACAAGGGTGGACAAACTAACCCAAGGCCGCCAGACTTATGATTGGACATTAAACAGAAATCAACCGGCAGCAACTGCATTAGCCAACACCATAGAAGTTTTTAGATCGAATGGACTAACAGCCAATGAATCAGGAAGGCTAATAGATTTCCTCAAGGATGTGATGGAATCAATGGATAAAGAGGAAATGGAGATAACAACACACTTTCAAAGAAAAAGGAGAGTAAGAGACAACATGACCAAGAAAATGGTCACACAAAGAACAATAGGGAAGAAAAAACAAAGAGTGAATAAGAGAGGCTATCTAATAAGAGCTTTGACATTGAACACGATGACCAAAGATGCAGAGAGAGGTAAATTAAAAAGAAGGGCTATTGCAACACCCGGGATGCAAATTAGAGGGTTCGTGTACTTCGTTGAAACTTTAGCTAGAAGCATTTGCGAAAAGCTTGAACAGTCTGGACTTCCGGTTGGGGGTAATGAAAAGAAGGCCAAACTGGCAAATGTTGTGAGAAAAATGATGACTAATTCACAAGACACTGAGCTTTCTTTCACAATCACTGGGGACAACACTAAGTGGAATGAAAATCAAAACCCTCGAATGTTTTTGGCGATGATTACATATATCACAAAAAATCAACCTGAGTGGTTCAGAAACATCCTGAGCATCGCACCAATAATGTTCTCAAACAAAATGGCAAGACTAGGAAAAGGATACATGTTCGAGAGTAAGAGAATGAAGCTCCGAACACAAATACCCGCAGAAATGCTAGCAAGCATTGACCTGAAGTATTTCAATGAATCAACAAGGAAGAAAATTGAGAAAATAAGGCCTCTTCTAATAGATGGCACAGCATCATTGAGCCCTGGGATGATGATGGGCATGTTCAACATGCTAAGTACGGTTTTAGGAGTCTCGGTACTGAATCTTGGGCAAAAGAAATACACCAAGACAACATACTGGTGGGATGGGCTCCAATCCTCCGACGATTTTGCCCTCATAGTGAATGCACCAAATCATGAGGGAATACAAGCAGGAGTGGATAGATTCTACAGGACCTGCAAGTTAGTGGGAATCAACATGAGCAAAAAGAAGTCCTATATAAATAAAACAGGGACATTTGAATTCACAAGCTTTTTTTATCGATATGGATTTGTGGCTAATTTTAGCATGGAGCTTCCCAGTTTTGGAGTGTCTGGAATAAACGAGTCAGCTGATATGAGTATTGGAGTAACAGTGATAAAGAACAACATGATAAACAATGACCTTGGGCCAGCAACAGCCCAGATGGCTCTCCAATTGTTCATCAAAGACTACAGATATACATATAGGTGCCATAGAGGAGACACACAAATTCAGACGAGAAGATCATTCGAGCTAAAGAAGCTGTGGGATCAAACCCAATCAAGGGCAGGACTATTGGTATCAGATGGGGGACCAAACTTATACAATATCCGGAACCTTCACATCCCTGAAGTCTGCTTAAAGTGGGAGCTAATGGATGAGAATTATCGGGGAAGACTTTGTAACCCCCTGAATCCCTTTGTCAGCCATAAAGAAATTGAGTCTGTAAACAATGCTGTAGTGATGCCAGCCCACGGTCCAGCCAAAAGTATGGAATATGATGCCGTTGCAACTACACACTCCTGGAATCCCAAGAGGAACCGCTCTATTCTAAACACTAGCCAAAGGGGAATTCTTGAGGATGAACAGATGTACCAAAAGTGCTGCAACTTGTTCGAGAAATTTTTCCCTAGTAGTTCATATAGGAGACCGATTGGAATTTCTAGCATGGTGGAGGCCATGGTGTCTAGGGCCCGGATTGATGCCAGAATTGACTTCGAGTCTGGACGGATTAAGAAGGAAGAGTTCTCTGAGATCATGAAGATCTGTTCCACCATTGAAGAACTCAGACGGCAAAAATAATGAATTTAGCTTGTCCTTCATGAAAAAATGCCTTGTTTCTACT', 'FLUAVH3N2_s2p2', 'Influenza A virus (A/New York/392/2004(H3N2)) segment 2, complete', ' Influenza A virus (A/New York/392/2004(H3N2))\r\n            Viruses; Riboviria; Orthornavirae; Negarnaviricota;\r\n            Polyploviricotina; Insthoviricetes; Articulavirales;\r\n            Orthomyxoviridae; Alphainfluenzavirus.', 'DNA', 'PB1-F2'),
(3, 'AGCAAAAGCAGGTACTGATTCGAAATGGAAGATTTTGTGCGACAATGCTTCAACCCGATGATTGTCGAACTTGCAGAAAAAGCAATGAAAGAGTATGGAGAGGATCTGAAAATTGAAACAAACAAATTTGCAGCAATATGCACCCACTTGGAGGTATGTTTCATGTATTCAGATTTTCATTTCATCAATGAACAAGGCGAATCAATAGTGGTAGAACTTGATGATCCAAATGCACTGTTAAAGCACAGATTTGAAATAATCGAGGGGAGAGACAGAACAATGGCCTGGACAGTAGTAAACAGTATCTGCAACACTACTGGAGCAGAAAAACCAAAGTTTCTACCAGATTTGTATGATTACAAGGAGAATAGATTCATCGAAATTGGAGTGACAAGAAGAGAAGTCCACATATATTACCTTGAAAAGGCCAATAAAATTAAATCTGAGAACACACACATTCACATCTTCTCATTCACTGGGGAGGAAATAGCCACAAAGGCAGACTACACTCTCGACGAGGAAAGCAGGGCTAGGATTAAAACCAGGCTATTTACCATAAGACAAGAAATGGCCAACAGAGGCCTCTGGGATTCCTTTCGTCAGTCCGAAAGAGGCGAAGAAACAATTGAAGAAAAATTTGAAATCTCAGGAACTATGCGTAGGCTTGCCGACCAAAGTCTCCCACCGAAATTCTCCTGCCTTGAGAATTTTAGAGCCTATGTGGATGGATTCGAACCGAACGGCTGCATTGAGGGCAAGCTTTCTCAAATGTCCAAAGAAGTGAATGCCAAAATTGAACCTTTTCTGAAGACAACACCAAGACCAATCAAACTTCCTAATGGACCTCCTTGTTATCAGCGGTCCAAATTCCTCCTGATGGATGCTTTGAAATTGAGCATTGAAGACCCAAGTCATGAAGGAGAAGGGATTCCATTATATGATGCGATCAAGTGCATAAAAACATTCTTTGGATGGAAAGAACCTTATATAGTCAAACCACACGAAAAGGGAATAAATTCAAATTACCTGCTGTCATGGAAGCAAGTATTGTCAGAATTGCAGGACATTGAAAATGAGGAGAAGATCCCAAGGACTAAAAACATGAAGAAAACGAGTCAACTAAAGTGGGCTCTTGGTGAAAACATGGCACCAGAGAAAGTAGACTTTGACAACTGCAGAGACATAAGCGATTTGAAGCAATATGATAGTGACGAACCTGAATTAAGGTCACTTTCAAGCTGGATACAGAATGAGTTCAACAAGGCCTGCGAGCTAACTGATTCAATCTGGATAGAGCTCGATGAAATTGGAGAGGACGTAGCCCCAATTGAGTACATTGCAAGCATGAGGAGGAATTATTTCACAGCAGAGGTGTCCCATTGTAGAGCCACTGAGTACATAATGAAGGGGGTATACATTAATACTGCCCTGCTCAATGCATCCTGTGCAGCAATGGACGATTTTCAACTAATTCCCATGATAAGCAAGTGCAGAACTAAAGAGGGAAGGCGAAAAACCAATTTATATGGATTCATCATAAAGGGAAGATCTCATTTAAGGAATGACACAGATGTGGTAAACTTTGTGAGCATGGAGTTTTCTCTCACTGACCCGAGACTTGAGCCACATAAATGGGAGAAATACTGTGTCCTTGAGATAGGAGATATGTTACTAAGAAGTGCCATAGGCCAAATTTCAAGGCCTATGTTCTTGTATGTGAGGACAAACGGAACATCAAAGGTCAAAATGAAATGGGGAATGGAGATGAGACGTTGCCTCCTTCAGTCACTCCAGCAGATCGAGAGCATGATTGAAGCCGAGTCCTCGATTAAAGAGAAAGACATGACCAAAGAGTTTTTTGAGAATAAATCAGAAGCATGGCCCATTGGGGAGTCCCCCAAGGGAGTGGAAGAAGGTTCCATTGGGAAAGTCTGTAGGACTCTATTGGCTAAGTCAGTGTTCAATAGCCTGTATGCATCACCACAATTGGAAGGATTTTCAGCGGAGTCAAGAAAACTGCTTCTTGTTGTTCAGGCTCTTAGGGACAACCTCGAACCTGGGACCTTTGATCTCGGGGGGCTATATGAAGCAATTGAGGAGTGCCTGATTAATGATCCCTGGGTTTTGCTCAATGCATCTTGGTTCAACTCCTTCCTGACACATGCATTAAAATAGTTATGGCAGTGCTACTATTTGTTATCCGTACTGTCCAAAAAAGTACCTTGTTTCTACT', 'FLUAVH3N2_s3p1', 'Influenza A virus (A/New York/392/2004(H3N2)) segment 3, complete', 'Influenza A virus (A/New York/392/2004(H3N2))\r\n            Viruses; Riboviria; Orthornavirae; Negarnaviricota;\r\n            Polyploviricotina; Insthoviricetes; Articulavirales;\r\n            Orthomyxoviridae; Alphainfluenzavirus.', 'DNA', 'PA-X'),
(4, 'AGCAAAAGCAGGGGATAATTCTATTAACCATGAAGACTATCATTGCTTTGAGCTACATTCTATGTCTGGTTTTCGCTCAAAAACTTCCCGGAAATGACAACAGCACGGCAACGCTGTGCCTTGGGCACCATGCAGTACCAAACGGAACGATAGTGAAAACAATCACGAATGACCAAATTGAAGTCACTAATGCTACTGAACTGGTTCAGAGTTCCTCAACAGGTGGAATATGCGACAGTCCTCATCAGATCCTTGATGGAGAAAACTGCACACTAATAGATGCTCTATTGGGAGACCCTCAGTGTGATGGCTTCCAAAATAAGAAATGGGACCTTTTTGTTGAACGCAGCAAAGCCTACAGCAACTGTTACCCTTATGATGTGCCGGATTATGCCTCCCTTAGGTCACTAGTTGCCTCATCCGGCACACTGGAGTTTAACAATGAAAGCTTCAATTGGACTGGAGTCACTCAAAATGGAACAAGCTCTGCTTGCAAAAGGAGATCTAATAACAGTTTCTTTAGTAGATTGAATTGGTTGACCCACTTAAAATTCAAATACCCAGCATTGAACGTGACTATGCCAAACAATGAAAAATTTGACAAACTGTACATTTGGGGGGTTCACCACCCGGGTACGGACAATGACCAAATCAGCCTATATGCTCAAGCATCAGGAAGAATCACAGTCTCTACCAAAAGAAGCCAACAAACCGTAATCCCGAGTATCGGATCTAGACCCAGGATAAGGGATGTCCCCAGCAGAATAAGCATCTATTGGACAATAGTAAAACCGGGAGACATACTTTTGATTAACAGCACAGGGAATCTAATTGCTCCTCGGGGTTACTTCAAAATACGAAGTGGGAAAAGCTCAATAATGAGATCAGATGCACCCATTGGCAAATGCAATTCTGAATGCATCACTCCAAATGGAAGCATTCCCAATGACAAACCATTTCAAAATGTAAACAGGATCACATATGGGGCCTGTCCCAGATATGTTAAGCAAAACACTCTGAAATTGGCAACAGGGATGCGAAATGTACCAGAGAAACAAACTAGAGGCATATTTGGCGCAATCGCGGGTTTCATAGAAAATGGTTGGGAGGGAATGGTAGACGGTTGGTACGGTTTCAGGCATCAAAATTCTGAGGGAACAGGACAAGCAGCAGATCTCAAAAGCACTCAAGCAGCAATCAACCAAATCAATGGGAAGCTGAATAGGTTGATCGGGAAAACAAACGAGAAATTCCATCAGATTGAAAAAGAATTCTCAGAAGTAGAAGGGAGAATTCAGGACCTCGAGAAATATGTTGAGGACACTAAAATAGATCTCTGGTCATACAACGCGGAGCTTCTTGTGGCCCTGGAGAACCAACATACAATTGATCTAACTGACTCAGAAATGAACAAACTGTTTGAAAGAACAAAGAAGCAACTGAGGGAAAATGCTGAGGATATGGGCAATGGTTGTTTCAAAATATACCACAAATGTGACAATGCCTGCATAGGGTCAATCAGAAATGGAACTTATGACCATGATGTATACAGAGATGAAGCATTAAACAACCGGTTCCAGATCAAAGGTGTTGAGTTGAAGTCAGGATACAAAGATTGGATCCTATGGATTTCCTTTGCCATATCATGTTTTTTGCTTTGTGTTGCTTTGTTGGGGTTCATCATGTGGGCCTGCCAAAAAGGCAACATTAGGTGCAACATTTGCATTTGAGTGCATTAATTAAAAACACCCTTGTTTCTACT', 'FLUAVH3N2_s4p1', 'Influenza A virus (A/New York/392/2004(H3N2)) segment 4, complete', 'Influenza A virus (A/New York/392/2004(H3N2))\r\n            Viruses; Riboviria; Orthornavirae; Negarnaviricota;\r\n            Polyploviricotina; Insthoviricetes; Articulavirales;\r\n            Orthomyxoviridae; Alphainfluenzavirus.', 'DNA', 'HA'),
(5, 'AGCAAAAGCAGGGTTAATAATCACTCACCGAGTGACATCAAAATCATGGCGTCCCAAGGCACCAAACGGTCTTATGAACAGATGGAAACTGATGGGGATCGCCAGAATGCAACTGAGATTAGGGCATCCGTCGGGAAGATGATTGATGGAATTGGGAGATTCTACATCCAAATGTGCACTGAACTTAAACTCAGTGATCATGAAGGGCGGTTGATCCAGAACAGCTTGACAATAGAGAAAATGGTGCTCTCTGCTTTTGATGAAAGAAGGAATAAATACCTGGAAGAACACCCCAGCGCGGGGAAAGATCCCAAGAAAACTGGGGGGCCCATATACAGGAGAGTAGATGGAAAATGGATGAGGGAACTCGTCCTTTATGACAAAGAAGAGATAAGGCGAATCTGGCGCCAAGCCAACAATGGTGAGGATGCGACAGCTGGTCTAACTCACATAATGATCTGGCATTCCAATTTGAATGATGCAACATACCAGAGGACAAGAGCTCTTGTTCGAACTGGAATGGATCCCAGAATGTGCTCTCTGATGCAGGGCTCGACTCTCCCTAGAAGGTCCGGAGCTGCAGGTGCTGCAGTCAAAGGAATCGGGACAATGGTGATGGAACTGATCAGAATGGTCAAACGGGGGATCAACGATCGAAATTTCTGGAGAGGTGAGAATGGGCGGAAAACAAGAAGTGCTTATGAGAGAATGTGCAACATTCTTAAAGGAAAATTTCAAACAGCTGCACAAAGAGCAATGGTGGATCAAGTGAGAGAAAGTCGGAACCCAGGAAATGCTGAGATCGAAGATCTCATATTTTTGGCAAGATCTGCATTGATATTGAGAGGGTCAGTTGCTCACAAATCTTGCCTACCTGCCTGTGCGTATGGACCTGCAGTATCCAGTGGGTACGACTTCGAAAAAGAGGGATATTCCTTGGTGGGAATAGACCCTTTCAAACTACTTCAAAATAGCCAAATATACAGCCTAATCAGACCTAACGAGAATCCAGCACACAAGAGTCAGCTGGTGTGGATGGCATGCCATTCTGCTGCATTTGAAGATTTAAGATTGTTAAGCTTCATCAGAGGGACAAAAGTATCTCCGCGGGGGAAACTGTCAACTAGAGGAGTACAAATTGCTTCAAATGAGAACATGGATAATATGGGATCGAGCACTCTTGAACTGAGAAGCGGGTACTGGGCCATAAGGACCAGGAGTGGAGGAAACACTAATCAACAGAGGGCCTCCGCAGGCCAAACCAGTGTGCAACCTACGTTTTCTGTACAAAGAAACCTCCCATTTGAAAAGTCAACCATCATGGCAGCATTCACTGGAAATACGGAGGGAAGGACTTCAGACATGAGGGCAGAAATCATAAGAATGATGGAAGGTGCAAAACCAGAAGAAGTGTCATTCCGGGGGAGGGGAGTTTTCGAGCTCTCAGACGAGAAGGCAACGAACCCGATCGTGCCCTCTTTTGATATGAGTAATGAAGGATCTTATTTCTTCGGAGACAATGCAGAAGAGTACGACAATTAAGGAAAAAATACCCTTGTTTCTACT', 'FLUAVH3N2_s5p1', 'Influenza A virus (A/New York/392/2004(H3N2)) segment 5, complete', 'Influenza A virus (A/New York/392/2004(H3N2))\r\n            Viruses; Riboviria; Orthornavirae; Negarnaviricota;\r\n            Polyploviricotina; Insthoviricetes; Articulavirales;\r\n            Orthomyxoviridae; Alphainfluenzavirus.', 'DNA', 'NP'),
(6, 'AGCAAAAGCAGGAGTAAAGATGAATCCAAATCAAAAGATAATAACGATTGGCTCTGTTTCTCTCACCATTTCCACAATATGCTTCTTCATGCAAATTGCCATCCTGATAACCACTGTAACATTGCATTTCAAGCAATATGAATTCAACTCCCCCCCAAACAACCAAGTGATGCTGTGTGAACCAACAATAATAGAAAGAAACATAACAGAGATAGTGTATCTGACCAACACCACCATAGAGAAGGAAATGTGCCCCAAACTAGCAGAATACAGAAATTGGTCAAAGCCGCAATGTGACATTACAGGATTTGCACCTTTTTCTAAGGACAATTCGATTAGGCTTTCCGCTGGTGGGGACATCTGGGTGACAAGAGAACCTTATGTGTCATGCGACCCTGACAAGTGTTACCAATTTGCCCTTGGACAGGGAACAACACTAAACAACGTGCATTCAAATGACACAGTACATGATAGGACCCCTTATCGGACCCTATTGATGAATGAATTAGGTGTTCCATTTCATCTGGGGACCAAGCAAGTGTGCATAGCATGGTCCAGCTCAAGTTGTCACGATGGAAAAGCATGGCTGCATGTTTGTGTAACGGGGGATGATAAAAATGCAACTGCTAGCTTCATTTACAATGGGAGGCTTGTAGATAGTATTGTTTCATGGTCCAAAAAAATCCTCAGGACCCAGGAGTCAGAATGCGTTTGTATCAATGGAACTTGTACAGTAGTAATGACTGATGGGAGTGCTTCAGGAAAAGCTGATACTAAAATACTATTCATTGAGGAGGGGAAAATCATTCATACTAGCACATTGTCAGGAAGTGCTCAGCATGTCGAGGAGTGCTCCTGCTATCCTCGATATCCTGGTGTCAGATGTGTCTGCAGAGACAACTGGAAAGGCTCCAATAGGCCCATCGTAGATATAAACATAAAGGATTATAGCATTGTTTCCAGTTATGTGTGCTCAGGGCTTGTTGGAGACACACCCAGAAAAAACGACAGCTCCAGCAGTAGCCATTGCTTGGATCCTAACAATGAAGAAGGTGGTCATGGAGTGAAAGGCTGGGCCTTTGATGATGGAAATGACGTGTGGATGGGAAGAACGATCAGCGAGAAGTTACGCTCAGGATATGAAACCTTCAAAGTCATTGAAGGCTGGTCCAAACCTAATTCCAAATTGCAGATAAATAGGCAAGTCATAGTTGACAGAGGTAATAGGTCCGGTTATTCTGGTATTTTCTCTGTTGAAGGCAAAAGCTGCATCAATCGGTGCTTTTATGTGGAGTTGATAAGGGGAAGAAAAGAGGAAACTGAAGTCTTGTGGACCTCAAACAGTATTGTTGTGTTTTGTGGCACCTCAGGTACATATGGAACAGGCTCATGGCCTGATGGGGCGGACATCAATCTCATGCCTATATAAGCTTTCGCAATTTTAGAAAAAAACTCCTTGTTTCTACT', 'FLUAVH3N2_s6p1', 'Influenza A virus (A/New York/392/2004(H3N2)) segment 6, complete', 'Influenza A virus (A/New York/392/2004(H3N2))\r\n            Viruses; Riboviria; Orthornavirae; Negarnaviricota;\r\n            Polyploviricotina; Insthoviricetes; Articulavirales;\r\n            Orthomyxoviridae; Alphainfluenzavirus.', 'DNA', 'NA'),
(7, 'AGCAAAAGCAGGTAGATATTGAAAGATGAGCCTTCTAACCGAGGTCGAAACGTATGTTCTCTCTATCGTTCCATCAGGCCCCCTCAAAGCCGAGATCGCGCAGAGACTTGAAGATGTCTTTGCTGGGAAAAACACAGATCTTGAGGCTCTCATGGAATGGCTAAAGACAAGACCAATTCTGTCACCTCTGACTAAGGGGATTTTGGGGTTTGTGTTCACGCTCACCGTGCCCAGTGAGCGAGGACTGCAGCGTAGACGCTTTGTCCAAAATGCCCTCAATGGGAATGGAGATCCAAATAACATGGACAAAGCAGTTAAACTGTATAGGAAACTTAAGAGGGAGATAACGTTCCATGGGGCCAAAGAAATAGCTCTCAGTTATTCTGCTGGTGCACTTGCCAGTTGCATGGGCCTCATATACAATAGGATGGGGGCTGTAACCACTGAAGTGGCATTTGGCCTGGTATGTGCAACATGTGAACAGATTGCTGACTCCCAGCACAGGTCTCATAGGCAAATGGTGGCAACAACCAATCCATTAATAAAACATGAGAACAGAATGGTTTTGGCCAGCACTACAGCTAAGGCTATGGAGCAAATGGCTGGATCAAGTGAGCAGGCAGCGGAGGCCATGGAAATTGCTAGTCAGGCCAGGCAAATGGTGCAGGCAATGAGAGCCGTTGGGACTCATCCTAGCTCCAGTACTGGTCTAAGAGATGATCTTCTTGAAAATTTGCAGACCTATCAGAAACGAATGGGGGTGCAGATGCAACGATTCAAGTGACCCGCTTGTTGTTGCCGCGAGTATCATTGGGATCTTGCACTTGATATTGTGGATTCTTGATCGTCTTTTTTTCAAATGCGTCTATCGACTCTTCAAACACGGCCTTAAAAGAGGCCCTTCTACGGAAGGAGTACCTGAGTCTATGAGGGAAGAATATCGAAAGGAACAGCAGAATGCTGTGGATGCTGACGACAGTCATTTTGTCAGCATAGAGTTGGAGTAAAAAACTACCTTGTTTCTACT', 'FLUAVH3N2_s7p1', 'Influenza A virus (A/New York/392/2004(H3N2)) segment 7, complete', 'Influenza A virus (A/New York/392/2004(H3N2))\r\n            Viruses; Riboviria; Orthornavirae; Negarnaviricota;\r\n            Polyploviricotina; Insthoviricetes; Articulavirales;\r\n            Orthomyxoviridae; Alphainfluenzavirus.', 'DNA', 'M'),
(8, 'AGCAAAAGCAGGGTGACAAAGACATAATGGATTCCAACACTGTGTCAAGTTTCCAGGTAGATTGCTTTCTTTGGCATATCCGGAAACAAGTTGTAGACCAAGAACTGAGTGATGCCCCATTCCTTGATCGGCTTCGCCGAGATCAGAGGTCCCTAAGGGGAAGAGGCAATACTCTCGGTCTAGACATCAAAGCAGCCACCCATGTTGGAAAGCAAATTGTAGAAAAGATTCTGAAAGAAGAATCTGATGAGGCACTTAAAATGACCATGGTCTCCACACCTGCTTCGCGATACATAACTGACATGACTATTGAGGAATTGTCAAGAAACTGGTTCATGCTAATGCCCAAGCAGAAAGTGGAAGGACCTCTTTGCATCAGAATGGACCAGGCAATCATGGAGAAAAACATCATGTTGAAAGCGAATTTCAGTGTGATTTTTGACCGACTAGAGACCATAGTATTACTAAGGGCTTTCACCGAAGAGGGAGCAATTGTTGGCGAAATCTCACCATTGCCTTCTTTTCCAGGACATACTATTGAGGATGTCAAAAATGCAATTGGGGTCCTCATCGGAGGACTTGAATGGAATGATAACACAGTTCGAGTCTCTAAAAATCTACAGAGATTCGCTTGGAGAAGCAGTAATGAGAATGGGGGACCTCCACTTACTCCAAAACAGAAACGGAAAATGGCGAGAACAGCTAGGTCAAAAGTTTGAAGAGATAAGATGGCTGATTGAAGAAGTGAGACACAGACTAAAAACAACTGAAAATAGCTTTGAACAAATAACATTCATGCAAGCATTACAACTGCTGTTTGAAGTGGAACAGGAGATAAGAACTTTCTCATTTCAGCTTATTTAATGATAAAAAACACCCTTGTTTCTACT', 'FLUAVH3N2_s8p1', 'Influenza A virus (A/New York/392/2004(H3N2)) segment 8, complete', 'Influenza A virus (A/New York/392/2004(H3N2))\r\n            Viruses; Riboviria; Orthornavirae; Negarnaviricota;\r\n            Polyploviricotina; Insthoviricetes; Articulavirales;\r\n            Orthomyxoviridae; Alphainfluenzavirus.', 'DNA', 'NS1');

-- --------------------------------------------------------

--
-- Table structure for table `inserted_sequences`
--

CREATE TABLE IF NOT EXISTS `inserted_sequences` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_ID` int(11) NOT NULL,
  `Sequence` varchar(3000) NOT NULL,
  `Locus_Tag` varchar(3000) NOT NULL,
  `Description` varchar(3000) NOT NULL,
  `Gene_Type` varchar(3000) NOT NULL,
  `Gene_Symbol` varchar(3000) NOT NULL,
  `Organism` varchar(3000) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `User_ID` (`User_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `inserted_sequences`
--

INSERT INTO `inserted_sequences` (`ID`, `User_ID`, `Sequence`, `Locus_Tag`, `Description`, `Gene_Type`, `Gene_Symbol`, `Organism`) VALUES
(1, 24, 'ACHGTCGTASDTGCGATGCATGACACAGTACGATCAGATGACGAT', 'Cat', 'Cat DNA', 'DNA', 'Cat-1', 'Cat ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(3000) NOT NULL,
  `Birthday` varchar(3000) NOT NULL,
  `Gender` varchar(3000) NOT NULL,
  `Job_Title` varchar(3000) NOT NULL,
  `EMail` varchar(3000) NOT NULL,
  `Phone` varchar(3000) NOT NULL,
  `Address` varchar(3000) NOT NULL,
  `Background_Knowledge` varchar(3000) NOT NULL,
  `Usage_Reason` varchar(3000) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Name`, `Birthday`, `Gender`, `Job_Title`, `EMail`, `Phone`, `Address`, `Background_Knowledge`, `Usage_Reason`) VALUES
(15, 'Sarah Hesham', '2023-05-01', 'Female', 'Computer Scientist', 'sarah@gmail.com', '01212563404', 'Egypt', 'Computer Science', 'Academic'),
(16, 'Hesham Ahmed', '2023-05-19', 'Male', 'Computer Scientist and Bioinformatician', 'hesham@gmail.com', '0121256340888', 'Egypt', 'Bioinformatics', 'Business'),
(17, 'Loay Amgad', '2023-05-31', 'Male', 'Data Scientist', 'Loay@gmail.com', '01121215488', 'Egypt', 'Chemistry', 'Research'),
(18, 'Merna Elia', '2023-05-04', 'Female', 'Web Developer', 'merna@gmail.com', '01012564652', 'Egypt', 'Biotechnology', 'Other'),
(19, 'Merna Elia', '2023-05-04', 'Female', 'Web Developer', 'merna@gmail.com', '01012564652', 'Egypt', 'Biotechnology', 'Other'),
(20, 'Merna Elia', '2023-05-04', 'Female', 'Web Developer', 'merna@gmail.com', '01012564652', 'Egypt', 'Biotechnology', 'Other'),
(21, 'Merna Elia', '2023-05-04', 'Female', 'Web Developer', 'merna@gmail.com', '01012564652', 'Egypt', 'Biotechnology', 'Other'),
(22, 'Merna Elia', '2023-05-04', 'Female', 'Web Developer', 'merna@gmail.com', '01012564652', 'Egypt', 'Biotechnology', 'Other'),
(23, 'Merna Elia', '2023-05-04', 'Female', 'Web Developer', 'merna@gmail.com', '01012564652', 'Egypt', 'Biotechnology', 'Other'),
(24, 'Merna Elia', '2023-05-04', 'Female', 'Web Developer', 'merna@gmail.com', '01012564652', 'Egypt', 'Biotechnology', 'Other');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inserted_sequences`
--
ALTER TABLE `inserted_sequences`
  ADD CONSTRAINT `Test` FOREIGN KEY (`User_ID`) REFERENCES `users` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
