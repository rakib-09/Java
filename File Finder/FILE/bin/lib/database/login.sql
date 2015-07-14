-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2015 at 11:35 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `drive`
--

CREATE TABLE IF NOT EXISTS `drive` (
  `drive` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drive`
--

INSERT INTO `drive` (`drive`) VALUES
('C:\\'),
('D:\\'),
('E:\\'),
('F:\\');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `SURNAME` varchar(255) NOT NULL,
  `AGE` int(16) NOT NULL,
  `GENDER` varchar(16) DEFAULT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`FirstName`, `LastName`, `SURNAME`, `AGE`, `GENDER`, `UserName`, `Password`) VALUES
('rakib', 'hasan', 'rumi', 20, 'male', 'RAKIB_09', '1234'),
('shafi', 'hasan', 'shahi', 23, 'male', 'shahi_09', '4321'),
('shohan', 'hossain', 'ean', 22, 'male', 'shohan_09', '12345'),
('mahedi', 'hasan', 'laurence', 22, 'male', 'mahedi', '1234'),
('sarwar', 'hossain', 'shawon', 22, 'male', 'shawon_1', '1234'),
('wohhie', 'mahmud', 'nimul', 22, 'MALE', 'jewel', '0'),
('evan', 'sarwar', 'mahmud', 20, 'male', 'evan', '0000');

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE IF NOT EXISTS `search` (
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`path`) VALUES
('E:\\BANGLA\\Chotushkon\\Chotushkone 2014 DVD Rip ESuB.mkv'),
('E:\\BANGLA\\Heerak Rajar Deshe\\Heerak Rajar Deshe 1980 - part1.mkv'),
('E:\\BANGLA\\Heerak Rajar Deshe\\Heerak Rajar Deshe 1980 - part2.mkv'),
('E:\\ENGLISH\\MOVIES\\Watch List\\8½ (1963)\\8½ (1963) .mkv'),
('E:\\ENGLISH\\MOVIES\\Watch List\\Crazy,stupid,love\\Crazy.Stupid.Love(2011)DVDRip.425MB.mkv'),
('E:\\ENGLISH\\MOVIES\\Watch List\\Dead Poets Society 1989 HDTVrip 720p x264 Herakler\\Dead Poets Society 1989 HDTVrip 720p x264 Herakler.mkv'),
('E:\\ENGLISH\\MOVIES\\Watch List\\Ida.2013.LiMiTED.BDRip.x264-LPD[rarbg]\\ida.2013.limited.bdrip.x264-lpd.mkv'),
('E:\\ENGLISH\\MOVIES\\Watch List\\kingheaven05brr750.MediafireHBO.COM.mkv'),
('E:\\ENGLISH\\MOVIES\\Watch List\\Laurence of Arabia\\Lawrence.of.Arabia.(1962).720p.BrRip.YIFY.mkv'),
('E:\\ENGLISH\\MOVIES\\Watch List\\Prince of Persia\\Prince of Persia.mkv'),
('E:\\ENGLISH\\MOVIES\\Watch List\\The Great Escape (1963)\\The.Great.Escape.1963.HDTVRip.x264.YIFY.mkv'),
('E:\\ENGLISH\\MOVIES\\Watch List\\True Grit\\True Grit.2010.BRRip.300m.Dual.mkv'),
('E:\\ENGLISH\\MOVIES\\Watch List\\V for Vendetta\\V.For.Vendetta.Dual.350MB.mkv'),
('E:\\ENGLISH\\MOVIES\\Watch List\\Vertigo\\Vertigo.mkv'),
('E:\\ENGLISH\\MOVIES\\Watched\\Nightcrawler (2014)\\Nightcrawler (2014) 720p BluRay - [KIKS].mkv'),
('E:\\ENGLISH\\MOVIES\\Watched\\Sherlock Holmes [2009]\\Sherlock Holmes (2009) [58.500].mkv'),
('E:\\ENGLISH\\MOVIES\\Watched\\Sherlock.Holmes.2.Game.Of.Shadows.2011.720p.BrRip.{Gruntly69}.?ThumperDC?\\Sherlock.Holmes.2.Game.Of.Shadows.2011.720p.BrRip.{Gruntly69}.?ThumperDC?.mkv'),
('E:\\ENGLISH\\MOVIES\\Watched\\The Devil''s Advocate (1997)\\The.Devil''s.Advocate.720p.HDTV.x264.YIFY.mkv'),
('E:\\ENGLISH\\MOVIES\\Watched\\The Imitation games\\The Imitation Game 2014 DVDSCR 750MB MkvCage\\The Imitation Game 2014 DVDSCR 750MB MkvCage.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking Bad - EXTRAS\\Inside.Breaking.Bad.S05E01.480p.WEB-DL.x264-mSD.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking Bad - EXTRAS\\Inside.Breaking.Bad.S05E02.480p.WEB-DL.x264-mSD.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking Bad - EXTRAS\\Inside.Breaking.Bad.S05E03.480p.WEB-DL.x264-mSD.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking Bad - EXTRAS\\Inside.Breaking.Bad.S05E04.480p.WEB-DL.x264-mSD.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking Bad - EXTRAS\\Inside.Breaking.Bad.S05E05.480p.WEB-DL.x264-mSD.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking Bad - EXTRAS\\Inside.Breaking.Bad.S05E06.480p.WEB-DL.x264-mSD.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking Bad - EXTRAS\\Inside.Breaking.Bad.S05E07.480p.WEB-DL.x264-mSD.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking Bad - EXTRAS\\Inside.Breaking.Bad.S05E08.480p.WEB-DL.x264-mSD.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking Bad - Season 5 (Part. 1) Ep. 1-8 [HDTV-480p]-mSD\\Breaking.Bad.S05E01.480p.HDTV.x264-mSD.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking Bad - Season 5 (Part. 1) Ep. 1-8 [HDTV-480p]-mSD\\Breaking.Bad.S05E02.480p.HDTV.x264-mSD.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking Bad - Season 5 (Part. 1) Ep. 1-8 [HDTV-480p]-mSD\\Breaking.Bad.S05E03.480p.HDTV.x264-mSD.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking Bad - Season 5 (Part. 1) Ep. 1-8 [HDTV-480p]-mSD\\Breaking.Bad.S05E04.480p.HDTV.x264-mSD.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking Bad - Season 5 (Part. 1) Ep. 1-8 [HDTV-480p]-mSD\\Breaking.Bad.S05E05.480p.HDTV.x264-mSD.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking Bad - Season 5 (Part. 1) Ep. 1-8 [HDTV-480p]-mSD\\Breaking.Bad.S05E06.480p.HDTV.x264-mSD.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking Bad - Season 5 (Part. 1) Ep. 1-8 [HDTV-480p]-mSD\\Breaking.Bad.S05E07.PROPER.480p.HDTV.x264-EVOLVE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking Bad - Season 5 (Part. 1) Ep. 1-8 [HDTV-480p]-mSD\\Breaking.Bad.S05E08.480p.HDTV.x264-mSD.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S01.480p.BRRip.x264-BoB\\Breaking.Bad.S01E01.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S01.480p.BRRip.x264-BoB\\Breaking.Bad.S01E02.480p.BluRay.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S01.480p.BRRip.x264-BoB\\Breaking.Bad.S01E03.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S01.480p.BRRip.x264-BoB\\Breaking.Bad.S01E04.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S01.480p.BRRip.x264-BoB\\Breaking.Bad.S01E05.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S01.480p.BRRip.x264-BoB\\Breaking.Bad.S01E06.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S01.480p.BRRip.x264-BoB\\Breaking.Bad.S01E07.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S02.480p.BRRip.x264-BoB\\Breaking.Bad.S02E01.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S02.480p.BRRip.x264-BoB\\Breaking.Bad.S02E02.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S02.480p.BRRip.x264-BoB\\Breaking.Bad.S02E03.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S02.480p.BRRip.x264-BoB\\Breaking.Bad.S02E04.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S02.480p.BRRip.x264-BoB\\Breaking.Bad.S02E05.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S02.480p.BRRip.x264-BoB\\Breaking.Bad.S02E06.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S02.480p.BRRip.x264-BoB\\Breaking.Bad.S02E07.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S02.480p.BRRip.x264-BoB\\Breaking.Bad.S02E08.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S02.480p.BRRip.x264-BoB\\Breaking.Bad.S02E09.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S02.480p.BRRip.x264-BoB\\Breaking.Bad.S02E10.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S02.480p.BRRip.x264-BoB\\Breaking.Bad.S02E11.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S02.480p.BRRip.x264-BoB\\Breaking.Bad.S02E12.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S02.480p.BRRip.x264-BoB\\Breaking.Bad.S02E13.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S03.480p.BRRip.x264-BoB\\Breaking.Bad.S03E01.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S03.480p.BRRip.x264-BoB\\Breaking.Bad.S03E02.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S03.480p.BRRip.x264-BoB\\Breaking.Bad.S03E03.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S03.480p.BRRip.x264-BoB\\Breaking.Bad.S03E04.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S03.480p.BRRip.x264-BoB\\Breaking.Bad.S03E05.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S03.480p.BRRip.x264-BoB\\Breaking.Bad.S03E06.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S03.480p.BRRip.x264-BoB\\Breaking.Bad.S03E07.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S03.480p.BRRip.x264-BoB\\Breaking.Bad.S03E08.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S03.480p.BRRip.x264-BoB\\Breaking.Bad.S03E09.480p.BRRip.X264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S03.480p.BRRip.x264-BoB\\Breaking.Bad.S03E10.480p.BRRip.X264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S03.480p.BRRip.x264-BoB\\Breaking.Bad.S03E11.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S03.480p.BRRip.x264-BoB\\Breaking.Bad.S03E12.480p.BRRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S03.480p.BRRip.x264-BoB\\Breaking.Bad.S03E13.480p.BRRip.X264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S04.480p.WEB-DL.x264-BoB\\Breaking.Bad.S04E01.480p.WEB-DLRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S04.480p.WEB-DL.x264-BoB\\Breaking.Bad.S04E02.480p.WEB-DLRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S04.480p.WEB-DL.x264-BoB\\Breaking.Bad.S04E03.480p.WEB-DLRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S04.480p.WEB-DL.x264-BoB\\Breaking.Bad.S04E04.480p.WEB-DLRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S04.480p.WEB-DL.x264-BoB\\Breaking.Bad.S04E05.480p.WEB-DLRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S04.480p.WEB-DL.x264-BoB\\Breaking.Bad.S04E06.480p.WEB-DLRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S04.480p.WEB-DL.x264-BoB\\Breaking.Bad.S04E07.480p.WEB-DLRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S04.480p.WEB-DL.x264-BoB\\Breaking.Bad.S04E08.480p.WEB-DLRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S04.480p.WEB-DL.x264-BoB\\Breaking.Bad.S04E09.480p.WEB-DLRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S04.480p.WEB-DL.x264-BoB\\Breaking.Bad.S04E10.480p.WEB-DLRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S04.480p.WEB-DL.x264-BoB\\Breaking.Bad.S04E11.480p.WEB-DLRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S04.480p.WEB-DL.x264-BoB\\Breaking.Bad.S04E12.480p.WEB-DLRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Breaking Bad\\Breaking.Bad.S04.480p.WEB-DL.x264-BoB\\Breaking.Bad.S04E13.480p.WEB-DLRip.x264-BoB.mkv'),
('E:\\ENGLISH\\TV SERIES\\Cosmos A Space Time Odyssey - Season 1 Complete - ChameE\\Cosmos.A.Space.Time.Odyssey.S01E01.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Cosmos A Space Time Odyssey - Season 1 Complete - ChameE\\Cosmos.A.Space.Time.Odyssey.S01E02.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Cosmos A Space Time Odyssey - Season 1 Complete - ChameE\\Cosmos.A.Space.Time.Odyssey.S01E03.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Cosmos A Space Time Odyssey - Season 1 Complete - ChameE\\Cosmos.A.Space.Time.Odyssey.S01E04.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Cosmos A Space Time Odyssey - Season 1 Complete - ChameE\\Cosmos.A.Space.Time.Odyssey.S01E05.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Cosmos A Space Time Odyssey - Season 1 Complete - ChameE\\Cosmos.A.Space.Time.Odyssey.S01E06.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Cosmos A Space Time Odyssey - Season 1 Complete - ChameE\\Cosmos.A.Space.Time.Odyssey.S01E07.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Cosmos A Space Time Odyssey - Season 1 Complete - ChameE\\Cosmos.A.Space.Time.Odyssey.S01E08.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Cosmos A Space Time Odyssey - Season 1 Complete - ChameE\\Cosmos.A.Space.Time.Odyssey.S01E09.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Cosmos A Space Time Odyssey - Season 1 Complete - ChameE\\Cosmos.A.Space.Time.Odyssey.S01E10.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Cosmos A Space Time Odyssey - Season 1 Complete - ChameE\\Cosmos.A.Space.Time.Odyssey.S01E11.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Cosmos A Space Time Odyssey - Season 1 Complete - ChameE\\Cosmos.A.Space.Time.Odyssey.S01E12.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Cosmos A Space Time Odyssey - Season 1 Complete - ChameE\\Cosmos.A.Space.Time.Odyssey.S01E13.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Game of Thrones - Season 4 Complete - ChameE\\Game.Of.Thrones.S04E01.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Game of Thrones - Season 4 Complete - ChameE\\Game.Of.Thrones.S04E02.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Game of Thrones - Season 4 Complete - ChameE\\Game.Of.Thrones.S04E03.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Game of Thrones - Season 4 Complete - ChameE\\Game.Of.Thrones.S04E04.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Game of Thrones - Season 4 Complete - ChameE\\Game.Of.Thrones.S04E05.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Game of Thrones - Season 4 Complete - ChameE\\Game.Of.Thrones.S04E06.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Game of Thrones - Season 4 Complete - ChameE\\Game.Of.Thrones.S04E07.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Game of Thrones - Season 4 Complete - ChameE\\Game.Of.Thrones.S04E08.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Game of Thrones - Season 4 Complete - ChameE\\Game.Of.Thrones.S04E09.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Game of Thrones - Season 4 Complete - ChameE\\Game.Of.Thrones.S04E10.HDTV.x264-ChameE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Game of Thrones Season 3  Complete 480p HDTV x264 [Multi-Sub] [DexzAery]\\Game of Thrones S03E01-Valar Dohaeris.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Game of Thrones Season 3  Complete 480p HDTV x264 [Multi-Sub] [DexzAery]\\Game of Thrones S03E02-Dark Wings, Dark Words.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Game of Thrones Season 3  Complete 480p HDTV x264 [Multi-Sub] [DexzAery]\\Game of Thrones S03E03-Walk of Punishment.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Game of Thrones Season 3  Complete 480p HDTV x264 [Multi-Sub] [DexzAery]\\Game of Thrones S03E04-And Now His Watch is Ended.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Game of Thrones Season 3  Complete 480p HDTV x264 [Multi-Sub] [DexzAery]\\Game of Thrones S03E05-Kissed by Fire.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Game of Thrones Season 3  Complete 480p HDTV x264 [Multi-Sub] [DexzAery]\\Game of Thrones S03E06-The Climb.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Game of Thrones Season 3  Complete 480p HDTV x264 [Multi-Sub] [DexzAery]\\Game of Thrones S03E07-The Bear and the Maiden Fair.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Game of Thrones Season 3  Complete 480p HDTV x264 [Multi-Sub] [DexzAery]\\Game of Thrones S03E08-Second Sons.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Game of Thrones Season 3  Complete 480p HDTV x264 [Multi-Sub] [DexzAery]\\Game of Thrones S03E09-The Rains of Castamere.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Game of Thrones Season 3  Complete 480p HDTV x264 [Multi-Sub] [DexzAery]\\Game of Thrones S03E10-Mhysa.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Season 5\\Game.of.Thrones.S05E01.HDTV.275MB.MkvCage.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Season 5\\Game.of.Thrones.S05E02.HDTV.300MB.MkvCage.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Season 5\\Game.of.Thrones.S05E03.HDTV.350MB.MkvCage.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\Season 5\\Game.of.Thrones.S05E04.HDTV.300MB.MkvCage.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\season1\\Game of Thrones - 1x01 - Winter is Coming.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\season1\\Game of Thrones - 1x02 - The Kingsroad.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\season1\\Game of Thrones - 1x03 - Lord Snow.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\season1\\Game of Thrones - 1x04 - Cripples  Bastards  and Broken Things.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\season1\\Game of Thrones - 1x05 - The Wolf and the Lion.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\season1\\Game of Thrones - 1x06 - A Golden Crown.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\season1\\Game of Thrones - 1x07 - You Win or You Die.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\season1\\Game of Thrones - 1x08 - The Pointy End.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\season1\\Game of Thrones - 1x09 - Baelor.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\season1\\Game of Thrones - 1x10 - Fire and Blood.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\season2\\Game.of.Thrones.S02E09.480p.HDTV.x264-mSD.mkv'),
('E:\\ENGLISH\\TV SERIES\\Game of Thrones\\season2\\Game.of.Thrones.S02E10.480p.HDTV.x264-IMMERSE.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\season 1\\Suits.S01E01.480p.vk007.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\season 1\\Suits.S01E02.480p.vk007.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\season 1\\Suits.S01E03.480p.vk007.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\season 1\\Suits.S01E04.480p.vk007.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\season 1\\Suits.S01E05.480p.vk007.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\season 1\\Suits.S01E06.480p.vk007.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\season 1\\Suits.S01E07.480p.vk007.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\season 1\\Suits.S01E08.480p.vk007.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\season 1\\Suits.S01E09.480p.vk007.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\season 1\\Suits.S01E10.480p.vk007.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\season 1\\Suits.S01E11.480p.vk007.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\season 1\\Suits.S01E12.480p.vk007.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\Season 3\\Suits S03E09 HDTV x264 AAC [VectoR].mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\Season 3\\Suits S03E10 HDTV x264 AAC [VectoR].mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\Suits Season 2 Complete HDTVRip x264 MKV [VectoR]\\Suits.S02E01.HDTV.x264.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\Suits Season 2 Complete HDTVRip x264 MKV [VectoR]\\Suits.S02E02.HDTV.x264.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\Suits Season 2 Complete HDTVRip x264 MKV [VectoR]\\Suits.S02E03.HDTV.x264.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\Suits Season 2 Complete HDTVRip x264 MKV [VectoR]\\Suits.S02E04.HDTV.x264.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\Suits Season 2 Complete HDTVRip x264 MKV [VectoR]\\Suits.S02E05.HDTV.x264.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\Suits Season 2 Complete HDTVRip x264 MKV [VectoR]\\Suits.S02E06.HDTV.x264.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\Suits Season 2 Complete HDTVRip x264 MKV [VectoR]\\Suits.S02E07.HDTV.x264.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\Suits Season 2 Complete HDTVRip x264 MKV [VectoR]\\Suits.S02E08.HDTV.x264.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\Suits Season 2 Complete HDTVRip x264 MKV [VectoR]\\Suits.S02E09.HDTV.x264.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\Suits Season 2 Complete HDTVRip x264 MKV [VectoR]\\Suits.S02E10.HDTV.x264.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\Suits Season 2 Complete HDTVRip x264 MKV [VectoR]\\Suits.S02E11.HDTV.x264.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\Suits Season 2 Complete HDTVRip x264 MKV [VectoR]\\Suits.S02E12.HDTV.x264.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\Suits Season 2 Complete HDTVRip x264 MKV [VectoR]\\Suits.S02E13.HDTV.x264.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\Suits Season 2 Complete HDTVRip x264 MKV [VectoR]\\Suits.S02E14.HDTV.x264.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\Suits Season 2 Complete HDTVRip x264 MKV [VectoR]\\Suits.S02E15.HDTV.x264.mkv'),
('E:\\ENGLISH\\TV SERIES\\Suits\\Suits Season 2 Complete HDTVRip x264 MKV [VectoR]\\Suits.S02E16.HDTV.x264.mkv'),
('E:\\ENGLISH\\TV SERIES\\The big Bang theory\\The Big Bang Theory Season 5\\s5e10-the flaming spittoon acquisition.mkv'),
('E:\\ENGLISH\\TV SERIES\\The big Bang theory\\The Big Bang Theory Season 5\\s5e6.mkv'),
('E:\\ENGLISH\\TV SERIES\\The big Bang theory\\The Big Bang Theory Season 5\\s5e8.mkv'),
('E:\\ENGLISH\\TV SERIES\\The big Bang theory\\The Big Bang Theory Season 5\\s5e9.mkv');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drive`
--
ALTER TABLE `drive`
 ADD UNIQUE KEY `drive` (`drive`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
 ADD UNIQUE KEY `UserName` (`UserName`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
