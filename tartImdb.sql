-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 10, 2011 at 05:43 PM
-- Server version: 5.1.44
-- PHP Version: 5.3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tartImdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cast`
--

CREATE TABLE `cast` (
  `cast_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `birthday` varchar(10) NOT NULL,
  `photo_url` varchar(200) NOT NULL,
  PRIMARY KEY (`cast_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `cast`
--


-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `is_visible` int(11) NOT NULL,
  `text` varchar(1000) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `comment`
--


-- --------------------------------------------------------

--
-- Table structure for table `imdbPoint`
--

CREATE TABLE `imdbPoint` (
  `imdbPoin_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `point` float NOT NULL,
  PRIMARY KEY (`imdbPoin_id`),
  UNIQUE KEY `user_id` (`user_id`,`movie_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `imdbPoint`
--


-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `job`
--


-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `year` varchar(10) NOT NULL,
  `duration` varchar(10) NOT NULL,
  `imdb_point` float NOT NULL,
  `summary` varchar(500) NOT NULL,
  `trailer_url` varchar(200) NOT NULL,
  `photo_url` varchar(200) NOT NULL,
  PRIMARY KEY (`movie_id`),
  UNIQUE KEY `type_id` (`type_id`),
  KEY `imdb_point` (`imdb_point`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `movie`
--


-- --------------------------------------------------------

--
-- Table structure for table `movieCastJobRelation`
--

CREATE TABLE `movieCastJobRelation` (
  `movieCastJobRelation_id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `cast_id` int(11) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  PRIMARY KEY (`movieCastJobRelation_id`),
  UNIQUE KEY `movie_id` (`movie_id`,`job_id`,`cast_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `movieCastJobRelation`
--


-- --------------------------------------------------------

--
-- Table structure for table `movieCommentUserRelation`
--

CREATE TABLE `movieCommentUserRelation` (
  `movieCommentUserRelation_id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY (`movieCommentUserRelation_id`),
  UNIQUE KEY `movie_id` (`movie_id`,`user_id`,`comment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `movieCommentUserRelation`
--


-- --------------------------------------------------------

--
-- Table structure for table `movieTypeRelation`
--

CREATE TABLE `movieTypeRelation` (
  `movie_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  UNIQUE KEY `movie_id` (`movie_id`,`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movieTypeRelation`
--


-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `type`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `wishList_id` int(11) NOT NULL,
  `watchList_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `wishList_id` (`wishList_id`,`watchList_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user`
--


-- --------------------------------------------------------

--
-- Table structure for table `watchList`
--

CREATE TABLE `watchList` (
  `watchList_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `array_movie_id` varchar(1000) NOT NULL,
  PRIMARY KEY (`watchList_id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `watchList`
--


-- --------------------------------------------------------

--
-- Table structure for table `wishList`
--

CREATE TABLE `wishList` (
  `wishList_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `array_movie_id` varchar(1000) NOT NULL,
  PRIMARY KEY (`wishList_id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wishList`
--

