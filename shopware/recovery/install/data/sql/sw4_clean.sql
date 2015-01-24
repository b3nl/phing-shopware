-- MySQL dump 10.15  Distrib 10.0.13-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: sw_deploy
-- ------------------------------------------------------
-- Server version	10.0.13-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `s_addon_premiums`
--

DROP TABLE IF EXISTS `s_addon_premiums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_addon_premiums` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `startprice` double NOT NULL DEFAULT '0',
  `ordernumber` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ordernumber_export` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `subshopID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_addon_premiums`
--

LOCK TABLES `s_addon_premiums` WRITE;
/*!40000 ALTER TABLE `s_addon_premiums` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_addon_premiums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_article_configurator_dependencies`
--

DROP TABLE IF EXISTS `s_article_configurator_dependencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_article_configurator_dependencies` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `configurator_set_id` int(10) unsigned NOT NULL,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `child_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `configurator_set_id` (`configurator_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_article_configurator_dependencies`
--

LOCK TABLES `s_article_configurator_dependencies` WRITE;
/*!40000 ALTER TABLE `s_article_configurator_dependencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_article_configurator_dependencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_article_configurator_groups`
--

DROP TABLE IF EXISTS `s_article_configurator_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_article_configurator_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_article_configurator_groups`
--

LOCK TABLES `s_article_configurator_groups` WRITE;
/*!40000 ALTER TABLE `s_article_configurator_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_article_configurator_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_article_configurator_option_relations`
--

DROP TABLE IF EXISTS `s_article_configurator_option_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_article_configurator_option_relations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(11) unsigned NOT NULL,
  `option_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `article_id` (`article_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_article_configurator_option_relations`
--

LOCK TABLES `s_article_configurator_option_relations` WRITE;
/*!40000 ALTER TABLE `s_article_configurator_option_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_article_configurator_option_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_article_configurator_options`
--

DROP TABLE IF EXISTS `s_article_configurator_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_article_configurator_options` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_article_configurator_options`
--

LOCK TABLES `s_article_configurator_options` WRITE;
/*!40000 ALTER TABLE `s_article_configurator_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_article_configurator_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_article_configurator_price_surcharges`
--

DROP TABLE IF EXISTS `s_article_configurator_price_surcharges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_article_configurator_price_surcharges` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `configurator_set_id` int(10) unsigned NOT NULL,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `child_id` int(11) unsigned DEFAULT NULL,
  `surcharge` decimal(10,3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `configurator_set_id` (`configurator_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_article_configurator_price_surcharges`
--

LOCK TABLES `s_article_configurator_price_surcharges` WRITE;
/*!40000 ALTER TABLE `s_article_configurator_price_surcharges` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_article_configurator_price_surcharges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_article_configurator_set_group_relations`
--

DROP TABLE IF EXISTS `s_article_configurator_set_group_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_article_configurator_set_group_relations` (
  `set_id` int(11) unsigned NOT NULL DEFAULT '0',
  `group_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`set_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_article_configurator_set_group_relations`
--

LOCK TABLES `s_article_configurator_set_group_relations` WRITE;
/*!40000 ALTER TABLE `s_article_configurator_set_group_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_article_configurator_set_group_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_article_configurator_set_option_relations`
--

DROP TABLE IF EXISTS `s_article_configurator_set_option_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_article_configurator_set_option_relations` (
  `set_id` int(11) unsigned NOT NULL DEFAULT '0',
  `option_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`set_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_article_configurator_set_option_relations`
--

LOCK TABLES `s_article_configurator_set_option_relations` WRITE;
/*!40000 ALTER TABLE `s_article_configurator_set_option_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_article_configurator_set_option_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_article_configurator_sets`
--

DROP TABLE IF EXISTS `s_article_configurator_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_article_configurator_sets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_article_configurator_sets`
--

LOCK TABLES `s_article_configurator_sets` WRITE;
/*!40000 ALTER TABLE `s_article_configurator_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_article_configurator_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_article_configurator_template_prices`
--

DROP TABLE IF EXISTS `s_article_configurator_template_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_article_configurator_template_prices` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(10) unsigned DEFAULT NULL,
  `customer_group_key` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `from` int(10) unsigned NOT NULL,
  `to` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `pseudoprice` double DEFAULT NULL,
  `baseprice` double DEFAULT NULL,
  `percent` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pricegroup_2` (`customer_group_key`,`from`),
  KEY `pricegroup` (`customer_group_key`,`to`),
  KEY `template_id` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_article_configurator_template_prices`
--

LOCK TABLES `s_article_configurator_template_prices` WRITE;
/*!40000 ALTER TABLE `s_article_configurator_template_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_article_configurator_template_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_article_configurator_template_prices_attributes`
--

DROP TABLE IF EXISTS `s_article_configurator_template_prices_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_article_configurator_template_prices_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_price_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `priceID` (`template_price_id`),
  CONSTRAINT `s_article_configurator_template_prices_attributes_ibfk_1` FOREIGN KEY (`template_price_id`) REFERENCES `s_article_configurator_template_prices` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_article_configurator_template_prices_attributes`
--

LOCK TABLES `s_article_configurator_template_prices_attributes` WRITE;
/*!40000 ALTER TABLE `s_article_configurator_template_prices_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_article_configurator_template_prices_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_article_configurator_templates`
--

DROP TABLE IF EXISTS `s_article_configurator_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_article_configurator_templates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(11) unsigned NOT NULL DEFAULT '0',
  `order_number` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `suppliernumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additionaltext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `impressions` int(11) NOT NULL DEFAULT '0',
  `sales` int(11) NOT NULL DEFAULT '0',
  `active` int(11) unsigned NOT NULL DEFAULT '0',
  `instock` int(11) DEFAULT NULL,
  `stockmin` int(11) unsigned DEFAULT NULL,
  `weight` decimal(10,3) unsigned DEFAULT NULL,
  `position` int(11) unsigned NOT NULL,
  `width` decimal(10,3) unsigned DEFAULT NULL,
  `height` decimal(10,3) unsigned DEFAULT NULL,
  `length` decimal(10,3) unsigned DEFAULT NULL,
  `ean` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_id` int(11) unsigned DEFAULT NULL,
  `purchasesteps` int(11) unsigned DEFAULT NULL,
  `maxpurchase` int(11) unsigned DEFAULT NULL,
  `minpurchase` int(11) unsigned DEFAULT NULL,
  `purchaseunit` decimal(11,4) unsigned DEFAULT NULL,
  `referenceunit` decimal(10,3) unsigned DEFAULT NULL,
  `packunit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `releasedate` date DEFAULT NULL,
  `shippingfree` int(1) unsigned NOT NULL DEFAULT '0',
  `shippingtime` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articleID` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_article_configurator_templates`
--

LOCK TABLES `s_article_configurator_templates` WRITE;
/*!40000 ALTER TABLE `s_article_configurator_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_article_configurator_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_article_configurator_templates_attributes`
--

DROP TABLE IF EXISTS `s_article_configurator_templates_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_article_configurator_templates_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) unsigned DEFAULT NULL,
  `attr1` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `attr2` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `attr3` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `attr4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr8` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `attr9` mediumtext COLLATE utf8_unicode_ci,
  `attr10` mediumtext COLLATE utf8_unicode_ci,
  `attr11` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr12` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr13` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `attr14` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr15` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr16` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr17` date DEFAULT NULL,
  `attr18` mediumtext COLLATE utf8_unicode_ci,
  `attr19` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr20` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `templateID` (`template_id`),
  CONSTRAINT `s_article_configurator_templates_attributes_ibfk_1` FOREIGN KEY (`template_id`) REFERENCES `s_article_configurator_templates` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_article_configurator_templates_attributes`
--

LOCK TABLES `s_article_configurator_templates_attributes` WRITE;
/*!40000 ALTER TABLE `s_article_configurator_templates_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_article_configurator_templates_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_article_img_mapping_rules`
--

DROP TABLE IF EXISTS `s_article_img_mapping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_article_img_mapping_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mapping_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_article_img_mapping_rules`
--

LOCK TABLES `s_article_img_mapping_rules` WRITE;
/*!40000 ALTER TABLE `s_article_img_mapping_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_article_img_mapping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_article_img_mappings`
--

DROP TABLE IF EXISTS `s_article_img_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_article_img_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `image_id` (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_article_img_mappings`
--

LOCK TABLES `s_article_img_mappings` WRITE;
/*!40000 ALTER TABLE `s_article_img_mappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_article_img_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles`
--

DROP TABLE IF EXISTS `s_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `supplierID` int(11) unsigned DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `description_long` mediumtext COLLATE utf8_unicode_ci,
  `shippingtime` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `active` int(1) unsigned NOT NULL DEFAULT '0',
  `taxID` int(11) unsigned DEFAULT NULL,
  `pseudosales` int(11) NOT NULL DEFAULT '0',
  `topseller` int(1) unsigned NOT NULL DEFAULT '0',
  `metaTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `changetime` datetime NOT NULL,
  `pricegroupID` int(11) unsigned DEFAULT NULL,
  `pricegroupActive` int(1) unsigned NOT NULL,
  `filtergroupID` int(11) unsigned DEFAULT NULL,
  `laststock` int(1) NOT NULL,
  `crossbundlelook` int(1) unsigned NOT NULL,
  `notification` int(1) unsigned NOT NULL COMMENT 'send notification',
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` int(11) NOT NULL,
  `main_detail_id` int(11) unsigned DEFAULT NULL,
  `available_from` datetime DEFAULT NULL,
  `available_to` datetime DEFAULT NULL,
  `configurator_set_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `main_detailID` (`main_detail_id`),
  KEY `datum` (`datum`),
  KEY `name` (`name`),
  KEY `supplierID` (`supplierID`),
  KEY `shippingtime` (`shippingtime`),
  KEY `changetime` (`changetime`),
  KEY `configurator_set_id` (`configurator_set_id`),
  KEY `articles_by_category_sort_release` (`datum`,`id`),
  KEY `articles_by_category_sort_name` (`name`,`id`),
  KEY `product_newcomer` (`active`,`datum`),
  KEY `get_category_filters` (`active`,`filtergroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles`
--

LOCK TABLES `s_articles` WRITE;
/*!40000 ALTER TABLE `s_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_also_bought_ro`
--

DROP TABLE IF EXISTS `s_articles_also_bought_ro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_also_bought_ro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) unsigned NOT NULL,
  `related_article_id` int(11) NOT NULL,
  `sales` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bought_combination` (`article_id`,`related_article_id`),
  KEY `related_article_id` (`related_article_id`),
  KEY `article_id` (`article_id`),
  KEY `get_also_bought_articles` (`article_id`,`sales`,`related_article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_also_bought_ro`
--

LOCK TABLES `s_articles_also_bought_ro` WRITE;
/*!40000 ALTER TABLE `s_articles_also_bought_ro` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_also_bought_ro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_attributes`
--

DROP TABLE IF EXISTS `s_articles_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleID` int(11) unsigned DEFAULT NULL,
  `articledetailsID` int(11) unsigned DEFAULT NULL,
  `attr1` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `attr2` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `attr3` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `attr4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr8` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `attr9` mediumtext COLLATE utf8_unicode_ci,
  `attr10` mediumtext COLLATE utf8_unicode_ci,
  `attr11` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr12` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr13` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `attr14` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr15` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr16` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr17` date DEFAULT NULL,
  `attr18` mediumtext COLLATE utf8_unicode_ci,
  `attr19` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attr20` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `articledetailsID` (`articledetailsID`),
  KEY `articleID` (`articleID`),
  CONSTRAINT `s_articles_attributes_ibfk_1` FOREIGN KEY (`articleID`) REFERENCES `s_articles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `s_articles_attributes_ibfk_2` FOREIGN KEY (`articledetailsID`) REFERENCES `s_articles_details` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_attributes`
--

LOCK TABLES `s_articles_attributes` WRITE;
/*!40000 ALTER TABLE `s_articles_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_avoid_customergroups`
--

DROP TABLE IF EXISTS `s_articles_avoid_customergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_avoid_customergroups` (
  `articleID` int(11) NOT NULL,
  `customergroupID` int(11) NOT NULL,
  UNIQUE KEY `articleID` (`articleID`,`customergroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_avoid_customergroups`
--

LOCK TABLES `s_articles_avoid_customergroups` WRITE;
/*!40000 ALTER TABLE `s_articles_avoid_customergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_avoid_customergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_categories`
--

DROP TABLE IF EXISTS `s_articles_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `articleID` int(11) unsigned NOT NULL,
  `categoryID` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `articleID` (`articleID`,`categoryID`),
  KEY `categoryID` (`categoryID`),
  KEY `articleID_2` (`articleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_categories`
--

LOCK TABLES `s_articles_categories` WRITE;
/*!40000 ALTER TABLE `s_articles_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_categories_ro`
--

DROP TABLE IF EXISTS `s_articles_categories_ro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_categories_ro` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `articleID` int(11) unsigned NOT NULL,
  `categoryID` int(11) unsigned NOT NULL,
  `parentCategoryID` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `articleID` (`articleID`,`categoryID`,`parentCategoryID`),
  KEY `categoryID` (`categoryID`),
  KEY `articleID_2` (`articleID`),
  KEY `categoryID_2` (`categoryID`,`parentCategoryID`),
  KEY `category_id_by_article_id` (`articleID`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_categories_ro`
--

LOCK TABLES `s_articles_categories_ro` WRITE;
/*!40000 ALTER TABLE `s_articles_categories_ro` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_categories_ro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_categories_seo`
--

DROP TABLE IF EXISTS `s_articles_categories_seo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_categories_seo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_article` (`shop_id`,`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_categories_seo`
--

LOCK TABLES `s_articles_categories_seo` WRITE;
/*!40000 ALTER TABLE `s_articles_categories_seo` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_categories_seo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_details`
--

DROP TABLE IF EXISTS `s_articles_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `articleID` int(11) unsigned NOT NULL DEFAULT '0',
  `ordernumber` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `suppliernumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kind` int(1) NOT NULL DEFAULT '0',
  `additionaltext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `impressions` int(11) NOT NULL DEFAULT '0',
  `sales` int(11) NOT NULL DEFAULT '0',
  `active` int(11) unsigned NOT NULL DEFAULT '0',
  `instock` int(11) DEFAULT NULL,
  `stockmin` int(11) unsigned DEFAULT NULL,
  `weight` decimal(10,3) unsigned DEFAULT NULL,
  `position` int(11) unsigned NOT NULL,
  `width` decimal(10,3) unsigned DEFAULT NULL,
  `height` decimal(10,3) unsigned DEFAULT NULL,
  `length` decimal(10,3) unsigned DEFAULT NULL,
  `ean` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unitID` int(11) unsigned DEFAULT NULL,
  `purchasesteps` int(11) unsigned DEFAULT NULL,
  `maxpurchase` int(11) unsigned DEFAULT NULL,
  `minpurchase` int(11) unsigned DEFAULT NULL,
  `purchaseunit` decimal(11,4) unsigned DEFAULT NULL,
  `referenceunit` decimal(10,3) unsigned DEFAULT NULL,
  `packunit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `releasedate` date DEFAULT NULL,
  `shippingfree` int(1) unsigned NOT NULL DEFAULT '0',
  `shippingtime` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ordernumber` (`ordernumber`),
  KEY `articleID` (`articleID`),
  KEY `releasedate` (`releasedate`),
  KEY `articles_by_category_sort_popularity` (`sales`,`impressions`,`articleID`),
  KEY `get_similar_articles` (`kind`,`sales`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_details`
--

LOCK TABLES `s_articles_details` WRITE;
/*!40000 ALTER TABLE `s_articles_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_downloads`
--

DROP TABLE IF EXISTS `s_articles_downloads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_downloads` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `articleID` int(11) unsigned NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `articleID` (`articleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_downloads`
--

LOCK TABLES `s_articles_downloads` WRITE;
/*!40000 ALTER TABLE `s_articles_downloads` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_downloads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_downloads_attributes`
--

DROP TABLE IF EXISTS `s_articles_downloads_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_downloads_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `downloadID` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `downloadID` (`downloadID`),
  CONSTRAINT `s_articles_downloads_attributes_ibfk_1` FOREIGN KEY (`downloadID`) REFERENCES `s_articles_downloads` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_downloads_attributes`
--

LOCK TABLES `s_articles_downloads_attributes` WRITE;
/*!40000 ALTER TABLE `s_articles_downloads_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_downloads_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_esd`
--

DROP TABLE IF EXISTS `s_articles_esd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_esd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleID` int(11) NOT NULL DEFAULT '0',
  `articledetailsID` int(11) NOT NULL DEFAULT '0',
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serials` int(1) NOT NULL DEFAULT '0',
  `notification` int(1) NOT NULL DEFAULT '0',
  `maxdownloads` int(11) NOT NULL DEFAULT '0',
  `datum` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `articleID` (`articleID`),
  KEY `articledetailsID` (`articledetailsID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_esd`
--

LOCK TABLES `s_articles_esd` WRITE;
/*!40000 ALTER TABLE `s_articles_esd` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_esd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_esd_attributes`
--

DROP TABLE IF EXISTS `s_articles_esd_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_esd_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `esdID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `esdID` (`esdID`),
  CONSTRAINT `s_articles_esd_attributes_ibfk_1` FOREIGN KEY (`esdID`) REFERENCES `s_articles_esd` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_esd_attributes`
--

LOCK TABLES `s_articles_esd_attributes` WRITE;
/*!40000 ALTER TABLE `s_articles_esd_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_esd_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_esd_serials`
--

DROP TABLE IF EXISTS `s_articles_esd_serials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_esd_serials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serialnumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `esdID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `esdID` (`esdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_esd_serials`
--

LOCK TABLES `s_articles_esd_serials` WRITE;
/*!40000 ALTER TABLE `s_articles_esd_serials` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_esd_serials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_img`
--

DROP TABLE IF EXISTS `s_articles_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleID` int(11) DEFAULT NULL,
  `img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `main` int(1) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `relations` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `article_detail_id` int(10) unsigned DEFAULT NULL,
  `media_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `artikel_id` (`articleID`),
  KEY `article_detail_id` (`article_detail_id`),
  KEY `parent_id` (`parent_id`),
  KEY `media_id` (`media_id`),
  KEY `article_images_query` (`articleID`,`position`),
  KEY `article_cover_image_query` (`articleID`,`main`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_img`
--

LOCK TABLES `s_articles_img` WRITE;
/*!40000 ALTER TABLE `s_articles_img` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_img_attributes`
--

DROP TABLE IF EXISTS `s_articles_img_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_img_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imageID` int(11) DEFAULT NULL,
  `attribute1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `imageID` (`imageID`),
  CONSTRAINT `s_articles_img_attributes_ibfk_1` FOREIGN KEY (`imageID`) REFERENCES `s_articles_img` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_img_attributes`
--

LOCK TABLES `s_articles_img_attributes` WRITE;
/*!40000 ALTER TABLE `s_articles_img_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_img_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_information`
--

DROP TABLE IF EXISTS `s_articles_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleID` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hauptid` (`articleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_information`
--

LOCK TABLES `s_articles_information` WRITE;
/*!40000 ALTER TABLE `s_articles_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_information_attributes`
--

DROP TABLE IF EXISTS `s_articles_information_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_information_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `informationID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `informationID` (`informationID`),
  CONSTRAINT `s_articles_information_attributes_ibfk_1` FOREIGN KEY (`informationID`) REFERENCES `s_articles_information` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_information_attributes`
--

LOCK TABLES `s_articles_information_attributes` WRITE;
/*!40000 ALTER TABLE `s_articles_information_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_information_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_notification`
--

DROP TABLE IF EXISTS `s_articles_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_notification` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ordernumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `send` int(1) unsigned NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shopLink` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_notification`
--

LOCK TABLES `s_articles_notification` WRITE;
/*!40000 ALTER TABLE `s_articles_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_prices`
--

DROP TABLE IF EXISTS `s_articles_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_prices` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pricegroup` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `from` int(10) unsigned NOT NULL,
  `to` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `articleID` int(11) NOT NULL DEFAULT '0',
  `articledetailsID` int(11) NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `pseudoprice` double DEFAULT NULL,
  `baseprice` double DEFAULT NULL,
  `percent` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `articleID` (`articleID`),
  KEY `articledetailsID` (`articledetailsID`),
  KEY `pricegroup_2` (`pricegroup`,`from`,`articledetailsID`),
  KEY `pricegroup` (`pricegroup`,`to`,`articledetailsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_prices`
--

LOCK TABLES `s_articles_prices` WRITE;
/*!40000 ALTER TABLE `s_articles_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_prices_attributes`
--

DROP TABLE IF EXISTS `s_articles_prices_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_prices_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priceID` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `priceID` (`priceID`),
  CONSTRAINT `s_articles_prices_attributes_ibfk_1` FOREIGN KEY (`priceID`) REFERENCES `s_articles_prices` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_prices_attributes`
--

LOCK TABLES `s_articles_prices_attributes` WRITE;
/*!40000 ALTER TABLE `s_articles_prices_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_prices_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_relationships`
--

DROP TABLE IF EXISTS `s_articles_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleID` int(30) NOT NULL,
  `relatedarticle` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `articleID` (`articleID`,`relatedarticle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_relationships`
--

LOCK TABLES `s_articles_relationships` WRITE;
/*!40000 ALTER TABLE `s_articles_relationships` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_similar`
--

DROP TABLE IF EXISTS `s_articles_similar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_similar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleID` int(30) NOT NULL,
  `relatedarticle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `articleID` (`articleID`,`relatedarticle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_similar`
--

LOCK TABLES `s_articles_similar` WRITE;
/*!40000 ALTER TABLE `s_articles_similar` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_similar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_similar_shown_ro`
--

DROP TABLE IF EXISTS `s_articles_similar_shown_ro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_similar_shown_ro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) unsigned NOT NULL,
  `related_article_id` int(11) NOT NULL,
  `viewed` int(11) unsigned NOT NULL DEFAULT '0',
  `init_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `viewed_combination` (`article_id`,`related_article_id`),
  KEY `viewed` (`viewed`,`related_article_id`,`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_similar_shown_ro`
--

LOCK TABLES `s_articles_similar_shown_ro` WRITE;
/*!40000 ALTER TABLE `s_articles_similar_shown_ro` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_similar_shown_ro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_supplier`
--

DROP TABLE IF EXISTS `s_articles_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_supplier`
--

LOCK TABLES `s_articles_supplier` WRITE;
/*!40000 ALTER TABLE `s_articles_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_supplier_attributes`
--

DROP TABLE IF EXISTS `s_articles_supplier_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_supplier_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplierID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `supplierID` (`supplierID`),
  CONSTRAINT `s_articles_supplier_attributes_ibfk_1` FOREIGN KEY (`supplierID`) REFERENCES `s_articles_supplier` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_supplier_attributes`
--

LOCK TABLES `s_articles_supplier_attributes` WRITE;
/*!40000 ALTER TABLE `s_articles_supplier_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_supplier_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_top_seller_ro`
--

DROP TABLE IF EXISTS `s_articles_top_seller_ro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_top_seller_ro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) unsigned NOT NULL,
  `sales` int(11) unsigned NOT NULL DEFAULT '0',
  `last_cleared` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `article_id` (`article_id`),
  KEY `sales` (`sales`),
  KEY `listing_query` (`sales`,`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_top_seller_ro`
--

LOCK TABLES `s_articles_top_seller_ro` WRITE;
/*!40000 ALTER TABLE `s_articles_top_seller_ro` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_top_seller_ro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_translations`
--

DROP TABLE IF EXISTS `s_articles_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleID` int(11) NOT NULL,
  `languageID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `description_long` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `description_clear` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `attr1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attr2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attr3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attr4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `attr5` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `articleID` (`articleID`,`languageID`)
) ENGINE=InnoDB AUTO_INCREMENT=13928 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_translations`
--

LOCK TABLES `s_articles_translations` WRITE;
/*!40000 ALTER TABLE `s_articles_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_articles_vote`
--

DROP TABLE IF EXISTS `s_articles_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_articles_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `articleID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `points` double NOT NULL,
  `datum` datetime NOT NULL,
  `active` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answer` text COLLATE utf8_unicode_ci NOT NULL,
  `answer_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `articleID` (`articleID`),
  KEY `get_articles_votes` (`articleID`,`active`,`datum`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_articles_vote`
--

LOCK TABLES `s_articles_vote` WRITE;
/*!40000 ALTER TABLE `s_articles_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_articles_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_billing_template`
--

DROP TABLE IF EXISTS `s_billing_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_billing_template` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `typ` mediumint(11) NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `show` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_billing_template`
--

LOCK TABLES `s_billing_template` WRITE;
/*!40000 ALTER TABLE `s_billing_template` DISABLE KEYS */;
INSERT INTO `s_billing_template` VALUES (1,'top','1cm',2,'margin','Seitenabstand oben',0,1),(2,'right','0.81cm',2,'margin','Seitenrand rechts',0,1),(3,'bottom','0cm',2,'margin','Seitenabstand unten',0,1),(4,'left','2.41cm',2,'margin','Seitenabstand links',0,1),(5,'top2','5cm',2,'header','Logohöhe',6,1),(7,'margin','1cm',2,'headline','Überschrift Abstand zur Anschrift',0,1),(8,'left','0cm',2,'sender','Abstand links (negativ Wert möglich)',0,1),(9,'footer','<table style=\"height: 90px;\" border=\"0\" width=\"100%\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td style=\"width: 25%;\">\r\n<p><span style=\"font-size: xx-small;\">Demo GmbH</span></p>\r\n<p><span style=\"font-size: xx-small;\">Steuer-Nr <br />UST-ID: <br />Finanzamt </span><span style=\"font-size: xx-small;\">Musterstadt</span></p>\r\n</td>\r\n<td style=\"width: 25%;\">\r\n<p><span style=\"font-size: xx-small;\">Bankverbindung</span></p>\r\n<p><span style=\"font-size: xx-small;\">Sparkasse Musterstadt<br />BLZ: <br />Konto: </span></p>\r\n<span style=\"font-size: xx-small;\">aaaa<br /></span></td>\r\n<td style=\"width: 25%;\">\r\n<p><span style=\"font-size: xx-small;\">AGB<br /></span></p>\r\n<p><span style=\"font-size: xx-small;\">Gerichtsstand ist Musterstadt<br />Erf&uuml;llungsort Musterstadt<br />Gelieferte Ware bleibt bis zur vollst&auml;ndigen Bezahlung unser Eigentum</span></p>\r\n</td>\r\n<td style=\"width: 25%;\">\r\n<p><span style=\"font-size: xx-small;\">Gesch&auml;ftsf&uuml;hrer</span></p>\r\n<p><span style=\"font-size: xx-small;\">Max Mustermann</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>',1,'footer','Fusszeile',2,1),(13,'right','<p><strong>Demo GmbH </strong><br /> Max Mustermann<br /> Stra&szlig;e 3<br /> 00000 Musterstadt<br /> Fon: 01234 / 56789<br /> Fax: 01234 / 56780<br />info@demo.de<br />www.demo.de</p>',1,'header','Briefkopf rechts',9,1),(14,'sender','Demo GmbH - Straße 3 - 00000 Musterstadt',2,'sender','Absender',0,1),(15,'left','100px',2,'footer','Abstand links',0,1),(16,'bottom','100px',2,'footer','Abstand unten',1,1),(17,'number','10',2,'content_middle','Anzahl angezeigter Postionen',2,1),(18,'text','',1,'content_middle','Freitext',4,1),(19,'height','12cm',2,'content_middle','Inhaltsabstand zum obigen Seitenrand',0,1),(20,'top','<p><img src=\"http://www.shopwaredemo.de/eMail_logo.jpg\" alt=\"\" width=\"393\" height=\"78\" /></p>',1,'header','Logo oben',7,1),(21,'top','1cm',2,'sender','Abstand unten zum Logo (negativ Wert möglich)',0,1),(22,'margin','2.2cm',2,'header','Abstand rechts (negativ Wert möglich)',8,1);
/*!40000 ALTER TABLE `s_billing_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_blog`
--

DROP TABLE IF EXISTS `s_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_blog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `active` int(1) NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `views` int(11) unsigned DEFAULT NULL,
  `display_date` datetime NOT NULL,
  `category_id` int(11) unsigned DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `emotion_get_blog_entry` (`display_date`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_blog`
--

LOCK TABLES `s_blog` WRITE;
/*!40000 ALTER TABLE `s_blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_blog_assigned_articles`
--

DROP TABLE IF EXISTS `s_blog_assigned_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_blog_assigned_articles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) unsigned NOT NULL,
  `article_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_id` (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_blog_assigned_articles`
--

LOCK TABLES `s_blog_assigned_articles` WRITE;
/*!40000 ALTER TABLE `s_blog_assigned_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_blog_assigned_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_blog_attributes`
--

DROP TABLE IF EXISTS `s_blog_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_blog_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) unsigned DEFAULT NULL,
  `attribute1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_id` (`blog_id`),
  CONSTRAINT `s_blog_attributes_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `s_blog` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_blog_attributes`
--

LOCK TABLES `s_blog_attributes` WRITE;
/*!40000 ALTER TABLE `s_blog_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_blog_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_blog_comments`
--

DROP TABLE IF EXISTS `s_blog_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_blog_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `active` int(1) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `points` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_blog_comments`
--

LOCK TABLES `s_blog_comments` WRITE;
/*!40000 ALTER TABLE `s_blog_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_blog_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_blog_media`
--

DROP TABLE IF EXISTS `s_blog_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_blog_media` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) unsigned NOT NULL,
  `media_id` int(11) unsigned NOT NULL,
  `preview` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blogID` (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_blog_media`
--

LOCK TABLES `s_blog_media` WRITE;
/*!40000 ALTER TABLE `s_blog_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_blog_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_blog_tags`
--

DROP TABLE IF EXISTS `s_blog_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_blog_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blogID` (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_blog_tags`
--

LOCK TABLES `s_blog_tags` WRITE;
/*!40000 ALTER TABLE `s_blog_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_blog_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_campaigns_articles`
--

DROP TABLE IF EXISTS `s_campaigns_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_campaigns_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentID` int(11) NOT NULL DEFAULT '0',
  `articleordernumber` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_campaigns_articles`
--

LOCK TABLES `s_campaigns_articles` WRITE;
/*!40000 ALTER TABLE `s_campaigns_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_campaigns_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_campaigns_banner`
--

DROP TABLE IF EXISTS `s_campaigns_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_campaigns_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentID` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkTarget` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_campaigns_banner`
--

LOCK TABLES `s_campaigns_banner` WRITE;
/*!40000 ALTER TABLE `s_campaigns_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_campaigns_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_campaigns_containers`
--

DROP TABLE IF EXISTS `s_campaigns_containers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_campaigns_containers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotionID` int(11) DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_campaigns_containers`
--

LOCK TABLES `s_campaigns_containers` WRITE;
/*!40000 ALTER TABLE `s_campaigns_containers` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_campaigns_containers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_campaigns_groups`
--

DROP TABLE IF EXISTS `s_campaigns_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_campaigns_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_campaigns_groups`
--

LOCK TABLES `s_campaigns_groups` WRITE;
/*!40000 ALTER TABLE `s_campaigns_groups` DISABLE KEYS */;
INSERT INTO `s_campaigns_groups` VALUES (1,'Newsletter-Empfänger');
/*!40000 ALTER TABLE `s_campaigns_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_campaigns_html`
--

DROP TABLE IF EXISTS `s_campaigns_html`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_campaigns_html` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentID` int(11) DEFAULT NULL,
  `headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `html` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alignment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_campaigns_html`
--

LOCK TABLES `s_campaigns_html` WRITE;
/*!40000 ALTER TABLE `s_campaigns_html` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_campaigns_html` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_campaigns_links`
--

DROP TABLE IF EXISTS `s_campaigns_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_campaigns_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentID` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_campaigns_links`
--

LOCK TABLES `s_campaigns_links` WRITE;
/*!40000 ALTER TABLE `s_campaigns_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_campaigns_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_campaigns_logs`
--

DROP TABLE IF EXISTS `s_campaigns_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_campaigns_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datum` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mailingID` int(11) NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `articleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_campaigns_logs`
--

LOCK TABLES `s_campaigns_logs` WRITE;
/*!40000 ALTER TABLE `s_campaigns_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_campaigns_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_campaigns_mailaddresses`
--

DROP TABLE IF EXISTS `s_campaigns_mailaddresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_campaigns_mailaddresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer` int(1) NOT NULL,
  `groupID` int(11) NOT NULL,
  `email` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `lastmailing` int(11) NOT NULL,
  `lastread` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupID` (`groupID`),
  KEY `email` (`email`),
  KEY `lastmailing` (`lastmailing`),
  KEY `lastread` (`lastread`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_campaigns_mailaddresses`
--

LOCK TABLES `s_campaigns_mailaddresses` WRITE;
/*!40000 ALTER TABLE `s_campaigns_mailaddresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_campaigns_mailaddresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_campaigns_maildata`
--

DROP TABLE IF EXISTS `s_campaigns_maildata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_campaigns_maildata` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `groupID` int(11) unsigned NOT NULL,
  `salutation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `streetnumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `added` datetime NOT NULL,
  `deleted` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`,`groupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_campaigns_maildata`
--

LOCK TABLES `s_campaigns_maildata` WRITE;
/*!40000 ALTER TABLE `s_campaigns_maildata` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_campaigns_maildata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_campaigns_mailings`
--

DROP TABLE IF EXISTS `s_campaigns_mailings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_campaigns_mailings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datum` date DEFAULT NULL,
  `groups` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sendermail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sendername` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `plaintext` int(1) NOT NULL,
  `templateID` int(11) NOT NULL DEFAULT '0',
  `languageID` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locked` datetime DEFAULT NULL,
  `recipients` int(11) NOT NULL,
  `read` int(11) NOT NULL DEFAULT '0',
  `clicked` int(11) NOT NULL DEFAULT '0',
  `customergroup` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `publish` int(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_campaigns_mailings`
--

LOCK TABLES `s_campaigns_mailings` WRITE;
/*!40000 ALTER TABLE `s_campaigns_mailings` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_campaigns_mailings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_campaigns_positions`
--

DROP TABLE IF EXISTS `s_campaigns_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_campaigns_positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotionID` int(11) NOT NULL DEFAULT '0',
  `containerID` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_campaigns_positions`
--

LOCK TABLES `s_campaigns_positions` WRITE;
/*!40000 ALTER TABLE `s_campaigns_positions` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_campaigns_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_campaigns_sender`
--

DROP TABLE IF EXISTS `s_campaigns_sender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_campaigns_sender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_campaigns_sender`
--

LOCK TABLES `s_campaigns_sender` WRITE;
/*!40000 ALTER TABLE `s_campaigns_sender` DISABLE KEYS */;
INSERT INTO `s_campaigns_sender` VALUES (1,'info@example.com','Newsletter Absender');
/*!40000 ALTER TABLE `s_campaigns_sender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_campaigns_templates`
--

DROP TABLE IF EXISTS `s_campaigns_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_campaigns_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_campaigns_templates`
--

LOCK TABLES `s_campaigns_templates` WRITE;
/*!40000 ALTER TABLE `s_campaigns_templates` DISABLE KEYS */;
INSERT INTO `s_campaigns_templates` VALUES (1,'index.tpl','Standardtemplate'),(2,'indexh.tpl','Händler');
/*!40000 ALTER TABLE `s_campaigns_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_categories`
--

DROP TABLE IF EXISTS `s_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) unsigned DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) unsigned DEFAULT '0',
  `left` int(11) unsigned NOT NULL,
  `right` int(11) unsigned NOT NULL,
  `level` int(11) unsigned NOT NULL,
  `added` datetime NOT NULL,
  `changed` datetime NOT NULL,
  `metakeywords` mediumtext COLLATE utf8_unicode_ci,
  `metadescription` mediumtext COLLATE utf8_unicode_ci,
  `cmsheadline` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cmstext` mediumtext COLLATE utf8_unicode_ci,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noviewselect` int(1) unsigned DEFAULT NULL,
  `active` int(1) NOT NULL,
  `blog` int(11) NOT NULL,
  `showfiltergroups` int(11) NOT NULL,
  `external` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hidefilter` int(1) NOT NULL,
  `hidetop` int(1) NOT NULL,
  `mediaID` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  KEY `description` (`description`),
  KEY `position` (`position`),
  KEY `left` (`left`,`right`),
  KEY `level` (`level`),
  KEY `active_query_builder` (`parent`,`position`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_categories`
--

LOCK TABLES `s_categories` WRITE;
/*!40000 ALTER TABLE `s_categories` DISABLE KEYS */;
INSERT INTO `s_categories` VALUES (1,NULL,NULL,'Root',0,1,6,0,'2012-08-27 22:28:52','2012-08-27 22:28:52',NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,NULL,0,0,0),(3,1,NULL,'Deutsch',0,2,3,1,'2012-08-27 22:28:52','2012-08-27 22:28:52',NULL,'','','',NULL,0,1,0,0,'',0,0,NULL),(4,1,NULL,'Englisch',1,4,5,1,'2012-08-27 22:28:52','2012-08-27 22:28:52',NULL,'','','',NULL,0,1,0,0,'',0,0,NULL);
/*!40000 ALTER TABLE `s_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_categories_attributes`
--

DROP TABLE IF EXISTS `s_categories_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_categories_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryID` int(11) unsigned DEFAULT NULL,
  `attribute1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categoryID` (`categoryID`),
  CONSTRAINT `s_categories_attributes_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `s_categories` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_categories_attributes`
--

LOCK TABLES `s_categories_attributes` WRITE;
/*!40000 ALTER TABLE `s_categories_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_categories_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_categories_avoid_customergroups`
--

DROP TABLE IF EXISTS `s_categories_avoid_customergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_categories_avoid_customergroups` (
  `categoryID` int(11) NOT NULL,
  `customergroupID` int(11) NOT NULL,
  UNIQUE KEY `articleID` (`categoryID`,`customergroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_categories_avoid_customergroups`
--

LOCK TABLES `s_categories_avoid_customergroups` WRITE;
/*!40000 ALTER TABLE `s_categories_avoid_customergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_categories_avoid_customergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_cms_groups`
--

DROP TABLE IF EXISTS `s_cms_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_cms_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_cms_groups`
--

LOCK TABLES `s_cms_groups` WRITE;
/*!40000 ALTER TABLE `s_cms_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_cms_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_cms_static`
--

DROP TABLE IF EXISTS `s_cms_static`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_cms_static` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tpl1variable` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tpl1path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tpl2variable` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tpl2path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tpl3variable` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tpl3path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `html` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `grouping` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parentID` int(11) NOT NULL DEFAULT '0',
  `page_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `get_menu` (`position`,`description`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_cms_static`
--

LOCK TABLES `s_cms_static` WRITE;
/*!40000 ALTER TABLE `s_cms_static` DISABLE KEYS */;
INSERT INTO `s_cms_static` VALUES (1,'','','','','','','Kontakt','<p>F&uuml;gen Sie hier Ihre Kontaktdaten ein</p>','gLeft|gBottom',1,'shopware.php?sViewport=ticket&sFid=5','_self',0,'','',''),(2,'','','','','','','Hilfe / Support','<h2>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas.</h2>\n<p>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas. Ivi praebalteata Occumbo congruens seco, lea qui se surculus sed abhinc praejudico in forix curo. Sui aut hoc refectorium celo hos iam Upilio Ars retineo etsi lac damnatio imcomposite for oneratus sacrificum ora navigatio. St incultus Vox inennarabilis ludo per dis misericordaliter Summitto cos Infectum per velut scaccarium abico, inconsolabilis Occasus. Ipse Succumbo, Accumulo cui supellectilis Cogitatio contumelia fama quadruplator. Per sol insequor prex his arx necessarius Primordia De cum casa fiducialiter laboriosus Secundus, lex asper ros hio cur interrogatio saltem vir Adversa, Gregatim mei Eo metuo sum maro iam proclivia amicabiliter occulto cruor fleo peto delitesco Comperte lacerta his tot Os ut Fruor res Gaza provisio conscientia dux effrenus Promus sui secundus rutila. Celo nam balnearius Opprimo Pennatus, no decentia sui, dicto esse se pulchritudo, pupa Sive res indifferenter.</p>\n<p>Captivo pala pro de tandem Singulus labor, determino cui Ingurgito quo Ico pax ethologus praetorgredior internuntius. Ops foveo Huius dux respublica his animadverto dolus imperterritus. Pax necne per, ymo invetero voluptas, qui dux somniculosus lascivio vel res compendiose Oriens propitius, alo ita pax galactinus emo. Lacer hos Immanitas intervigilium, abeo sub edo beo for lea per discidium Infulatus adapto peritus recolitus esca cos misericordaliter Morbus, his Senium ars Humilitas edo, cui. Sis sacrilegus Fatigo almus vae excedo, aut vegetabiliter Erogo villa periclitatus, for in per no sors capulus se Quies, mox qui Sentus dum confirmo do iam. Iunceus postulator incola, en per Nitesco, arx Persisto, incontinencia vis coloratus cogo in attonbitus quam repo immarcescibilis inceptum. Ego Vena series sudo ac Nitidus. Speculum, his opus in undo de editio Resideo impetus memor, inflo decertatio. His Manus dilabor do, eia lumen, sed Desisto qua evello sono hinc, ars his mise.</p>\n<p>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas. Ivi praebalteata Occumbo congruens seco, lea qui se surculus sed abhinc praejudico in forix curo. Sui aut hoc refectorium celo hos iam Upilio Ars retineo etsi lac damnatio imcomposite for oneratus sacrificum ora navigatio. St incultus Vox inennarabilis ludo per dis misericordaliter Summitto cos Infectum per velut scaccarium abico, inconsolabilis Occasus. Ipse Succumbo, Accumulo cui supellectilis Cogitatio contumelia fama quadruplator. Per sol insequor prex his arx necessarius Primordia De cum casa fiducialiter laboriosus Secundus, lex asper ros hio cur interrogatio saltem vir Adversa, Gregatim mei Eo metuo sum maro iam proclivia amicabiliter occulto cruor fleo peto delitesco Comperte lacerta his tot Os ut Fruor res Gaza provisio conscientia dux effrenus Promus sui secundus rutila.</p>\n<p>Celo nam balnearius Opprimo Pennatus, no decentia sui, dicto esse se pulchritudo, pupa Sive res indifferenter. Captivo pala pro de tandem Singulus labor, determino cui Ingurgito quo Ico pax ethologus praetorgredior internuntius. Ops foveo Huius dux respublica his animadverto dolus imperterritus. Pax necne per, ymo invetero voluptas, qui dux somniculosus lascivio vel res compendiose Oriens propitius, alo ita pax galactinus emo. Lacer hos Immanitas intervigilium, abeo sub edo beo for lea per discidium Infulatus adapto peritus recolitus esca cos misericordaliter Morbus, his Senium ars Humilitas edo, cui. Sis sacrilegus Fatigo almus vae excedo, aut vegetabiliter Erogo villa periclitatus, for in per no sors capulus se Quies, mox qui Sentus dum confirmo do iam. Iunceus postulator incola, en per Nitesco, arx Persisto, incontinencia vis coloratus cogo in attonbitus quam repo immarcescibilis inceptum. Ego Vena series sudo ac Nitidus. Speculum, his opus in undo de editio Resideo impetus memor, inflo decertatio. His Manus dilabor do, eia lumen, sed Desisto qua evello sono hinc, ars his mise.</p>','gLeft',1,'','',0,'','',''),(3,'','','','','','','Impressum','<h2>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas.</h2>\n<p>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas. Ivi praebalteata Occumbo congruens seco, lea qui se surculus sed abhinc praejudico in forix curo. Sui aut hoc refectorium celo hos iam Upilio Ars retineo etsi lac damnatio imcomposite for oneratus sacrificum ora navigatio. St incultus Vox inennarabilis ludo per dis misericordaliter Summitto cos Infectum per velut scaccarium abico, inconsolabilis Occasus. Ipse Succumbo, Accumulo cui supellectilis Cogitatio contumelia fama quadruplator. Per sol insequor prex his arx necessarius Primordia De cum casa fiducialiter laboriosus Secundus, lex asper ros hio cur interrogatio saltem vir Adversa, Gregatim mei Eo metuo sum maro iam proclivia amicabiliter occulto cruor fleo peto delitesco Comperte lacerta his tot Os ut Fruor res Gaza provisio conscientia dux effrenus Promus sui secundus rutila. Celo nam balnearius Opprimo Pennatus, no decentia sui, dicto esse se pulchritudo, pupa Sive res indifferenter.</p>\n<p>Captivo pala pro de tandem Singulus labor, determino cui Ingurgito quo Ico pax ethologus praetorgredior internuntius. Ops foveo Huius dux respublica his animadverto dolus imperterritus. Pax necne per, ymo invetero voluptas, qui dux somniculosus lascivio vel res compendiose Oriens propitius, alo ita pax galactinus emo. Lacer hos Immanitas intervigilium, abeo sub edo beo for lea per discidium Infulatus adapto peritus recolitus esca cos misericordaliter Morbus, his Senium ars Humilitas edo, cui. Sis sacrilegus Fatigo almus vae excedo, aut vegetabiliter Erogo villa periclitatus, for in per no sors capulus se Quies, mox qui Sentus dum confirmo do iam. Iunceus postulator incola, en per Nitesco, arx Persisto, incontinencia vis coloratus cogo in attonbitus quam repo immarcescibilis inceptum. Ego Vena series sudo ac Nitidus. Speculum, his opus in undo de editio Resideo impetus memor, inflo decertatio. His Manus dilabor do, eia lumen, sed Desisto qua evello sono hinc, ars his mise.</p>\n<p>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas. Ivi praebalteata Occumbo congruens seco, lea qui se surculus sed abhinc praejudico in forix curo. Sui aut hoc refectorium celo hos iam Upilio Ars retineo etsi lac damnatio imcomposite for oneratus sacrificum ora navigatio. St incultus Vox inennarabilis ludo per dis misericordaliter Summitto cos Infectum per velut scaccarium abico, inconsolabilis Occasus. Ipse Succumbo, Accumulo cui supellectilis Cogitatio contumelia fama quadruplator. Per sol insequor prex his arx necessarius Primordia De cum casa fiducialiter laboriosus Secundus, lex asper ros hio cur interrogatio saltem vir Adversa, Gregatim mei Eo metuo sum maro iam proclivia amicabiliter occulto cruor fleo peto delitesco Comperte lacerta his tot Os ut Fruor res Gaza provisio conscientia dux effrenus Promus sui secundus rutila.</p>\n<p>Celo nam balnearius Opprimo Pennatus, no decentia sui, dicto esse se pulchritudo, pupa Sive res indifferenter. Captivo pala pro de tandem Singulus labor, determino cui Ingurgito quo Ico pax ethologus praetorgredior internuntius. Ops foveo Huius dux respublica his animadverto dolus imperterritus. Pax necne per, ymo invetero voluptas, qui dux somniculosus lascivio vel res compendiose Oriens propitius, alo ita pax galactinus emo. Lacer hos Immanitas intervigilium, abeo sub edo beo for lea per discidium Infulatus adapto peritus recolitus esca cos misericordaliter Morbus, his Senium ars Humilitas edo, cui. Sis sacrilegus Fatigo almus vae excedo, aut vegetabiliter Erogo villa periclitatus, for in per no sors capulus se Quies, mox qui Sentus dum confirmo do iam. Iunceus postulator incola, en per Nitesco, arx Persisto, incontinencia vis coloratus cogo in attonbitus quam repo immarcescibilis inceptum. Ego Vena series sudo ac Nitidus. Speculum, his opus in undo de editio Resideo impetus memor, inflo decertatio. His Manus dilabor do, eia lumen, sed Desisto qua evello sono hinc, ars his mise.</p>','gLeft|gBottom2',20,'','',0,'','',''),(4,'','','','','','','AGB','<h2>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas.</h2>\n<p>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas. Ivi praebalteata Occumbo congruens seco, lea qui se surculus sed abhinc praejudico in forix curo. Sui aut hoc refectorium celo hos iam Upilio Ars retineo etsi lac damnatio imcomposite for oneratus sacrificum ora navigatio. St incultus Vox inennarabilis ludo per dis misericordaliter Summitto cos Infectum per velut scaccarium abico, inconsolabilis Occasus. Ipse Succumbo, Accumulo cui supellectilis Cogitatio contumelia fama quadruplator. Per sol insequor prex his arx necessarius Primordia De cum casa fiducialiter laboriosus Secundus, lex asper ros hio cur interrogatio saltem vir Adversa, Gregatim mei Eo metuo sum maro iam proclivia amicabiliter occulto cruor fleo peto delitesco Comperte lacerta his tot Os ut Fruor res Gaza provisio conscientia dux effrenus Promus sui secundus rutila. Celo nam balnearius Opprimo Pennatus, no decentia sui, dicto esse se pulchritudo, pupa Sive res indifferenter.</p>\n<p>Captivo pala pro de tandem Singulus labor, determino cui Ingurgito quo Ico pax ethologus praetorgredior internuntius. Ops foveo Huius dux respublica his animadverto dolus imperterritus. Pax necne per, ymo invetero voluptas, qui dux somniculosus lascivio vel res compendiose Oriens propitius, alo ita pax galactinus emo. Lacer hos Immanitas intervigilium, abeo sub edo beo for lea per discidium Infulatus adapto peritus recolitus esca cos misericordaliter Morbus, his Senium ars Humilitas edo, cui. Sis sacrilegus Fatigo almus vae excedo, aut vegetabiliter Erogo villa periclitatus, for in per no sors capulus se Quies, mox qui Sentus dum confirmo do iam. Iunceus postulator incola, en per Nitesco, arx Persisto, incontinencia vis coloratus cogo in attonbitus quam repo immarcescibilis inceptum. Ego Vena series sudo ac Nitidus. Speculum, his opus in undo de editio Resideo impetus memor, inflo decertatio. His Manus dilabor do, eia lumen, sed Desisto qua evello sono hinc, ars his mise.</p>\n<p>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas. Ivi praebalteata Occumbo congruens seco, lea qui se surculus sed abhinc praejudico in forix curo. Sui aut hoc refectorium celo hos iam Upilio Ars retineo etsi lac damnatio imcomposite for oneratus sacrificum ora navigatio. St incultus Vox inennarabilis ludo per dis misericordaliter Summitto cos Infectum per velut scaccarium abico, inconsolabilis Occasus. Ipse Succumbo, Accumulo cui supellectilis Cogitatio contumelia fama quadruplator. Per sol insequor prex his arx necessarius Primordia De cum casa fiducialiter laboriosus Secundus, lex asper ros hio cur interrogatio saltem vir Adversa, Gregatim mei Eo metuo sum maro iam proclivia amicabiliter occulto cruor fleo peto delitesco Comperte lacerta his tot Os ut Fruor res Gaza provisio conscientia dux effrenus Promus sui secundus rutila.</p>\n<p>Celo nam balnearius Opprimo Pennatus, no decentia sui, dicto esse se pulchritudo, pupa Sive res indifferenter. Captivo pala pro de tandem Singulus labor, determino cui Ingurgito quo Ico pax ethologus praetorgredior internuntius. Ops foveo Huius dux respublica his animadverto dolus imperterritus. Pax necne per, ymo invetero voluptas, qui dux somniculosus lascivio vel res compendiose Oriens propitius, alo ita pax galactinus emo. Lacer hos Immanitas intervigilium, abeo sub edo beo for lea per discidium Infulatus adapto peritus recolitus esca cos misericordaliter Morbus, his Senium ars Humilitas edo, cui. Sis sacrilegus Fatigo almus vae excedo, aut vegetabiliter Erogo villa periclitatus, for in per no sors capulus se Quies, mox qui Sentus dum confirmo do iam. Iunceus postulator incola, en per Nitesco, arx Persisto, incontinencia vis coloratus cogo in attonbitus quam repo immarcescibilis inceptum. Ego Vena series sudo ac Nitidus. Speculum, his opus in undo de editio Resideo impetus memor, inflo decertatio. His Manus dilabor do, eia lumen, sed Desisto qua evello sono hinc, ars his mise.</p>','gLeft|gBottom',18,'','',0,'','',''),(6,'','','','','','','Versand und Zahlungsbedingungen','<h2>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas.</h2>\n<p>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas. Ivi praebalteata Occumbo congruens seco, lea qui se surculus sed abhinc praejudico in forix curo. Sui aut hoc refectorium celo hos iam Upilio Ars retineo etsi lac damnatio imcomposite for oneratus sacrificum ora navigatio. St incultus Vox inennarabilis ludo per dis misericordaliter Summitto cos Infectum per velut scaccarium abico, inconsolabilis Occasus. Ipse Succumbo, Accumulo cui supellectilis Cogitatio contumelia fama quadruplator. Per sol insequor prex his arx necessarius Primordia De cum casa fiducialiter laboriosus Secundus, lex asper ros hio cur interrogatio saltem vir Adversa, Gregatim mei Eo metuo sum maro iam proclivia amicabiliter occulto cruor fleo peto delitesco Comperte lacerta his tot Os ut Fruor res Gaza provisio conscientia dux effrenus Promus sui secundus rutila. Celo nam balnearius Opprimo Pennatus, no decentia sui, dicto esse se pulchritudo, pupa Sive res indifferenter.</p>\n<p>Captivo pala pro de tandem Singulus labor, determino cui Ingurgito quo Ico pax ethologus praetorgredior internuntius. Ops foveo Huius dux respublica his animadverto dolus imperterritus. Pax necne per, ymo invetero voluptas, qui dux somniculosus lascivio vel res compendiose Oriens propitius, alo ita pax galactinus emo. Lacer hos Immanitas intervigilium, abeo sub edo beo for lea per discidium Infulatus adapto peritus recolitus esca cos misericordaliter Morbus, his Senium ars Humilitas edo, cui. Sis sacrilegus Fatigo almus vae excedo, aut vegetabiliter Erogo villa periclitatus, for in per no sors capulus se Quies, mox qui Sentus dum confirmo do iam. Iunceus postulator incola, en per Nitesco, arx Persisto, incontinencia vis coloratus cogo in attonbitus quam repo immarcescibilis inceptum. Ego Vena series sudo ac Nitidus. Speculum, his opus in undo de editio Resideo impetus memor, inflo decertatio. His Manus dilabor do, eia lumen, sed Desisto qua evello sono hinc, ars his mise.</p>\n<p>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas. Ivi praebalteata Occumbo congruens seco, lea qui se surculus sed abhinc praejudico in forix curo. Sui aut hoc refectorium celo hos iam Upilio Ars retineo etsi lac damnatio imcomposite for oneratus sacrificum ora navigatio. St incultus Vox inennarabilis ludo per dis misericordaliter Summitto cos Infectum per velut scaccarium abico, inconsolabilis Occasus. Ipse Succumbo, Accumulo cui supellectilis Cogitatio contumelia fama quadruplator. Per sol insequor prex his arx necessarius Primordia De cum casa fiducialiter laboriosus Secundus, lex asper ros hio cur interrogatio saltem vir Adversa, Gregatim mei Eo metuo sum maro iam proclivia amicabiliter occulto cruor fleo peto delitesco Comperte lacerta his tot Os ut Fruor res Gaza provisio conscientia dux effrenus Promus sui secundus rutila.</p>\n<p>Celo nam balnearius Opprimo Pennatus, no decentia sui, dicto esse se pulchritudo, pupa Sive res indifferenter. Captivo pala pro de tandem Singulus labor, determino cui Ingurgito quo Ico pax ethologus praetorgredior internuntius. Ops foveo Huius dux respublica his animadverto dolus imperterritus. Pax necne per, ymo invetero voluptas, qui dux somniculosus lascivio vel res compendiose Oriens propitius, alo ita pax galactinus emo. Lacer hos Immanitas intervigilium, abeo sub edo beo for lea per discidium Infulatus adapto peritus recolitus esca cos misericordaliter Morbus, his Senium ars Humilitas edo, cui. Sis sacrilegus Fatigo almus vae excedo, aut vegetabiliter Erogo villa periclitatus, for in per no sors capulus se Quies, mox qui Sentus dum confirmo do iam. Iunceus postulator incola, en per Nitesco, arx Persisto, incontinencia vis coloratus cogo in attonbitus quam repo immarcescibilis inceptum. Ego Vena series sudo ac Nitidus. Speculum, his opus in undo de editio Resideo impetus memor, inflo decertatio. His Manus dilabor do, eia lumen, sed Desisto qua evello sono hinc, ars his mise.</p>','gLeft|gBottom',3,'','',0,'','',''),(7,'','','','','','','Datenschutz','<h2>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas.</h2>\n<p>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas. Ivi praebalteata Occumbo congruens seco, lea qui se surculus sed abhinc praejudico in forix curo. Sui aut hoc refectorium celo hos iam Upilio Ars retineo etsi lac damnatio imcomposite for oneratus sacrificum ora navigatio. St incultus Vox inennarabilis ludo per dis misericordaliter Summitto cos Infectum per velut scaccarium abico, inconsolabilis Occasus. Ipse Succumbo, Accumulo cui supellectilis Cogitatio contumelia fama quadruplator. Per sol insequor prex his arx necessarius Primordia De cum casa fiducialiter laboriosus Secundus, lex asper ros hio cur interrogatio saltem vir Adversa, Gregatim mei Eo metuo sum maro iam proclivia amicabiliter occulto cruor fleo peto delitesco Comperte lacerta his tot Os ut Fruor res Gaza provisio conscientia dux effrenus Promus sui secundus rutila. Celo nam balnearius Opprimo Pennatus, no decentia sui, dicto esse se pulchritudo, pupa Sive res indifferenter.</p>\n<p>Captivo pala pro de tandem Singulus labor, determino cui Ingurgito quo Ico pax ethologus praetorgredior internuntius. Ops foveo Huius dux respublica his animadverto dolus imperterritus. Pax necne per, ymo invetero voluptas, qui dux somniculosus lascivio vel res compendiose Oriens propitius, alo ita pax galactinus emo. Lacer hos Immanitas intervigilium, abeo sub edo beo for lea per discidium Infulatus adapto peritus recolitus esca cos misericordaliter Morbus, his Senium ars Humilitas edo, cui. Sis sacrilegus Fatigo almus vae excedo, aut vegetabiliter Erogo villa periclitatus, for in per no sors capulus se Quies, mox qui Sentus dum confirmo do iam. Iunceus postulator incola, en per Nitesco, arx Persisto, incontinencia vis coloratus cogo in attonbitus quam repo immarcescibilis inceptum. Ego Vena series sudo ac Nitidus. Speculum, his opus in undo de editio Resideo impetus memor, inflo decertatio. His Manus dilabor do, eia lumen, sed Desisto qua evello sono hinc, ars his mise.</p>\n<p>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas. Ivi praebalteata Occumbo congruens seco, lea qui se surculus sed abhinc praejudico in forix curo. Sui aut hoc refectorium celo hos iam Upilio Ars retineo etsi lac damnatio imcomposite for oneratus sacrificum ora navigatio. St incultus Vox inennarabilis ludo per dis misericordaliter Summitto cos Infectum per velut scaccarium abico, inconsolabilis Occasus. Ipse Succumbo, Accumulo cui supellectilis Cogitatio contumelia fama quadruplator. Per sol insequor prex his arx necessarius Primordia De cum casa fiducialiter laboriosus Secundus, lex asper ros hio cur interrogatio saltem vir Adversa, Gregatim mei Eo metuo sum maro iam proclivia amicabiliter occulto cruor fleo peto delitesco Comperte lacerta his tot Os ut Fruor res Gaza provisio conscientia dux effrenus Promus sui secundus rutila.</p>\n<p>Celo nam balnearius Opprimo Pennatus, no decentia sui, dicto esse se pulchritudo, pupa Sive res indifferenter. Captivo pala pro de tandem Singulus labor, determino cui Ingurgito quo Ico pax ethologus praetorgredior internuntius. Ops foveo Huius dux respublica his animadverto dolus imperterritus. Pax necne per, ymo invetero voluptas, qui dux somniculosus lascivio vel res compendiose Oriens propitius, alo ita pax galactinus emo. Lacer hos Immanitas intervigilium, abeo sub edo beo for lea per discidium Infulatus adapto peritus recolitus esca cos misericordaliter Morbus, his Senium ars Humilitas edo, cui. Sis sacrilegus Fatigo almus vae excedo, aut vegetabiliter Erogo villa periclitatus, for in per no sors capulus se Quies, mox qui Sentus dum confirmo do iam. Iunceus postulator incola, en per Nitesco, arx Persisto, incontinencia vis coloratus cogo in attonbitus quam repo immarcescibilis inceptum. Ego Vena series sudo ac Nitidus. Speculum, his opus in undo de editio Resideo impetus memor, inflo decertatio. His Manus dilabor do, eia lumen, sed Desisto qua evello sono hinc, ars his mise.</p>','gLeft|gBottom2',6,'','',0,'','',''),(8,'','','','','','','Widerrufsrecht','<h2>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas.</h2>\n<p>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas. Ivi praebalteata Occumbo congruens seco, lea qui se surculus sed abhinc praejudico in forix curo. Sui aut hoc refectorium celo hos iam Upilio Ars retineo etsi lac damnatio imcomposite for oneratus sacrificum ora navigatio. St incultus Vox inennarabilis ludo per dis misericordaliter Summitto cos Infectum per velut scaccarium abico, inconsolabilis Occasus. Ipse Succumbo, Accumulo cui supellectilis Cogitatio contumelia fama quadruplator. Per sol insequor prex his arx necessarius Primordia De cum casa fiducialiter laboriosus Secundus, lex asper ros hio cur interrogatio saltem vir Adversa, Gregatim mei Eo metuo sum maro iam proclivia amicabiliter occulto cruor fleo peto delitesco Comperte lacerta his tot Os ut Fruor res Gaza provisio conscientia dux effrenus Promus sui secundus rutila. Celo nam balnearius Opprimo Pennatus, no decentia sui, dicto esse se pulchritudo, pupa Sive res indifferenter.</p>\n<p>Captivo pala pro de tandem Singulus labor, determino cui Ingurgito quo Ico pax ethologus praetorgredior internuntius. Ops foveo Huius dux respublica his animadverto dolus imperterritus. Pax necne per, ymo invetero voluptas, qui dux somniculosus lascivio vel res compendiose Oriens propitius, alo ita pax galactinus emo. Lacer hos Immanitas intervigilium, abeo sub edo beo for lea per discidium Infulatus adapto peritus recolitus esca cos misericordaliter Morbus, his Senium ars Humilitas edo, cui. Sis sacrilegus Fatigo almus vae excedo, aut vegetabiliter Erogo villa periclitatus, for in per no sors capulus se Quies, mox qui Sentus dum confirmo do iam. Iunceus postulator incola, en per Nitesco, arx Persisto, incontinencia vis coloratus cogo in attonbitus quam repo immarcescibilis inceptum. Ego Vena series sudo ac Nitidus. Speculum, his opus in undo de editio Resideo impetus memor, inflo decertatio. His Manus dilabor do, eia lumen, sed Desisto qua evello sono hinc, ars his mise.</p>\n<p>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas. Ivi praebalteata Occumbo congruens seco, lea qui se surculus sed abhinc praejudico in forix curo. Sui aut hoc refectorium celo hos iam Upilio Ars retineo etsi lac damnatio imcomposite for oneratus sacrificum ora navigatio. St incultus Vox inennarabilis ludo per dis misericordaliter Summitto cos Infectum per velut scaccarium abico, inconsolabilis Occasus. Ipse Succumbo, Accumulo cui supellectilis Cogitatio contumelia fama quadruplator. Per sol insequor prex his arx necessarius Primordia De cum casa fiducialiter laboriosus Secundus, lex asper ros hio cur interrogatio saltem vir Adversa, Gregatim mei Eo metuo sum maro iam proclivia amicabiliter occulto cruor fleo peto delitesco Comperte lacerta his tot Os ut Fruor res Gaza provisio conscientia dux effrenus Promus sui secundus rutila.</p>\n<p>Celo nam balnearius Opprimo Pennatus, no decentia sui, dicto esse se pulchritudo, pupa Sive res indifferenter. Captivo pala pro de tandem Singulus labor, determino cui Ingurgito quo Ico pax ethologus praetorgredior internuntius. Ops foveo Huius dux respublica his animadverto dolus imperterritus. Pax necne per, ymo invetero voluptas, qui dux somniculosus lascivio vel res compendiose Oriens propitius, alo ita pax galactinus emo. Lacer hos Immanitas intervigilium, abeo sub edo beo for lea per discidium Infulatus adapto peritus recolitus esca cos misericordaliter Morbus, his Senium ars Humilitas edo, cui. Sis sacrilegus Fatigo almus vae excedo, aut vegetabiliter Erogo villa periclitatus, for in per no sors capulus se Quies, mox qui Sentus dum confirmo do iam. Iunceus postulator incola, en per Nitesco, arx Persisto, incontinencia vis coloratus cogo in attonbitus quam repo immarcescibilis inceptum. Ego Vena series sudo ac Nitidus. Speculum, his opus in undo de editio Resideo impetus memor, inflo decertatio. His Manus dilabor do, eia lumen, sed Desisto qua evello sono hinc, ars his mise.</p>','gLeft|gBottom',5,'','',0,'','',''),(9,'','','','','','','Über uns','<h2>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas.</h2>\n<p>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas. Ivi praebalteata Occumbo congruens seco, lea qui se surculus sed abhinc praejudico in forix curo. Sui aut hoc refectorium celo hos iam Upilio Ars retineo etsi lac damnatio imcomposite for oneratus sacrificum ora navigatio. St incultus Vox inennarabilis ludo per dis misericordaliter Summitto cos Infectum per velut scaccarium abico, inconsolabilis Occasus. Ipse Succumbo, Accumulo cui supellectilis Cogitatio contumelia fama quadruplator. Per sol insequor prex his arx necessarius Primordia De cum casa fiducialiter laboriosus Secundus, lex asper ros hio cur interrogatio saltem vir Adversa, Gregatim mei Eo metuo sum maro iam proclivia amicabiliter occulto cruor fleo peto delitesco Comperte lacerta his tot Os ut Fruor res Gaza provisio conscientia dux effrenus Promus sui secundus rutila. Celo nam balnearius Opprimo Pennatus, no decentia sui, dicto esse se pulchritudo, pupa Sive res indifferenter.</p>\n<p>Captivo pala pro de tandem Singulus labor, determino cui Ingurgito quo Ico pax ethologus praetorgredior internuntius. Ops foveo Huius dux respublica his animadverto dolus imperterritus. Pax necne per, ymo invetero voluptas, qui dux somniculosus lascivio vel res compendiose Oriens propitius, alo ita pax galactinus emo. Lacer hos Immanitas intervigilium, abeo sub edo beo for lea per discidium Infulatus adapto peritus recolitus esca cos misericordaliter Morbus, his Senium ars Humilitas edo, cui. Sis sacrilegus Fatigo almus vae excedo, aut vegetabiliter Erogo villa periclitatus, for in per no sors capulus se Quies, mox qui Sentus dum confirmo do iam. Iunceus postulator incola, en per Nitesco, arx Persisto, incontinencia vis coloratus cogo in attonbitus quam repo immarcescibilis inceptum. Ego Vena series sudo ac Nitidus. Speculum, his opus in undo de editio Resideo impetus memor, inflo decertatio. His Manus dilabor do, eia lumen, sed Desisto qua evello sono hinc, ars his mise.</p>\n<p>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas. Ivi praebalteata Occumbo congruens seco, lea qui se surculus sed abhinc praejudico in forix curo. Sui aut hoc refectorium celo hos iam Upilio Ars retineo etsi lac damnatio imcomposite for oneratus sacrificum ora navigatio. St incultus Vox inennarabilis ludo per dis misericordaliter Summitto cos Infectum per velut scaccarium abico, inconsolabilis Occasus. Ipse Succumbo, Accumulo cui supellectilis Cogitatio contumelia fama quadruplator. Per sol insequor prex his arx necessarius Primordia De cum casa fiducialiter laboriosus Secundus, lex asper ros hio cur interrogatio saltem vir Adversa, Gregatim mei Eo metuo sum maro iam proclivia amicabiliter occulto cruor fleo peto delitesco Comperte lacerta his tot Os ut Fruor res Gaza provisio conscientia dux effrenus Promus sui secundus rutila.</p>\n<p>Celo nam balnearius Opprimo Pennatus, no decentia sui, dicto esse se pulchritudo, pupa Sive res indifferenter. Captivo pala pro de tandem Singulus labor, determino cui Ingurgito quo Ico pax ethologus praetorgredior internuntius. Ops foveo Huius dux respublica his animadverto dolus imperterritus. Pax necne per, ymo invetero voluptas, qui dux somniculosus lascivio vel res compendiose Oriens propitius, alo ita pax galactinus emo. Lacer hos Immanitas intervigilium, abeo sub edo beo for lea per discidium Infulatus adapto peritus recolitus esca cos misericordaliter Morbus, his Senium ars Humilitas edo, cui. Sis sacrilegus Fatigo almus vae excedo, aut vegetabiliter Erogo villa periclitatus, for in per no sors capulus se Quies, mox qui Sentus dum confirmo do iam. Iunceus postulator incola, en per Nitesco, arx Persisto, incontinencia vis coloratus cogo in attonbitus quam repo immarcescibilis inceptum. Ego Vena series sudo ac Nitidus. Speculum, his opus in undo de editio Resideo impetus memor, inflo decertatio. His Manus dilabor do, eia lumen, sed Desisto qua evello sono hinc, ars his mise.</p>','gLeft|gBottom2',0,'','',0,'','',''),(21,'','','','','','','Händler-Login','','gLeft',0,'shopware.php?sViewport=registerFC&sUseSSL=1&sValidation=H','',0,'','',''),(26,'','','','','','','Newsletter','','gBottom2',0,'shopware.php?sViewport=newsletter','',0,'','',''),(27,'','','','','','','About us','<p>Text</p>','eLeft|eBottom',0,'','',0,'','',''),(28,'','','','','','','Payment / Dispatch','<p>Text</p>','eLeft|eBottom',0,'','',0,'','',''),(29,'','','','','','','Privacy','<p>Text</p>','eLeft|eBottom',0,'','',0,'','',''),(30,'','','','','','','Help / Support','<p>Text</p>','eLeft|eBottom',0,'','',0,'','',''),(32,'','','','','','','Newsletter','','eLeft|eBottom',0,'shopware.php?sViewport=newsletter','',0,'','',''),(33,'','','','','','','Merchant login','','eLeft|eBottom',0,'shopware.php?sViewport,registerFC&sUseSSL=1&sValidation=H','',0,'','',''),(34,'','','','','','','Contact','','eLeft|eBottom',0,'shopware.php?sViewport=ticket&sFid=18','',0,'','',''),(35,'','','','','','','Site Map','','eBottom',0,'shopware.php?sViewport=sitemap','',0,'','',''),(37,'','','','','','','Partnerprogramm','<h1>Jetzt Partner werden</h1>\n<h2>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas.</h2>\n<p>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas. Ivi praebalteata Occumbo congruens seco, lea qui se surculus sed abhinc praejudico in forix curo. Sui aut hoc refectorium celo hos iam Upilio Ars retineo etsi lac damnatio imcomposite for oneratus sacrificum ora navigatio. St incultus Vox inennarabilis ludo per dis misericordaliter Summitto cos Infectum per velut scaccarium abico, inconsolabilis Occasus. Ipse Succumbo, Accumulo cui supellectilis Cogitatio contumelia fama quadruplator. Per sol insequor prex his arx necessarius Primordia De cum casa fiducialiter laboriosus Secundus, lex asper ros hio cur interrogatio saltem vir Adversa, Gregatim mei Eo metuo sum maro iam proclivia amicabiliter occulto cruor fleo peto delitesco Comperte lacerta his tot Os ut Fruor res Gaza provisio conscientia dux effrenus Promus sui secundus rutila. Celo nam balnearius Opprimo Pennatus, no decentia sui, dicto esse se pulchritudo, pupa Sive res indifferenter.</p>\n<p>Captivo pala pro de tandem Singulus labor, determino cui Ingurgito quo Ico pax ethologus praetorgredior internuntius. Ops foveo Huius dux respublica his animadverto dolus imperterritus. Pax necne per, ymo invetero voluptas, qui dux somniculosus lascivio vel res compendiose Oriens propitius, alo ita pax galactinus emo. Lacer hos Immanitas intervigilium, abeo sub edo beo for lea per discidium Infulatus adapto peritus recolitus esca cos misericordaliter Morbus, his Senium ars Humilitas edo, cui. Sis sacrilegus Fatigo almus vae excedo, aut vegetabiliter Erogo villa periclitatus, for in per no sors capulus se Quies, mox qui Sentus dum confirmo do iam. Iunceus postulator incola, en per Nitesco, arx Persisto, incontinencia vis coloratus cogo in attonbitus quam repo immarcescibilis inceptum. Ego Vena series sudo ac Nitidus. Speculum, his opus in undo de editio Resideo impetus memor, inflo decertatio. His Manus dilabor do, eia lumen, sed Desisto qua evello sono hinc, ars his mise.</p>\n<p>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas. Ivi praebalteata Occumbo congruens seco, lea qui se surculus sed abhinc praejudico in forix curo. Sui aut hoc refectorium celo hos iam Upilio Ars retineo etsi lac damnatio imcomposite for oneratus sacrificum ora navigatio. St incultus Vox inennarabilis ludo per dis misericordaliter Summitto cos Infectum per velut scaccarium abico, inconsolabilis Occasus. Ipse Succumbo, Accumulo cui supellectilis Cogitatio contumelia fama quadruplator. Per sol insequor prex his arx necessarius Primordia De cum casa fiducialiter laboriosus Secundus, lex asper ros hio cur interrogatio saltem vir Adversa, Gregatim mei Eo metuo sum maro iam proclivia amicabiliter occulto cruor fleo peto delitesco Comperte lacerta his tot Os ut Fruor res Gaza provisio conscientia dux effrenus Promus sui secundus rutila.</p>\n<p>Celo nam balnearius Opprimo Pennatus, no decentia sui, dicto esse se pulchritudo, pupa Sive res indifferenter. Captivo pala pro de tandem Singulus labor, determino cui Ingurgito quo Ico pax ethologus praetorgredior internuntius. Ops foveo Huius dux respublica his animadverto dolus imperterritus. Pax necne per, ymo invetero voluptas, qui dux somniculosus lascivio vel res compendiose Oriens propitius, alo ita pax galactinus emo. Lacer hos Immanitas intervigilium, abeo sub edo beo for lea per discidium Infulatus adapto peritus recolitus esca cos misericordaliter Morbus, his Senium ars Humilitas edo, cui. Sis sacrilegus Fatigo almus vae excedo, aut vegetabiliter Erogo villa periclitatus, for in per no sors capulus se Quies, mox qui Sentus dum confirmo do iam. Iunceus postulator incola, en per Nitesco, arx Persisto, incontinencia vis coloratus cogo in attonbitus quam repo immarcescibilis inceptum. Ego Vena series sudo ac Nitidus. Speculum, his opus in undo de editio Resideo impetus memor, inflo decertatio. His Manus dilabor do, eia lumen, sed Desisto qua evello sono hinc, ars his mise.</p>','gBottom',0,'shopware.php?sViewport=ticket&sFid=8','_self',0,'','',''),(38,'','','','','','','Affiliate program','','eBottom2',4,'shopware.php?sViewport=ticket&sFid=17','_self',0,'','',''),(39,'','','','','','','Defektes Produkt','<p>Defektes Produkt.</p>','gBottom',0,'shopware.php?sViewport=ticket&sFid=9','_self',0,'','',''),(40,'','','','','','','Defective product','<p>Defective product.</p>','eBottom',4,'shopware.php?sViewport=ticket&sFid=19','_self',0,'','',''),(41,'','','','','','','Rückgabe','<p>R&uuml;ckgabe.</p>','gBottom',4,'shopware.php?sViewport=ticket&sFid=10','_self',0,'','',''),(42,'','','','','','','Return','<p>Return.</p>','eBottom2',3,'shopware.php?sViewport=ticket&sFid=20','_self',0,'','',''),(43,'','','','','','','rechtliche Vorabinformationen','<h2>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas.</h2>\n<p>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas. Ivi praebalteata Occumbo congruens seco, lea qui se surculus sed abhinc praejudico in forix curo. Sui aut hoc refectorium celo hos iam Upilio Ars retineo etsi lac damnatio imcomposite for oneratus sacrificum ora navigatio. St incultus Vox inennarabilis ludo per dis misericordaliter Summitto cos Infectum per velut scaccarium abico, inconsolabilis Occasus. Ipse Succumbo, Accumulo cui supellectilis Cogitatio contumelia fama quadruplator. Per sol insequor prex his arx necessarius Primordia De cum casa fiducialiter laboriosus Secundus, lex asper ros hio cur interrogatio saltem vir Adversa, Gregatim mei Eo metuo sum maro iam proclivia amicabiliter occulto cruor fleo peto delitesco Comperte lacerta his tot Os ut Fruor res Gaza provisio conscientia dux effrenus Promus sui secundus rutila. Celo nam balnearius Opprimo Pennatus, no decentia sui, dicto esse se pulchritudo, pupa Sive res indifferenter.</p>\n<p>Captivo pala pro de tandem Singulus labor, determino cui Ingurgito quo Ico pax ethologus praetorgredior internuntius. Ops foveo Huius dux respublica his animadverto dolus imperterritus. Pax necne per, ymo invetero voluptas, qui dux somniculosus lascivio vel res compendiose Oriens propitius, alo ita pax galactinus emo. Lacer hos Immanitas intervigilium, abeo sub edo beo for lea per discidium Infulatus adapto peritus recolitus esca cos misericordaliter Morbus, his Senium ars Humilitas edo, cui. Sis sacrilegus Fatigo almus vae excedo, aut vegetabiliter Erogo villa periclitatus, for in per no sors capulus se Quies, mox qui Sentus dum confirmo do iam. Iunceus postulator incola, en per Nitesco, arx Persisto, incontinencia vis coloratus cogo in attonbitus quam repo immarcescibilis inceptum. Ego Vena series sudo ac Nitidus. Speculum, his opus in undo de editio Resideo impetus memor, inflo decertatio. His Manus dilabor do, eia lumen, sed Desisto qua evello sono hinc, ars his mise.</p>\n<p>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas. Ivi praebalteata Occumbo congruens seco, lea qui se surculus sed abhinc praejudico in forix curo. Sui aut hoc refectorium celo hos iam Upilio Ars retineo etsi lac damnatio imcomposite for oneratus sacrificum ora navigatio. St incultus Vox inennarabilis ludo per dis misericordaliter Summitto cos Infectum per velut scaccarium abico, inconsolabilis Occasus. Ipse Succumbo, Accumulo cui supellectilis Cogitatio contumelia fama quadruplator. Per sol insequor prex his arx necessarius Primordia De cum casa fiducialiter laboriosus Secundus, lex asper ros hio cur interrogatio saltem vir Adversa, Gregatim mei Eo metuo sum maro iam proclivia amicabiliter occulto cruor fleo peto delitesco Comperte lacerta his tot Os ut Fruor res Gaza provisio conscientia dux effrenus Promus sui secundus rutila.</p>\n<p>Celo nam balnearius Opprimo Pennatus, no decentia sui, dicto esse se pulchritudo, pupa Sive res indifferenter. Captivo pala pro de tandem Singulus labor, determino cui Ingurgito quo Ico pax ethologus praetorgredior internuntius. Ops foveo Huius dux respublica his animadverto dolus imperterritus. Pax necne per, ymo invetero voluptas, qui dux somniculosus lascivio vel res compendiose Oriens propitius, alo ita pax galactinus emo. Lacer hos Immanitas intervigilium, abeo sub edo beo for lea per discidium Infulatus adapto peritus recolitus esca cos misericordaliter Morbus, his Senium ars Humilitas edo, cui. Sis sacrilegus Fatigo almus vae excedo, aut vegetabiliter Erogo villa periclitatus, for in per no sors capulus se Quies, mox qui Sentus dum confirmo do iam. Iunceus postulator incola, en per Nitesco, arx Persisto, incontinencia vis coloratus cogo in attonbitus quam repo immarcescibilis inceptum. Ego Vena series sudo ac Nitidus. Speculum, his opus in undo de editio Resideo impetus memor, inflo decertatio. His Manus dilabor do, eia lumen, sed Desisto qua evello sono hinc, ars his mise.</p>','gLeft|gBottom',0,'','',0,'','',''),(45,'','','','','','','Widerrufsformular','<h2>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas.</h2>\n<p>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas. Ivi praebalteata Occumbo congruens seco, lea qui se surculus sed abhinc praejudico in forix curo. Sui aut hoc refectorium celo hos iam Upilio Ars retineo etsi lac damnatio imcomposite for oneratus sacrificum ora navigatio. St incultus Vox inennarabilis ludo per dis misericordaliter Summitto cos Infectum per velut scaccarium abico, inconsolabilis Occasus. Ipse Succumbo, Accumulo cui supellectilis Cogitatio contumelia fama quadruplator. Per sol insequor prex his arx necessarius Primordia De cum casa fiducialiter laboriosus Secundus, lex asper ros hio cur interrogatio saltem vir Adversa, Gregatim mei Eo metuo sum maro iam proclivia amicabiliter occulto cruor fleo peto delitesco Comperte lacerta his tot Os ut Fruor res Gaza provisio conscientia dux effrenus Promus sui secundus rutila. Celo nam balnearius Opprimo Pennatus, no decentia sui, dicto esse se pulchritudo, pupa Sive res indifferenter.</p>\n<p>Captivo pala pro de tandem Singulus labor, determino cui Ingurgito quo Ico pax ethologus praetorgredior internuntius. Ops foveo Huius dux respublica his animadverto dolus imperterritus. Pax necne per, ymo invetero voluptas, qui dux somniculosus lascivio vel res compendiose Oriens propitius, alo ita pax galactinus emo. Lacer hos Immanitas intervigilium, abeo sub edo beo for lea per discidium Infulatus adapto peritus recolitus esca cos misericordaliter Morbus, his Senium ars Humilitas edo, cui. Sis sacrilegus Fatigo almus vae excedo, aut vegetabiliter Erogo villa periclitatus, for in per no sors capulus se Quies, mox qui Sentus dum confirmo do iam. Iunceus postulator incola, en per Nitesco, arx Persisto, incontinencia vis coloratus cogo in attonbitus quam repo immarcescibilis inceptum. Ego Vena series sudo ac Nitidus. Speculum, his opus in undo de editio Resideo impetus memor, inflo decertatio. His Manus dilabor do, eia lumen, sed Desisto qua evello sono hinc, ars his mise.</p>\n<p>Isericordaliter Occatio ter aut Aliusmodi vel Fugo redigo, iam ops tam Plaga consulo sui ymo Zephyr humilitas. Ivi praebalteata Occumbo congruens seco, lea qui se surculus sed abhinc praejudico in forix curo. Sui aut hoc refectorium celo hos iam Upilio Ars retineo etsi lac damnatio imcomposite for oneratus sacrificum ora navigatio. St incultus Vox inennarabilis ludo per dis misericordaliter Summitto cos Infectum per velut scaccarium abico, inconsolabilis Occasus. Ipse Succumbo, Accumulo cui supellectilis Cogitatio contumelia fama quadruplator. Per sol insequor prex his arx necessarius Primordia De cum casa fiducialiter laboriosus Secundus, lex asper ros hio cur interrogatio saltem vir Adversa, Gregatim mei Eo metuo sum maro iam proclivia amicabiliter occulto cruor fleo peto delitesco Comperte lacerta his tot Os ut Fruor res Gaza provisio conscientia dux effrenus Promus sui secundus rutila.</p>\n<p>Celo nam balnearius Opprimo Pennatus, no decentia sui, dicto esse se pulchritudo, pupa Sive res indifferenter. Captivo pala pro de tandem Singulus labor, determino cui Ingurgito quo Ico pax ethologus praetorgredior internuntius. Ops foveo Huius dux respublica his animadverto dolus imperterritus. Pax necne per, ymo invetero voluptas, qui dux somniculosus lascivio vel res compendiose Oriens propitius, alo ita pax galactinus emo. Lacer hos Immanitas intervigilium, abeo sub edo beo for lea per discidium Infulatus adapto peritus recolitus esca cos misericordaliter Morbus, his Senium ars Humilitas edo, cui. Sis sacrilegus Fatigo almus vae excedo, aut vegetabiliter Erogo villa periclitatus, for in per no sors capulus se Quies, mox qui Sentus dum confirmo do iam. Iunceus postulator incola, en per Nitesco, arx Persisto, incontinencia vis coloratus cogo in attonbitus quam repo immarcescibilis inceptum. Ego Vena series sudo ac Nitidus. Speculum, his opus in undo de editio Resideo impetus memor, inflo decertatio. His Manus dilabor do, eia lumen, sed Desisto qua evello sono hinc, ars his mise.</p>','gBottom',8,'','',0,'','','');
/*!40000 ALTER TABLE `s_cms_static` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_cms_static_attributes`
--

DROP TABLE IF EXISTS `s_cms_static_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_cms_static_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmsStaticID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cmsStaticID` (`cmsStaticID`),
  CONSTRAINT `s_cms_static_attributes_ibfk_1` FOREIGN KEY (`cmsStaticID`) REFERENCES `s_cms_static` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_cms_static_attributes`
--

LOCK TABLES `s_cms_static_attributes` WRITE;
/*!40000 ALTER TABLE `s_cms_static_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_cms_static_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_cms_static_groups`
--

DROP TABLE IF EXISTS `s_cms_static_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_cms_static_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(1) NOT NULL,
  `mapping_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mapping_id` (`mapping_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_cms_static_groups`
--

LOCK TABLES `s_cms_static_groups` WRITE;
/*!40000 ALTER TABLE `s_cms_static_groups` DISABLE KEYS */;
INSERT INTO `s_cms_static_groups` VALUES (1,'Links','gLeft',1,NULL),(2,'Unten (Spalte 1)','gBottom',1,NULL),(3,'Unten (Spalte 2)','gBottom2',1,NULL),(4,'In Bearbeitung','gDisabled',0,NULL),(7,'Englisch links','eLeft',1,1),(9,'Englisch unten (Spalte 1)','eBottom',1,2),(10,'Englisch unten (Spalte 2)','eBottom2',1,3);
/*!40000 ALTER TABLE `s_cms_static_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_cms_support`
--

DROP TABLE IF EXISTS `s_cms_support`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_cms_support` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_template` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `email_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text2` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ticket_typeID` int(10) NOT NULL,
  `isocode` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'de',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_cms_support`
--

LOCK TABLES `s_cms_support` WRITE;
/*!40000 ALTER TABLE `s_cms_support` DISABLE KEYS */;
INSERT INTO `s_cms_support` VALUES (5,'Kontaktformular','<p>Schreiben Sie uns eine eMail.</p>\r\n<p>Wir freuen uns auf Ihre Kontaktaufnahme.</p>','info@example.com','Kontaktformular Shopware Demoshop\r\n\r\nAnrede: {sVars.anrede}\r\nVorname: {sVars.vorname}\r\nNachname: {sVars.nachname}\r\neMail: {sVars.email}\r\nTelefon: {sVars.telefon}\r\nBetreff: {sVars.betreff}\r\nKommentar: \r\n{sVars.kommentar}\r\n\r\n\r\n','Kontaktformular Shopware','<p>Ihr Formular wurde versendet!</p>',1,'de'),(8,'Partnerformular','<h2>Partner werden und mitverdienen!</h2>\r\n<p>Einfach unseren Link auf ihre Seite legen und Sie erhalten f&uuml;r jeden Umsatz ihrer vermittelten Kunden automatisch eine attraktive Provision auf den Netto-Auftragswert.</p>\r\n<p>Bitte f&uuml;llen Sie <span style=\"text-decoration: underline;\">unverbindlich</span> das Partnerformular aus. Wir werden uns umgehend mit Ihnen in Verbindung setzen!</p>','info@example.com','Partneranfrage - {$sShopname}\n{sVars.firma} moechte Partner Ihres Shops werden!\n\nFirma: {sVars.firma}\nAnsprechpartner: {sVars.ansprechpartner}\nStraße/Hausnr.: {sVars.strasse}\nPLZ / Ort: {sVars.plz} {sVars.ort}\neMail: {sVars.email}\nTelefon: {sVars.tel}\nFax: {sVars.fax}\nWebseite: {sVars.website}\n\nKommentar:\n{sVars.kommentar}\n\nProfil:\n{sVars.profil}','Partner Anfrage','<p>Die Anfrage wurde versandt!</p>',0,'de'),(9,'Defektes Produkt','<h1>Defektes Produkt - f&uuml;r Endkunden und H&auml;ndler</h1>\r\n<p>Sie erhalten von uns nach dem Absenden dieses Formulars innerhalb kurzer Zeit eine R&uuml;ckantwort mit einer RMA-Nummer und weiterer Vorgehensweise.</p>\r\n<p>Bitte f&uuml;llen Sie die Fehlerbeschreibung ausf&uuml;hrlich aus, Sie m&uuml;ssen diese dann nicht mehr dem Paket beilegen.</p>','info@example.com','Defektes Produkt - Shopware Demoshop\r\n\r\nFirma: {sVars.firma}\r\nKundennummer: {sVars.kdnr}\r\neMail: {sVars.email}\r\n\r\nRechnungsnummer: {sVars.rechnung}\r\nArtikelnummer: {sVars.artikel}\r\n\r\nDetaillierte Fehlerbeschreibung:\r\n--------------------------------\r\n{sVars.fehler}\r\n\r\nRechner: {sVars.rechner}\r\nSystem {sVars.system}\r\nWie tritt das Problem auf: {sVars.wie}\r\n','Online-Serviceformular','<p>Formular erfolgreich versandt!</p>',2,'de'),(10,'Rückgabe','<h2>Hier k&ouml;nnen Sie Informationen zur R&uuml;ckgabe einstellen...</h2>','info@example.com','Rückgabe - Shopware Demoshop\n \nKundennummer: {sVars.kdnr}\neMail: {sVars.email}\n \nRechnungsnummer: {sVars.rechnung}\nArtikelnummer: {sVars.artikel}\n \nKommentar:\n \n{sVars.info}','Rückgabe','<p>Formular erfolgreich versandt.</p>',0,'de'),(16,'Anfrage-Formular','<p>Schreiben Sie uns eine eMail.</p>\r\n<p>Wir freuen uns auf Ihre Kontaktaufnahme.</p>','info@example.com','Anfrage-Formular Shopware Demoshop\r\n\r\nAnrede: {sVars.anrede}\r\nVorname: {sVars.vorname}\r\nNachname: {sVars.nachname}\r\neMail: {sVars.email}\r\nTelefon: {sVars.telefon}\r\nFrage: \r\n{sVars.inquiry}\r\n\r\n\r\n','Anfrage-Formular Shopware','<p>Ihre Anfrage wurde versendet!</p>',0,'de'),(17,'Partner form','<h2><strong>Become partner and earn money!</strong></h2>\r\n<p>Link our Site and receive&nbsp;an attractive commission on the net contract price&nbsp;for every tornover of your&nbsp;provided customers.</p>\r\n<p>Please fill out the partner form <span style=\"text-decoration: underline;\">without obligation</span>.&nbsp;We will immediately get in contact with you!</p>','info@example.com','Partner inquiry - {$sShopname}\n{sVars.firma} want to become your partner!\n\nCompany: {sVars.firma}\nContact person: {sVars.ansprechpartner}\nStreet / No.: {sVars.strasse}\nPostal Code / City: {sVars.plz} {sVars.ort}\neMail: {sVars.email}\nPhone: {sVars.tel}\nFax: {sVars.fax}\nWebsite: {sVars.website}\n\nComment:\n{sVars.kommentar}\n\nProfile:\n{sVars.profil}','Partner inquiry','<p>&nbsp;</p>\r\n&nbsp;\r\n<div id=\"result_box\" dir=\"ltr\">The request has been sent!</div>',0,'de'),(18,'Contact','','info@example.com','Contact form Shopware Demoshop\r\n\r\nTitle: {sVars.anrede}\r\nFirst name: {sVars.vorname}\r\nLast name: {sVars.nachname}\r\neMail: {sVars.email}\r\nPhone: {sVars.telefon}\r\nSubject: {sVars.betreff}\r\nComment: \r\n{sVars.kommentar}\r\n\r\n\r\n','Contact form Shopware','<p>Your form was sent!</p>',0,'de'),(19,'Defective product','<p>&nbsp;</p>\r\n&nbsp;\r\n<h1>Defective product - for customers and traders</h1>\r\n<p>You will receive an answer&nbsp;from us&nbsp;with an RMA number an other approach&nbsp;after sending this form.&nbsp;</p>\r\n<p>Please fill out the error description, so you must not add this any more to the package.</p>','info@example.com','Defective product - Shopware Demoshop\n\nCompany: {sVars.firma}\nCustomer no.: {sVars.kdnr}\neMail: {sVars.email}\n\nInvoice no.: {sVars.rechnung}\nArticle no.: {sVars.artikel}\n\nDescription of failure:\n--------------------------------\n{sVars.fehler}\n\nType: {sVars.rechner}\nSystem {sVars.system}\nHow does the problem occur:\n{sVars.wie}','Online-Serviceform','<p>Form successfully sent!</p>',0,'de'),(20,'Return','<h2>Here you can write information about the return...</h2>','info@example.com','Return - Shopware Demoshop\n\nCustomer no.: {sVars.kdnr}\neMail: {sVars.email}\n\nInvoice no.: {sVars.rechnung}\nArticle no.: {sVars.artikel}\n\nComment:\n{sVars.info}','Return','<p>Form successfully sent.</p>',0,'de'),(21,'Inquiry form','<p>Send us an email.&nbsp;<br /><br />We look forward to hearing from you.</p>','info@example.com','Anfrage-Formular Shopware Demoshop\r\n\r\nAnrede: {sVars.anrede}\r\nVorname: {sVars.vorname}\r\nNachname: {sVars.nachname}\r\neMail: {sVars.email}\r\nTelefon: {sVars.telefon}\r\nFrage: \r\n{sVars.inquiry}\r\n\r\n\r\n','Inquiry form Shopware','<p>Your request has been sent!</p>',0,'de'),(22,'Support beantragen','<p>Wir freuen uns &uuml;ber Ihre Kontaktaufnahme.</p>','info@example.com','','Support beantragen','<p>Vielen Dank f&uuml;r Ihre Anfrage!</p>',1,'de');
/*!40000 ALTER TABLE `s_cms_support` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_cms_support_attributes`
--

DROP TABLE IF EXISTS `s_cms_support_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_cms_support_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmsSupportID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cmsSupportID` (`cmsSupportID`),
  CONSTRAINT `s_cms_support_attributes_ibfk_1` FOREIGN KEY (`cmsSupportID`) REFERENCES `s_cms_support` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_cms_support_attributes`
--

LOCK TABLES `s_cms_support_attributes` WRITE;
/*!40000 ALTER TABLE `s_cms_support_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_cms_support_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_cms_support_fields`
--

DROP TABLE IF EXISTS `s_cms_support_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_cms_support_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `error_msg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typ` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` int(1) NOT NULL,
  `supportID` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `added` datetime NOT NULL,
  `position` int(11) NOT NULL,
  `ticket_task` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`supportID`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_cms_support_fields`
--

LOCK TABLES `s_cms_support_fields` WRITE;
/*!40000 ALTER TABLE `s_cms_support_fields` DISABLE KEYS */;
INSERT INTO `s_cms_support_fields` VALUES (24,'','anrede','','select',1,5,'Anrede','normal','Frau;Herr','2007-11-02 03:28:48',0,''),(35,'','vorname','','text',1,5,'Vorname','normal','','2007-11-06 03:17:48',0,''),(36,'','nachname','','text',1,5,'Nachname','normal','','2007-11-06 03:17:57',0,'name'),(37,'','email','','email',1,5,'eMail-Adresse','normal','','2007-11-06 03:18:36',0,'email'),(38,'','telefon','','text',0,5,'Telefon','normal','','2007-11-06 03:18:49',0,''),(39,'','betreff','','text',1,5,'Betreff','normal','','2007-11-06 03:18:57',0,'subject'),(40,'','kommentar','','textarea',1,5,'Kommentar','normal','','2007-11-06 03:19:08',0,'message'),(41,'','firma','','text',1,8,'Firma','normal','','2007-11-22 08:11:39',0,''),(42,'','ansprechpartner','','text',1,8,'Ansprechpartner','normal','','2007-11-22 08:12:18',0,''),(43,'','strasse','','text2',1,8,'Straße / Hausnummer','strasse;nr','','2007-11-22 08:12:49',0,''),(44,'','plz;ort','','text2',1,8,'PLZ / Ort','plz;ort','','2007-11-22 08:12:59',0,''),(45,'','tel','','text',1,8,'Telefon','normal','','2007-11-22 08:13:45',0,''),(46,'','fax','','text',0,8,'Fax','normal','','2007-11-22 08:13:52',0,''),(47,'','email','','text',1,8,'eMail','normal','','2007-11-22 08:13:58',0,''),(48,'','website','','text',1,8,'Webseite','normal','','2007-11-22 08:14:07',0,''),(49,'','kommentar','','textarea',0,8,'Kommentar','normal','','2007-11-22 08:14:21',0,''),(50,'','profil','','textarea',1,8,'Firmenprofil','normal','','2007-11-22 08:14:34',0,''),(51,'','rechnung','','text',1,9,'Rechnungsnummer','normal','','2007-11-06 17:21:49',0,''),(52,'','email','','text',1,9,'eMail-Adresse','normal','','2007-11-06 17:19:20',0,'email'),(53,'','kdnr','','text',1,9,'KdNr.(siehe Rechnung)','normal','','2007-11-06 17:19:10',0,'name'),(54,'','firma','','checkbox',0,9,'Firma (Wenn ja, bitte ankreuzen)','','1','2007-11-06 17:18:36',0,''),(55,'','artikel','','textarea',1,9,'Artikelnummer(n)','normal','','2007-11-06 17:22:13',0,'subject'),(56,'','fehler','','textarea',1,9,'Detaillierte Fehlerbeschreibung','normal','','2007-11-06 17:22:33',0,'message'),(57,'','rechner','','textarea',0,9,'Auf welchem Rechnertypen läuft das defekte Produkt?','normal','','2007-11-06 17:23:17',0,''),(58,'','system','','textarea',0,9,'Mit welchem Betriebssystem arbeiten Sie?','normal','','2007-11-06 17:23:57',0,''),(59,'','wie','','select',1,9,'Wie tritt das Problem auf?','normal','sporadisch; ständig','2007-11-06 17:24:26',0,''),(60,'','kdnr','','text',1,10,'KdNr.(siehe Rechnung)','normal','','2007-11-06 17:31:38',1,''),(61,'','email','','text',1,10,'eMail-Adresse','normal','','2007-11-06 17:31:51',2,''),(62,'','rechnung','','text',1,10,'Rechnungsnummer','normal','','2007-11-06 17:32:02',3,''),(63,'','artikel','','textarea',1,10,'Artikelnummer(n)','normal','','2007-11-06 17:32:17',4,''),(64,'','info','','textarea',0,10,'Kommentar','normal','','2007-11-06 17:32:42',5,''),(69,'','inquiry','','textarea',1,16,'Anfrage','normal','','2007-11-06 03:19:08',5,''),(71,'','nachname','','text',1,16,'Nachname','normal','','2007-11-06 03:17:57',2,''),(72,'','anrede','','select',1,16,'Anrede','normal','Frau;Herr','2007-11-02 03:28:48',0,''),(73,'','telefon','','text',0,16,'Telefon','normal','','2007-11-06 03:18:49',3,''),(74,'','email','','text',1,16,'eMail-Adresse','normal','','2007-11-06 03:18:36',0,''),(75,'','vorname','','text',1,16,'Vorname','normal','','2007-11-06 03:17:48',1,''),(76,'','firma','','text',1,17,'Company','normal','','2008-10-17 13:02:42',0,''),(77,'','ansprechpartner','','text',1,17,'Contact person','normal','','2008-10-17 13:03:35',4,''),(78,'','strasse','','text2',1,17,'Street / house number','strasse;nr','','2008-10-17 13:05:55',0,''),(79,'','plz;ort','','text2',1,17,'Postal Code / City','plz;ort','','2008-10-17 13:06:23',0,''),(80,'','tel','','text',1,17,'Phone','normal','','2008-10-17 13:06:35',0,''),(81,'','fax','','text',0,17,'Fax','normal','','2008-10-17 13:06:48',0,''),(82,'','email','','text',1,17,'eMail','normal','','2008-10-17 13:07:06',0,''),(83,'','website','','text',1,17,'Website','normal','','2008-10-17 13:07:14',0,''),(84,'','kommentar','','textarea',0,17,'Comment','normal','','2008-10-17 13:07:25',0,''),(85,'','profil','','textarea',1,17,'Company profile','normal','','2008-10-17 13:07:43',0,''),(86,'','anrede','','select',1,18,'Title','normal','Ms;Mr','2008-10-17 13:21:07',0,''),(87,'','vorname','','text',1,18,'First name','normal','','2008-10-17 13:21:41',0,''),(88,'','nachname','','text',1,18,'Last name','normal','','2008-10-17 13:22:01',0,''),(89,'','email','','text',1,18,'eMail-Adress','normal','','2008-10-17 13:22:18',0,''),(90,'','telefon','','text',0,18,'Phone','normal','','2008-10-17 13:22:28',0,''),(91,'','betreff','','text',1,18,'Subject','normal','','2008-10-17 13:22:38',0,''),(92,'','kommentar','','textarea',1,18,'Comment','normal','','2008-10-17 13:22:45',0,''),(93,'','firma','','checkbox',0,19,'Company (If so, please mark)','','1','2008-10-17 13:45:44',0,''),(94,'','kdnr','','text',1,19,'Customer no. (See invoice)','normal','','2008-10-17 13:46:04',0,''),(95,'','email','','text',1,19,'eMail-Adress','normal','','2008-10-17 13:46:27',0,''),(96,'','rechnung','','text',1,19,'Invoice number','normal','','2008-10-17 13:47:03',0,''),(97,'','artikel','','textarea',1,19,'Articlenumber(s)','normal','','2008-10-17 13:47:43',0,''),(98,'','fehler','','textarea',1,19,'Detailed error description','normal','','2008-10-17 13:48:54',0,''),(99,'','rechner','','textarea',0,19,'On which computer type does the defective product run?','normal','','2008-10-17 14:02:03',0,''),(100,'','system','','textarea',0,19,'With which operating system do you work?','normal','','2008-10-17 14:02:36',0,''),(101,'','wie','','select',1,19,'How doeas the problem occur?','normal','sporadically;permanently','2008-10-17 14:02:55',0,''),(102,'','kdnr','','text',1,20,'Customer no. (See invoice)','normal','','2008-10-17 14:21:28',1,''),(103,'','email','','text',1,20,'eMail-Adress','normal','','2008-10-17 14:22:12',2,''),(104,'','rechnung','','text',1,20,'Invoice number','normal','','2008-10-17 14:22:43',3,''),(105,'','artikel','','textarea',1,20,'Articlenumber(s)','normal','','2008-10-17 14:23:15',4,''),(106,'','info','','textarea',0,20,'Comment','normal','','2008-10-17 14:23:37',5,''),(107,'','anrede','','select',1,21,'Title','normal','Ms;Mr','2008-10-17 14:45:21',0,''),(108,'','vorname','','text',1,21,'First name','normal','','2008-10-17 14:46:11',0,''),(109,'','nachname','','text',1,21,'Last name','normal','','2008-10-17 14:46:31',0,''),(110,'','email','','text',1,21,'eMail-Adress','normal','','2008-10-17 14:46:49',0,''),(111,'','telefon','','text',0,21,'Phone','normal','','2008-10-17 14:47:00',0,''),(112,'','inquiry','','textarea',1,21,'Inquiry','normal','','2008-10-17 14:47:25',0,''),(113,'','name','','text',1,22,'Name','normal','','2009-04-15 22:20:30',0,'name'),(114,'','email','','email',1,22,'eMail','normal','','2009-04-15 22:20:37',0,'email'),(115,'','betreff','','text',1,22,'Betreff','normal','','2009-04-15 22:20:45',0,'subject'),(116,'','kommentar','','textarea',1,22,'Kommentar','normal','','2009-04-15 22:21:07',0,'message');
/*!40000 ALTER TABLE `s_cms_support_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_acl_privileges`
--

DROP TABLE IF EXISTS `s_core_acl_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_acl_privileges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resourceID` (`resourceID`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_acl_privileges`
--

LOCK TABLES `s_core_acl_privileges` WRITE;
/*!40000 ALTER TABLE `s_core_acl_privileges` DISABLE KEYS */;
INSERT INTO `s_core_acl_privileges` VALUES (1,1,'create'),(2,1,'read'),(3,1,'update'),(4,1,'delete'),(5,2,'create'),(6,2,'read'),(7,2,'update'),(8,2,'delete'),(10,3,'create'),(11,3,'update'),(12,3,'delete'),(15,4,'create'),(16,4,'read'),(17,4,'update'),(18,4,'delete'),(19,5,'create'),(20,5,'update'),(21,5,'delete'),(22,5,'read'),(23,6,'createupdate'),(24,6,'read'),(26,6,'delete'),(27,5,'detail'),(28,5,'perform_order'),(29,7,'create'),(30,7,'read'),(31,7,'update'),(32,7,'delete'),(33,8,'create'),(34,8,'read'),(35,8,'update'),(36,8,'delete'),(37,8,'export'),(38,8,'generate'),(39,9,'read'),(40,9,'accept'),(41,9,'comment'),(42,9,'delete'),(43,10,'create'),(44,10,'read'),(45,10,'update'),(46,10,'delete'),(47,11,'create'),(48,11,'read'),(49,11,'update'),(50,11,'delete'),(56,13,'read'),(57,14,'create'),(58,14,'read'),(59,14,'update'),(60,14,'delete'),(61,15,'create'),(62,15,'read'),(63,15,'update'),(64,15,'delete'),(65,16,'create'),(66,16,'read'),(67,16,'update'),(68,16,'delete'),(69,17,'create'),(70,17,'read'),(71,17,'update'),(72,17,'delete'),(73,18,'createGroup'),(74,18,'read'),(75,18,'createSite'),(76,18,'updateSite'),(77,18,'deleteSite'),(78,18,'deleteGroup'),(79,11,'generate'),(80,19,'read'),(81,20,'read'),(82,20,'delete'),(83,21,'save'),(84,21,'read'),(85,21,'delete'),(86,22,'create'),(87,22,'read'),(88,22,'update'),(89,22,'delete'),(90,22,'statistic'),(91,23,'create'),(92,23,'read'),(93,23,'update'),(94,23,'delete'),(95,24,'read'),(96,25,'delete'),(97,25,'read'),(98,26,'read'),(99,27,'read'),(100,27,'delete'),(101,27,'create'),(102,27,'upload'),(103,27,'update'),(104,28,'read'),(105,28,'delete'),(106,28,'update'),(107,28,'create'),(108,28,'comments'),(110,29,'read'),(112,29,'delete'),(113,29,'save'),(114,30,'create'),(115,30,'read'),(116,30,'update'),(117,30,'delete'),(118,31,'create'),(119,31,'read'),(120,31,'update'),(121,31,'delete'),(122,32,'delete'),(123,32,'read'),(124,32,'write'),(125,33,'read'),(126,33,'update'),(127,33,'clear'),(128,34,'read'),(129,34,'export'),(130,34,'import'),(131,35,'create'),(132,35,'read'),(133,35,'update'),(134,35,'delete'),(136,36,'read'),(137,36,'upload'),(138,36,'download'),(139,36,'install'),(140,36,'update'),(141,37,'read'),(142,37,'swag-visitors-customers-widget'),(143,37,'swag-last-orders-widget'),(144,37,'swag-sales-widget'),(145,37,'swag-merchant-widget'),(146,37,'swag-upload-widget'),(147,37,'swag-notice-widget');
/*!40000 ALTER TABLE `s_core_acl_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_acl_resources`
--

DROP TABLE IF EXISTS `s_core_acl_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_acl_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pluginID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_acl_resources`
--

LOCK TABLES `s_core_acl_resources` WRITE;
/*!40000 ALTER TABLE `s_core_acl_resources` DISABLE KEYS */;
INSERT INTO `s_core_acl_resources` VALUES (1,'debug_test',NULL),(2,'banner',NULL),(4,'supplier',NULL),(5,'customer',NULL),(6,'form',NULL),(7,'premium',NULL),(8,'voucher',NULL),(9,'vote',NULL),(10,'mail',NULL),(11,'productfeed',NULL),(13,'overview',NULL),(14,'order',NULL),(15,'payment',NULL),(16,'shipping',NULL),(17,'snippet',NULL),(18,'site',NULL),(19,'systeminfo',NULL),(20,'log',NULL),(21,'riskmanagement',NULL),(22,'partner',NULL),(23,'category',NULL),(24,'notification',NULL),(25,'canceledorder',NULL),(26,'analytics',NULL),(27,'mediamanager',NULL),(28,'blog',NULL),(29,'article',NULL),(30,'config',NULL),(31,'emotion',NULL),(32,'newslettermanager',NULL),(33,'cache',NULL),(34,'importexport',NULL),(35,'usermanager',NULL),(36,'pluginmanager',NULL),(37,'widgets',NULL);
/*!40000 ALTER TABLE `s_core_acl_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_acl_roles`
--

DROP TABLE IF EXISTS `s_core_acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_acl_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleID` int(11) NOT NULL,
  `resourceID` int(11) DEFAULT NULL,
  `privilegeID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roleID` (`roleID`,`resourceID`,`privilegeID`),
  KEY `resourceID` (`resourceID`),
  KEY `privilegeID` (`privilegeID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_acl_roles`
--

LOCK TABLES `s_core_acl_roles` WRITE;
/*!40000 ALTER TABLE `s_core_acl_roles` DISABLE KEYS */;
INSERT INTO `s_core_acl_roles` VALUES (1,1,NULL,NULL);
/*!40000 ALTER TABLE `s_core_acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_auth`
--

DROP TABLE IF EXISTS `s_core_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleID` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `encoder` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'LegacyBackendMd5',
  `apiKey` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `localeID` int(11) NOT NULL,
  `sessionID` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `admin` int(1) NOT NULL,
  `salted` int(1) unsigned NOT NULL,
  `failedlogins` int(11) NOT NULL,
  `lockeduntil` datetime DEFAULT NULL,
  `extended_editor` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `disabled_cache` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_auth`
--

LOCK TABLES `s_core_auth` WRITE;
/*!40000 ALTER TABLE `s_core_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_auth_attributes`
--

DROP TABLE IF EXISTS `s_core_auth_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_auth_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `authID` (`authID`),
  CONSTRAINT `s_core_auth_attributes_ibfk_1` FOREIGN KEY (`authID`) REFERENCES `s_core_auth` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_auth_attributes`
--

LOCK TABLES `s_core_auth_attributes` WRITE;
/*!40000 ALTER TABLE `s_core_auth_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_auth_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_auth_roles`
--

DROP TABLE IF EXISTS `s_core_auth_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_auth_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentID` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `description` text CHARACTER SET latin1 NOT NULL,
  `source` varchar(255) CHARACTER SET latin1 NOT NULL,
  `enabled` int(1) NOT NULL,
  `admin` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_auth_roles`
--

LOCK TABLES `s_core_auth_roles` WRITE;
/*!40000 ALTER TABLE `s_core_auth_roles` DISABLE KEYS */;
INSERT INTO `s_core_auth_roles` VALUES (1,NULL,'local_admins','Default group that gains access to all shop functions','build-in',1,1);
/*!40000 ALTER TABLE `s_core_auth_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_config_element_translations`
--

DROP TABLE IF EXISTS `s_core_config_element_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_config_element_translations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `element_id` int(11) unsigned NOT NULL,
  `locale_id` int(11) unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `element_id` (`element_id`,`locale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_config_element_translations`
--

LOCK TABLES `s_core_config_element_translations` WRITE;
/*!40000 ALTER TABLE `s_core_config_element_translations` DISABLE KEYS */;
INSERT INTO `s_core_config_element_translations` VALUES (1,225,2,'Controller selection',NULL),(2,276,2,'Controller selection',NULL),(4,224,2,'Display recently viewed items',NULL),(5,269,2,'Activate expandable menu in storefront',NULL),(6,273,2,'Display item comparison',NULL),(7,275,2,'Display tag cloud',NULL),(11,186,2,'VAT vouchers',NULL),(12,188,2,'VAT discounts',NULL),(13,189,2,'Customer reviews must be approved',NULL),(14,190,2,'Automatic item number suggestions',NULL),(15,191,2,'Prefix for automatically generated item numbers',NULL),(16,192,2,'Deactivate product evaluations ',NULL),(17,193,2,'Automatically reminder customer to submit reviews',''),(18,194,2,'Days to wait before sending reminder',''),(19,195,2,'Set tax for discounts dynamically',NULL),(20,226,2,'Thumbnail size','Index of the thumbnail size of the associated album to use. Starts at 0'),(22,231,2,'Maximum number of items to display',NULL),(29,252,2,'Cache search',NULL),(31,254,2,'Close shop due to maintenance',NULL),(32,255,2,'IP excluded from closure',NULL),(35,270,2,'Number of tiers',NULL),(36,271,2,'Activate caching',NULL),(37,272,2,'Caching time',NULL),(38,274,2,'Maximum number of items to be compared',NULL),(39,277,2,'Name of the tag class',NULL),(40,278,2,'Maximum number of terms',NULL),(41,279,2,'Number of ranks',NULL),(42,280,2,'Time period (in days) considered',NULL),(43,286,2,'Items per page',NULL),(44,287,2,'Standard sorting of listings',NULL),(45,288,2,'Maximum number of pages per category',NULL),(46,289,2,'Number of days items are considered new',NULL),(47,290,2,'Number of days considered for top sellers',NULL),(48,291,2,'Number of top sellers for charts',NULL),(49,292,2,'Selection of items per page',NULL),(50,293,2,'Available template categories',NULL),(51,294,2,'Maximum number of items selectable via pull-down menu',NULL),(52,295,2,'Text for unavailable items',NULL),(53,296,2,'Number of similar items for cross selling',NULL),(54,297,2,'Number of items \"customers also bought\"',NULL),(55,298,2,'Standard template for new categories',NULL),(56,299,2,'Number of days to be considered for top seller creation',NULL),(57,300,2,'Number of automatically determined similar products (detail page)',NULL),(58,301,2,'Show delivery time in shopping cart',NULL),(59,302,2,'Number of items displayed as novelties',NULL),(60,303,2,'Request form ID',NULL),(61,304,2,'Minimum shopping cart value for offering individual requests',NULL),(62,305,2,'Zoom viewer instead of light box on detail page ',NULL),(63,306,2,'Check stock in real time on detail page',NULL),(64,307,2,'Maximum number of variants per item',NULL),(65,308,2,'Deactivate out-of-stock items',NULL),(66,309,2,'Display main items in bundles',NULL),(67,310,2,'Hide \"add to shopping cart\" option if item is out-of-stock','Customers can choose to be informed per email when an item is \"now in stock\".'),(68,311,2,'Display inventory shortages in shopping cart',NULL),(69,312,2,'Jump to detail if only one item is available',NULL),(70,313,2,'Configurator open text fields',NULL),(71,314,2,'Available templates for detail page',NULL),(72,315,2,'Max. number of manufacturers in sidebar',NULL),(73,317,2,'Minimum password length (registration)',NULL),(74,318,2,'Standard payment method ID (registration)',NULL),(75,319,2,'Standard recipient group ID for registered customers (system / newsletter)',NULL),(76,320,2,'Generate customer numbers automatically',NULL),(77,321,2,'Deactivate AGB terms checkbox on checkout page',NULL),(78,322,2,'Display country and state fields in shipping address forms',NULL),(79,323,2,'Data protection conditions must be accepted via checkbox',NULL),(80,324,2,'Default payment method ID',NULL),(81,325,2,'Confirm customer email addresses','Customers must enter email addresses twice, in order to avoid typing mistakes.'),(82,326,2,'Check extended fields in newsletter registration',NULL),(83,327,2,'Deactivate \"no customer account\"',NULL),(84,585,2,'Exclude IP from statistics',NULL),(85,586,2,'Google Analytics ID',NULL),(86,587,2,'Google Conversion ID',NULL),(87,588,2,'Anonymous IP address',NULL),(88,589,2,'Cache controller/Times',NULL),(89,590,2,'NoCache Controller/Tags',NULL),(90,591,2,'Alternative Proxy URL',NULL),(91,592,2,'Admin view',NULL),(95,608,2,'Activate SQL injection protection',NULL),(96,609,2,'SQL injection filter',NULL),(97,610,2,'Activate XXS protection',NULL),(98,611,2,'XXS filter',NULL),(99,612,2,'Activate Remote File Inclusion protection',NULL),(100,613,2,'RemoteFileInclusion-filter',NULL),(101,614,2,'Vouchers designated as',NULL),(102,615,2,'Maximum search term length',NULL),(103,620,2,'Discounts designated as',NULL),(104,623,2,'Shortages designated as',NULL),(105,624,2,'Do not send order confirmation to shop owner',NULL),(106,625,2,'Blacklist for keywords',NULL),(107,626,2,'Surcharges on payment methods designated as',NULL),(108,627,2,'Designation percentual deduction on payment method',NULL),(109,628,2,'Order number for discounts',NULL),(110,629,2,'Order  number for shortages',NULL),(111,630,2,'Surcharge on payment method',NULL),(112,631,2,'Number of live search results',NULL),(113,632,2,'Always calculate absolute surcharges for shipping costs',NULL),(114,633,2,'Send registration confirmation to shop owner in CC',NULL),(115,634,2,'Double opt in for newsletter subscriptions',NULL),(116,635,2,'Double opt in for customer reviews',NULL),(117,636,2,'Order number for deduction dispatch rule',NULL),(118,637,2,'Deduction dispatch rule designated as',NULL),(119,641,2,'Order status - Changes to CC addresses',NULL),(120,642,2,'Extended SQL query',NULL),(121,643,2,'Block orders with no available shipping type',NULL),(122,646,2,'Only use lower case letters in URLs',NULL),(123,648,2,'Redirect to starting page in case of unavailable categories / items',NULL),(124,649,2,'Prepare meta description of categories / items',NULL),(125,650,2,'Remove Category ID from URL',NULL),(126,651,2,'SEO nofollow queries',NULL),(127,652,2,'SEO nofollow viewports',NULL),(128,653,2,'Remove unnecessary blank spaces or line breaks',NULL),(129,654,2,'Remove HTML comments',NULL),(130,655,2,'Query aliases',NULL),(131,656,2,'SEO follow backlinks',NULL),(132,657,2,'Use SEO canonical tags',NULL),(133,658,2,'Last update',NULL),(134,659,2,'SEO URLs caching timetable',NULL),(136,661,2,'Activate module',NULL),(137,662,2,'Separate VAT ID for verification',NULL),(138,663,2,'Activate extended verification',NULL),(139,664,2,'Valid countries for extended verification',NULL),(140,665,2,'Mark VAT ID number as required',NULL),(141,666,2,'Activate extended error output',NULL),(142,667,2,'SEO URLs item template',NULL),(143,668,2,'SEO URLs category template',NULL),(144,669,2,'If service is not available, complete normal verification',NULL),(145,670,2,'Other SEO URLs',NULL),(146,671,2,'Request official confirmation with extended verification',NULL),(147,672,2,'Valid results with extended verification.',NULL),(148,673,2,'Shop name',NULL),(149,674,2,'Shop owner email',NULL),(150,675,2,'Address',NULL),(151,676,2,'VAT ID',NULL),(152,677,2,'Bank account',NULL),(153,843,2,'Font color code (R,G,B)',NULL),(154,844,2,'Bot list',NULL),(155,845,2,'Version',NULL),(156,846,2,'Revision',NULL),(157,847,2,'Base file',NULL),(158,848,2,'ESD key',NULL),(159,849,2,'Available templates for blog detail page',NULL),(160,850,2,'Maximum distance allowed for string matching (%)',NULL),(161,851,2,'Factor for accurate hits ',NULL),(162,852,2,'Last update',NULL),(163,853,2,'Factor for inaccurate hits ',NULL),(164,854,2,'Minimum relevance for top items (%)',NULL),(165,855,2,'Maximum distance allowed for partial names (%)',NULL),(166,856,2,'Factor for partial hits',NULL),(167,857,2,'Selection price filter',NULL),(168,858,2,'Results per page',NULL),(169,859,2,'Selection results per page',NULL),(170,860,2,'ESD-Min-Serials',NULL),(171,867,2,'Display \"customers also bought\" recommendations',NULL),(172,868,2,'Number of items per page in the list',NULL),(173,869,2,'Maximum number of pages in the list',NULL),(174,870,2,'Display \"customers also viewed\" recommendations',NULL),(175,871,2,'Number of items per page in the list',NULL),(176,872,2,'Maximum number of pages in the list',NULL),(177,873,2,'Display shop cancellation policy',NULL),(178,874,2,'Display newsletter registration',NULL),(179,875,2,'Display bank detail notice',NULL),(180,876,2,'Display further notices','Snippet: ConfirmTextOrderDefault'),(181,877,2,'Display further options','Add product, add voucher, comment function'),(182,878,2,'Show Bonus System (if installed)',NULL),(183,879,2,'Display \"free with purchase\" items',NULL),(184,880,2,'Display country descriptions',NULL),(185,881,2,'Display information for net orders',NULL),(186,882,2,'Shopping cart header background color','(Hex-Code)'),(187,883,2,'Shopping cart header text color','(Hex-Code)'),(188,884,2,'Background color of shopping cart table','(Hex-Code)'),(189,885,2,'Template for essential characteristics',NULL),(190,886,2,'Timeout',NULL),(191,887,2,'Selectable languages ',NULL),(192,888,2,'SEO URLs blog template',NULL),(193,889,2,'Display item details in modal box',NULL),(194,890,2,'Trusted Shops ID',NULL),(195,891,2,'Show blog entries from category (ID) on starting page',NULL),(196,892,2,'Number of blog entries on starting page',NULL),(197,893,2,'Company',NULL),(198,894,2,'SEO URLs landing page template',NULL),(199,897,2,'All-inclusive surcharges on payment methods designated as',NULL),(200,898,2,'Order number for all-inclusive surcharges on payment methods designated as',NULL),(201,899,2,'Store API URL',NULL),(202,908,2,'Link to download file directly',NULL),(203,909,2,'Always display item descriptions in listing views','Affected views: Top seller, category listings, emotions'),(204,234,2,'Message encoding','8bit, 7bit, base64, binary or quoted-printable'),(205,236,2,'Message ID hostname','Will be received in headers on a default HELO string. If not defined, the value returned from SERVER_NAME, \"localhost.localdomain\" will be used.'),(206,235,2,'Sending method','mail, SMTP or file'),(207,238,2,'Default port','Sets the default SMTP server port.'),(208,239,2,'Connection prefix','\"\", ssl, or tls'),(209,237,2,'Mail host','You can also specify a different port by using this format: [hostname:port] - e.g., smtp1.example.com:25'),(210,242,2,'Connection auth','plain, login or crammd5'),(211,240,2,'SMTP username',NULL),(212,241,2,'SMTP password',NULL),(213,901,2,'Own filter',NULL),(214,905,2,'Check current password at password-change requests',NULL),(215,900,2,'Number of mails sent per call',NULL),(216,938,2,' Release download with payment status','Define the payment status in which a download of ESD items is possible.'),(217,939,2,'Always display the defined article preview image in list views',NULL),(218,940,2,'Send order mail',NULL),(219,0,2,'Force http canonical url',NULL),(220,942,2,'Treat phone field as required','Note that you must configure the asterisk indication in the snippet RegisterLabelPhone'),(221,906,2,'Activate referrer check',NULL),(222,910,2,'Password algorithm','With which algorithm should the password be encrypted?'),(223,911,2,'Live migration','Should available user passwords be rehashed with other algorithms on next login? This is done automatically in the background, so that passwords can be gradually converted to a new algorithm.'),(224,912,2,'Bcrypt iterations','The higher the number of iterations, the more difficult it is for a potential attacker to calculate the clear-text password for the encrypted password.'),(225,913,2,'Sha256 iterations','The higher the number of iterations, the more difficult it is for a potential attacker to calculate the clear-text password for the encrypted password.'),(226,933,2,'Admin view','Deactivate cache for item preview in express checkout'),(227,934,2,'Controller cache timeouts',NULL),(228,935,2,'Skip caching for controllers / tags',NULL),(229,936,2,'Alternative proxy URL','Prepend \"http://\" to HTTP proxy links'),(230,937,2,'Activate cache clearing','Enable automatic cache clearing.'),(231,929,2,'Dummy plugin download URL',NULL),(232,943,2,'Creditor name','Name of the creditor to be included in the mandate.'),(233,944,2,'Header text','Header text of the mandate.'),(234,945,2,'Creditor number','Number of the creditor to be included in the mandate.'),(235,946,2,'Send email','Send email to the customer with the attached SEPA mandate file.'),(236,947,2,'Show SEPA\'s BIC field','Allow customer to specify its BIC when filling in SEPA payment data.'),(237,948,2,'Require SEPA\'s BIC field','Require customer to specify its BIC when filling in SEPA payment data. This option is ignored if the field is hidden.'),(238,949,2,'Show SEPA\'s bank name field','Allow customer to specify its bank name when filling in SEPA payment data.'),(239,950,2,'Require SEPA\'s bank name field','Require customer to specify its bank name when filling in SEPA payment data. This option is ignored if the field is hidden.'),(240,951,2,'Allow payment details editing on checkout page',NULL),(241,952,2,'Supplier SEO',NULL),(242,953,2,'Supplier SEO URLs template',NULL),(243,955,2,'Maximum age for referrer statistics','Old referrer data will be deleted by the cron job call if active'),(244,956,2,'Maximum age for impression statistics','Old impression data will be deleted by the cron job call if active'),(245,957,2,'Show recommend product',NULL),(246,941,2,'Force http canonical url','This option does not take effect if the option \"Use always SSL\" is activated.'),(247,958,2,'Storage period in days',NULL),(248,959,2,'Download strategy for ESD files','<b>Warning</b>: Changing this setting might break ESD downloads. If not sure, use default (PHP)<br><br>Strategy to generate the download links for ESD files. <br><b>Link</b>: Better performance, but possibly insecure <br><b>PHP</b>: More secure, but memory consuming, specially for bigger files <br><b>X-Sendfile</b>: Secure and lightweight, but requires X-Sendfile module and Apache2 web server <br><b>X-Accel</b>: Equivalent to X-Sendfile, but requires Nginx web server instead'),(249,965,1,'Feedback senden',NULL),(250,962,1,'Aktionscode',NULL),(251,961,1,'Update Kanal',NULL);
/*!40000 ALTER TABLE `s_core_config_element_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_config_elements`
--

DROP TABLE IF EXISTS `s_core_config_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_config_elements` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` int(11) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` int(1) unsigned NOT NULL,
  `position` int(11) NOT NULL,
  `scope` int(11) unsigned NOT NULL,
  `filters` blob,
  `validators` blob,
  `options` blob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `form_id_2` (`form_id`,`name`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=968 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_config_elements`
--

LOCK TABLES `s_core_config_elements` WRITE;
/*!40000 ALTER TABLE `s_core_config_elements` DISABLE KEYS */;
INSERT INTO `s_core_config_elements` VALUES (186,86,'vouchertax','s:2:\"19\";','MwSt. Gutscheine',NULL,'text',0,0,0,NULL,NULL,NULL),(188,86,'discounttax','s:2:\"19\";','MwSt. Rabatte',NULL,'text',0,0,0,NULL,NULL,NULL),(189,90,'voteunlock','b:1;','Artikel-Bewertungen müssen freigeschaltet werden',NULL,'boolean',0,0,0,NULL,NULL,NULL),(190,84,'backendautoordernumber','b:1;','Automatischer Vorschlag der Artikelnummer',NULL,'boolean',0,0,0,NULL,NULL,NULL),(191,84,'backendautoordernumberprefix','s:2:\"SW\";','Präfix für automatisch generierte Artikelnummer',NULL,'text',0,0,0,NULL,NULL,NULL),(192,90,'votedisable','b:0;','Artikel-Bewertungen deaktivieren',NULL,'boolean',0,0,0,NULL,NULL,NULL),(193,90,'votesendcalling','b:1;','Automatische Erinnerung zur Artikelbewertung senden','Nach Kauf dem Benutzer an die Artikelbewertung via E-Mail erinnern','boolean',0,0,0,NULL,NULL,NULL),(194,90,'votecallingtime','s:1:\"1\";','Tage bis die Erinnerungs-E-Mail verschickt wird','Tage bis der Kunde via E-Mail an die Artikel-Bewertung erinnert wird','text',0,0,0,NULL,NULL,NULL),(195,86,'taxautomode','b:1;','Steuer für Rabatte dynamisch feststellen',NULL,'boolean',0,0,1,NULL,NULL,NULL),(224,102,'show','b:1;','Artikelverlauf anzeigen',NULL,'checkbox',0,0,1,NULL,NULL,'a:0:{}'),(225,102,'controller','s:61:\"index, listing, detail, custom, newsletter, sitemap, campaign\";','Controller-Auswahl',NULL,'text',0,0,1,NULL,NULL,'a:0:{}'),(226,102,'thumb','i:2;','Vorschaubild-Größe',NULL,'number',0,0,1,NULL,NULL,'a:0:{}'),(231,102,'lastarticlestoshow','s:1:\"5\";','Anzahl Artikel in Verlauf (zuletzt angeschaut)',NULL,'text',0,0,0,NULL,NULL,NULL),(234,124,'mailer_encoding','s:4:\"8bit\";','Encoding der Nachricht','8bit, 7bit, base64, binary und quoted-printable','text',0,0,1,NULL,NULL,NULL),(235,124,'mailer_mailer','s:4:\"mail\";','Methode zum Senden der Mail','mail, smtp oder file','text',0,0,1,NULL,NULL,NULL),(236,124,'mailer_hostname','s:0:\"\";','Hostname für die Message-ID','Wird im Header mittels HELO verwendet. Andernfalls wird der Wert aus SERVER_NAME oder \"localhost.localdomain\" genutzt.','text',0,0,1,NULL,NULL,NULL),(237,124,'mailer_host','s:9:\"localhost\";','Mail Host','Es kann auch ein anderer Port über dieses Muster genutzt werden: [hostname:port] - Bsp.: smtp1.example.com:25','text',0,0,1,NULL,NULL,NULL),(238,124,'mailer_port','s:2:\"25\";','Standard Port','Setzt den Standard SMTP Server-Port','text',0,0,1,NULL,NULL,NULL),(239,124,'mailer_smtpsecure','s:0:\"\";','Verbindungs Präfix','\"\", ssl, oder tls','text',0,0,1,NULL,NULL,NULL),(240,124,'mailer_username','s:0:\"\";','SMTP Benutzername',NULL,'text',0,0,1,NULL,NULL,NULL),(241,124,'mailer_password','s:0:\"\";','SMTP Passwort',NULL,'text',0,0,1,NULL,NULL,NULL),(242,124,'mailer_auth','s:0:\"\";','Verbindungs-Authentifizierung','plain, login oder crammd5','text',0,0,1,NULL,NULL,NULL),(252,0,'cachesearch','i:86400;','Cache Suche',NULL,'interval',0,0,0,NULL,NULL,NULL),(254,128,'setoffline','b:0;','Shop wegen Wartung sperren',NULL,'boolean',0,0,1,NULL,NULL,NULL),(255,128,'offlineip','s:1:\"0\";','Von der Sperrung ausgeschlossene IP',NULL,'text',0,0,1,NULL,NULL,NULL),(269,133,'show','i:1;','Menü zeigen',NULL,'checkbox',0,0,1,NULL,NULL,'a:0:{}'),(270,133,'levels','i:2;','Anzahl Ebenen',NULL,'text',0,0,1,NULL,NULL,'a:0:{}'),(271,133,'caching','i:1;','Caching aktivieren',NULL,'checkbox',0,0,0,NULL,NULL,'a:0:{}'),(272,133,'cachetime','i:86400;','Cachezeit',NULL,'interval',0,0,0,NULL,NULL,'a:0:{}'),(273,134,'show','i:1;','Vergleich zeigen',NULL,'checkbox',0,0,1,NULL,NULL,'a:0:{}'),(274,134,'maxComparisons','i:5;','Maximale Anzahl von zu vergleichenden Artikeln',NULL,'number',0,0,1,NULL,NULL,'a:0:{}'),(275,135,'show','b:1;','Tag-Cloud anzeigen',NULL,'checkbox',0,0,1,NULL,NULL,'a:0:{}'),(276,135,'controller','s:14:\"index, listing\";','Controller-Auswahl',NULL,'text',0,0,1,NULL,NULL,'a:0:{}'),(277,135,'tagCloudClass','s:3:\"tag\";','Name der Tag-Klasse',NULL,'text',0,0,1,NULL,NULL,'a:0:{}'),(278,135,'tagCloudMax','i:46;','Maximale Anzahl Begriffe',NULL,'number',0,0,1,NULL,NULL,'a:0:{}'),(279,135,'tagCloudSplit','i:3;','Anzahl der Stufen',NULL,'number',0,0,1,NULL,NULL,'a:0:{}'),(280,135,'tagTime','i:30;','Die berücksichtigte Zeit in Tagen',NULL,'number',0,0,1,NULL,NULL,'a:0:{}'),(286,144,'articlesperpage','s:2:\"12\";','Artikel pro Seite',NULL,'text',0,0,0,NULL,NULL,NULL),(287,144,'orderbydefault','s:12:\"a.datum DESC\";','Standardsortierung Listings',NULL,'text',0,0,0,NULL,NULL,NULL),(288,144,'maxpages','s:1:\"8\";','Kategorien max. Anzahl Seiten',NULL,'text',0,0,0,NULL,NULL,NULL),(289,145,'markasnew','s:2:\"30\";','Artikel als neu markieren (Tage)',NULL,'text',0,0,0,NULL,NULL,NULL),(290,145,'markastopseller','s:2:\"30\";','Artikel als Topseller markieren (Verkäufe)',NULL,'text',0,0,0,NULL,NULL,NULL),(291,145,'chartrange','i:8;','Anzahl Topseller für Charts',NULL,'number',0,0,0,NULL,NULL,NULL),(292,144,'numberarticlestoshow','s:11:\"12|24|36|48\";','Auswahl Artikel pro Seite',NULL,'text',0,0,0,NULL,NULL,NULL),(293,144,'categorytemplates','s:141:\"article_listing_1col.tpl:Liste;article_listing_2col.tpl:Zweispaltig;article_listing_3col.tpl:Dreispaltig;article_listing_4col.tpl:Vierspaltig\";','Verfügbare Templates Kategorien',NULL,'textarea',0,0,0,NULL,NULL,NULL),(294,147,'maxpurchase','s:3:\"100\";','Max. wählbare Artikelmenge / Artikel über Pulldown-Menü',NULL,'text',0,0,0,NULL,NULL,NULL),(295,147,'notavailable','s:21:\"Lieferzeit ca. 5 Tage\";','Text für nicht verfügbare Artikel',NULL,'text',0,0,1,NULL,NULL,NULL),(296,146,'maxcrosssimilar','s:1:\"8\";','Anzahl ähnlicher Artikel Cross-Selling',NULL,'text',0,0,0,NULL,NULL,NULL),(297,146,'maxcrossalsobought','s:1:\"8\";','Anzahl \"Kunden kauften auch\" Artikel Cross-Selling',NULL,'text',0,0,0,NULL,NULL,NULL),(298,144,'category_default_tpl','s:24:\"article_listing_4col.tpl\";','Standard-Template für neue Kategorien',NULL,'text',0,0,0,NULL,NULL,NULL),(299,145,'chartinterval','s:2:\"10\";','Anzahl der Tage, die für die Topseller-Generierung berücksichtigt werden',NULL,'text',0,0,0,NULL,NULL,NULL),(300,146,'similarlimit','s:1:\"3\";','Anzahl automatisch ermittelter, ähnlicher Artikel (Detailseite)',NULL,'text',0,0,0,NULL,NULL,NULL),(301,147,'basketshippinginfo','b:1;','Lieferzeit im Warenkorb anzeigen',NULL,'boolean',0,0,0,NULL,NULL,NULL),(302,145,'articlelimit','s:2:\"50\";','Anzahl der Artikel, die unter Neuheiten ausgegeben werden',NULL,'text',0,0,0,NULL,NULL,NULL),(303,147,'inquiryid','s:2:\"16\";','Anfrage-Formular ID',NULL,'text',0,0,1,NULL,NULL,NULL),(304,147,'inquiryvalue','s:3:\"150\";','Mind. Warenkorbwert ab dem die Möglichkeit der individuellen Anfrage angeboten wird',NULL,'text',0,0,0,NULL,NULL,NULL),(305,147,'usezoomplus','b:1;','Zoomviewer statt Lightbox auf Detailseite',NULL,'boolean',0,0,0,NULL,NULL,NULL),(306,147,'liveinstock','b:1;','Lagerbestand auf Detailseite in Echtzeit abfragen',NULL,'boolean',0,0,0,NULL,NULL,NULL),(307,147,'configmaxcombinations','s:4:\"1000\";','Maximale Anzahl an Konfigurator-Varianten je Artikel',NULL,'text',0,0,0,NULL,NULL,NULL),(308,147,'deactivatenoinstock','b:0;','Abverkaufsartikel ohne Lagerbestand deaktivieren',NULL,'boolean',0,0,0,NULL,NULL,NULL),(309,147,'showbundlemainarticle','b:1;','Hauptartikel im Bundle anzeigen',NULL,'boolean',0,0,0,NULL,NULL,NULL),(310,147,'deactivatebasketonnotification','b:1;','Warenkorb bei eMail-Benachrichtigung ausblenden','Warenkorb bei aktivierter eMail-Benachrichtigung und nicht vorhandenem Lagerbestand ausblenden','boolean',0,0,0,NULL,NULL,NULL),(311,147,'instockinfo','b:0;','Lagerbestands-Unterschreitung im Warenkorb anzeigen',NULL,'boolean',0,0,0,NULL,NULL,NULL),(312,144,'categorydetaillink','b:0;','Direkt auf Detailspringen, falls nur ein Artikel vorhanden ist',NULL,'boolean',0,0,0,NULL,NULL,NULL),(313,147,'configcustomfields','s:22:\"Freitext 1, Freitext 2\";','Konfigurator Freitextfelder',NULL,'text',0,0,0,NULL,NULL,NULL),(314,147,'detailtemplates','s:9:\":Standard\";','Verfügbare Templates Detailseite',NULL,'textarea',0,0,0,NULL,NULL,NULL),(315,144,'maxsupplierscategory','s:2:\"30\";','Max. Anzahl Hersteller in Sidebar',NULL,'text',0,0,0,NULL,NULL,NULL),(317,157,'minpassword','s:1:\"8\";','Mindestlänge Passwort (Registrierung)',NULL,'text',0,0,0,NULL,NULL,NULL),(318,157,'defaultpayment','s:1:\"5\";','Standardzahlungsart (Id) (Registrierung)',NULL,'select',1,0,1,NULL,NULL,'a:3:{s:5:\"store\";s:12:\"base.Payment\";s:12:\"displayField\";s:11:\"description\";s:10:\"valueField\";s:2:\"id\";}'),(319,157,'newsletterdefaultgroup','s:1:\"1\";','Standard-Empfangsgruppe (ID) für registrierte Kunden (System / Newsletter)',NULL,'text',0,0,1,NULL,NULL,NULL),(320,157,'shopwaremanagedcustomernumbers','b:1;','Shopware generiert Kundennummern',NULL,'boolean',0,0,0,NULL,NULL,NULL),(321,157,'ignoreagb','b:0;','AGB - Checkbox auf Kassenseite deaktivieren',NULL,'boolean',0,0,0,NULL,NULL,NULL),(322,157,'countryshipping','b:1;','Land / Bundesland bei Lieferadresse abfragen',NULL,'boolean',0,0,0,NULL,NULL,NULL),(323,157,'actdprcheck','b:0;','Datenschutz-Bedingungen müssen über Checkbox akzeptiert werden',NULL,'boolean',0,0,0,NULL,NULL,NULL),(324,157,'paymentdefault','s:1:\"5\";','Fallback-Zahlungsart (ID)',NULL,'text',0,0,0,NULL,NULL,NULL),(325,157,'doubleemailvalidation','b:0;','E-Mail Addresse muss zweimal eingegeben werden.','E-Mail Addresse muss zweimal eingegeben werden, um Tippfehler zu vermeiden.','boolean',0,0,0,NULL,NULL,NULL),(326,157,'newsletterextendedfields','b:1;','Erweiterte Felder in Newsletter-Registrierung abfragen',NULL,'boolean',0,0,1,NULL,NULL,NULL),(327,157,'noaccountdisable','b:0;','\"Kein Kundenkonto\" deaktivieren',NULL,'boolean',0,0,0,NULL,NULL,NULL),(585,173,'blockIp','N;','IP von Statistiken ausschließen',NULL,'text',0,0,1,NULL,NULL,'a:0:{}'),(586,174,'tracking_code','N;','Google Analytics-ID',NULL,'text',0,0,1,NULL,NULL,'a:0:{}'),(587,174,'conversion_code','N;','Google Conversion-ID',NULL,'text',0,0,1,NULL,NULL,'a:0:{}'),(588,174,'anonymize_ip','b:1;','IP-Adresse anonymisieren',NULL,'checkbox',0,0,1,NULL,NULL,'a:0:{}'),(608,189,'sql_protection','b:1;','SQL-Injection-Schutz aktivieren',NULL,'checkbox',0,0,0,NULL,NULL,'a:0:{}'),(610,189,'xss_protection','b:1;','XSS-Schutz aktivieren',NULL,'checkbox',0,0,0,NULL,NULL,'a:0:{}'),(612,189,'rfi_protection','b:1;','RemoteFileInclusion-Schutz aktivieren',NULL,'checkbox',0,0,0,NULL,NULL,'a:0:{}'),(614,191,'vouchername','s:9:\"Gutschein\";','Gutscheine Bezeichnung',NULL,'text',0,0,1,NULL,NULL,NULL),(615,190,'minsearchlenght','s:1:\"3\";','Minimale Suchwortlänge',NULL,'text',0,0,0,NULL,NULL,NULL),(620,191,'discountname','s:15:\"Warenkorbrabatt\";','Rabatte Bezeichnung ',NULL,'text',0,0,1,NULL,NULL,NULL),(623,191,'surchargename','s:20:\"Mindermengenzuschlag\";','Mindermengen Bezeichnung',NULL,'text',0,0,1,NULL,NULL,NULL),(624,192,'no_order_mail','b:0;','Bestellbestätigung nicht an Shopbetreiber schicken',NULL,'boolean',0,0,0,NULL,NULL,NULL),(625,190,'badwords','s:375:\"ab,die,der,und,in,zu,den,das,nicht,von,sie,ist,des,sich,mit,dem,dass,er,es,ein,ich,auf,so,eine,auch,als,an,nach,wie,im,für,einen,um,werden,mehr,zum,aus,ihrem,style,oder,neue,spieler,können,wird,sind,ihre,einem,of,du,sind,einer,über,alle,neuen,bei,durch,kann,hat,nur,noch,zur,gegen,bis,aber,haben,vor,seine,ihren,jetzt,ihr,dir,etc,bzw,nach,deine,the,warum,machen,0,sowie,am\";','Blacklist für Keywords',NULL,'text',1,0,0,NULL,NULL,NULL),(626,191,'paymentsurchargeadd','s:25:\"Zuschlag für Zahlungsart\";','Bezeichnung proz. Zuschlag für Zahlungsart',NULL,'text',0,0,1,NULL,NULL,NULL),(627,191,'paymentsurchargedev','s:25:\"Abschlag für Zahlungsart\";','Bezeichnung proz. Abschlag für Zahlungsart',NULL,'text',0,0,1,NULL,NULL,NULL),(628,191,'discountnumber','s:11:\"sw-discount\";','Rabatte Bestellnummer',NULL,'text',0,0,1,NULL,NULL,NULL),(629,191,'surchargenumber','s:12:\"sw-surcharge\";','Mindermengen Bestellnummer',NULL,'text',0,0,1,NULL,NULL,NULL),(630,191,'paymentsurchargenumber','s:10:\"sw-payment\";','Zuschlag für Zahlungsart (Bestellnummer)',NULL,'text',0,0,1,NULL,NULL,NULL),(631,190,'maxlivesearchresults','s:1:\"6\";','Anzahl der Ergebnisse in der Livesuche',NULL,'text',0,0,0,NULL,NULL,NULL),(632,191,'ignoreshippingfreeforsurcharges','b:0;','Absolute Zahlungszuschläge für Versandkosten immer berechnen',NULL,'boolean',0,0,0,NULL,NULL,NULL),(633,192,'send_confirm_mail','b:1;','Registrierungsbestätigung in CC an Shopbetreiber schicken',NULL,'boolean',0,0,0,NULL,NULL,NULL),(634,192,'optinnewsletter','b:0;','Double-Opt-In für Newsletter-Anmeldungen',NULL,'boolean',0,0,0,NULL,NULL,NULL),(635,192,'optinvote','b:1;','Double-Opt-In für Artikel-Bewertungen',NULL,'boolean',0,0,0,NULL,NULL,NULL),(636,191,'shippingdiscountnumber','s:16:\"SHIPPINGDISCOUNT\";','Abschlag-Versandregel (Bestellnummer)',NULL,'text',0,0,1,NULL,NULL,NULL),(637,191,'shippingdiscountname','s:15:\"Warenkorbrabatt\";','Abschlag-Versandregel (Bezeichnung)',NULL,'text',0,0,1,NULL,NULL,NULL),(641,192,'orderstatemailack','s:0:\"\";','Bestellstatus - Änderungen CC-Adresse',NULL,'text',0,0,0,NULL,NULL,NULL),(642,247,'premiumshippiungasketselect','s:93:\"MAX(a.topseller) as has_topseller, MAX(at.attr3) as has_comment, MAX(b.esdarticle) as has_esd\";','Erweitere SQL-Abfrage',NULL,'text',1,0,0,NULL,NULL,NULL),(643,247,'premiumshippingnoorder','b:0;','Bestellung bei keiner verfügbaren Versandart blocken',NULL,'boolean',1,0,0,NULL,NULL,NULL),(646,249,'routertolower','b:1;','Nur Kleinbuchstaben in den Urls nutzen',NULL,'boolean',0,0,0,NULL,NULL,NULL),(648,249,'redirectnotfound','b:1;','Bei nicht vorhandenen Kategorien/Artikel auf Startseite umleiten',NULL,'boolean',0,0,0,NULL,NULL,NULL),(649,249,'seometadescription','b:1;','Meta-Description von Artikel/Kategorien aufbereiten',NULL,'boolean',0,0,1,NULL,NULL,NULL),(650,249,'routerremovecategory','b:0;','KategorieID aus Url entfernen',NULL,'boolean',0,0,1,NULL,NULL,NULL),(651,249,'seoqueryblacklist','s:50:\"sPage,sPerPage,sSupplier,sFilterProperties,p,n,s,f\";','SEO-Nofollow Querys',NULL,'text',0,0,0,NULL,NULL,NULL),(652,249,'seoviewportblacklist','s:112:\"login,ticket,tellafriend,note,support,basket,admin,registerFC,newsletter,search,search,account,checkout,register\";','SEO-Nofollow Viewports',NULL,'text',0,0,0,NULL,NULL,NULL),(653,249,'seoremovewhitespaces','b:1;','überflüssige Leerzeichen / Zeilenumbrüchen entfernen',NULL,'boolean',0,0,0,NULL,NULL,NULL),(654,249,'seoremovecomments','b:1;','Html-Kommentare entfernen',NULL,'boolean',0,0,0,NULL,NULL,NULL),(655,249,'seoqueryalias','s:127:\"sSearch=q,\nsPage=p,\nsPerPage=n,\nsSupplier=s,\nsFilterProperties=f,\nsCategory=c,\nsCoreId=u,\nsTarget=t,\nsValidation=v,\nsTemplate=l\";','Query-Aliase',NULL,'textarea',0,0,0,NULL,NULL,NULL),(656,249,'seobacklinkwhitelist','s:54:\"www.shopware.de,\r\nwww.shopware.ag,\r\nwww.shopware-ag.de\";','SEO-Follow Backlinks',NULL,'textarea',0,0,1,NULL,NULL,NULL),(657,249,'seorelcanonical','b:1;','SEO-Canonical-Tags nutzen',NULL,'boolean',0,0,1,NULL,NULL,NULL),(658,249,'routerlastupdate',NULL,'Datum des letzten Updates',NULL,'datetime',0,0,1,NULL,NULL,NULL),(659,249,'routercache','s:5:\"86400\";','SEO-Urls Cachezeit Tabelle',NULL,'text',0,0,0,NULL,NULL,NULL),(661,248,'vatcheckendabled','b:0;','Modul aktivieren',NULL,'boolean',0,0,1,NULL,NULL,NULL),(662,248,'vatcheckadvancednumber','s:0:\"\";','Eigene USt-IdNr. für die Überprüfung',NULL,'text',0,0,0,NULL,NULL,NULL),(663,248,'vatcheckadvanced','b:0;','Erweiterte Überprüfung aktivieren',NULL,'boolean',0,0,1,NULL,NULL,NULL),(664,248,'vatcheckadvancedcountries','s:2:\"AT\";','gültige Länder für erweiterte Überprüfung',NULL,'text',0,0,0,NULL,NULL,NULL),(665,248,'vatcheckrequired','b:0;','USt-IdNr. als Pflichtfeld markieren',NULL,'boolean',0,0,1,NULL,NULL,NULL),(666,248,'vatcheckdebug','b:0;','Erweiterte Fehlerausgabe aktivieren',NULL,'boolean',0,0,1,NULL,NULL,NULL),(667,249,'routerarticletemplate','s:70:\"{sCategoryPath articleID=$sArticle.id}/{$sArticle.id}/{$sArticle.name}\";','SEO-Urls Artikel-Template',NULL,'text',0,0,1,NULL,NULL,NULL),(668,249,'routercategorytemplate','s:41:\"{sCategoryPath categoryID=$sCategory.id}/\";','SEO-Urls Kategorie-Template',NULL,'text',0,0,1,NULL,NULL,NULL),(669,248,'vatchecknoservice','b:1;','Wenn der Service nicht erreichbar ist, nur eine einfache Überprüfung durchführen',NULL,'boolean',0,0,0,NULL,NULL,NULL),(670,249,'seostaticurls','s:50:\"sViewport=cat&sCategory={$sCategoryStart},listing/\";','sonstige SEO-Urls',NULL,'textarea',0,0,1,NULL,NULL,NULL),(671,248,'vatcheckconfirmation','b:0;','Amtliche Bestätigungsmitteilung bei der erweiterten Überprüfung anfordern',NULL,'boolean',0,0,1,NULL,NULL,NULL),(672,248,'vatcheckvalidresponse','s:4:\"A, D\";','Gültige Ergebnisse bei der erweiterten Überprüfung',NULL,'text',0,0,0,NULL,NULL,NULL),(673,119,'shopName','s:15:\"Shopware 4 Demo\";','Name des Shops',NULL,'text',1,0,1,NULL,NULL,NULL),(674,119,'mail','s:16:\"info@example.com\";','Shopbetreiber eMail',NULL,'text',1,0,1,NULL,NULL,NULL),(675,119,'address','s:0:\"\";','Adresse',NULL,'textarea',0,0,1,NULL,NULL,NULL),(676,119,'taxNumber','s:0:\"\";','UStId',NULL,'text',0,0,1,NULL,NULL,NULL),(677,119,'bankAccount','s:0:\"\";','Bankverbindung',NULL,'textarea',0,0,1,NULL,NULL,NULL),(843,119,'captchaColor','s:8:\"51,51,51\";','Schriftfarbe Captcha (R,G,B)',NULL,'text',0,10,1,NULL,NULL,NULL),(844,173,'botBlackList','s:2773:\"antibot;appie;architext;bjaaland;digout4u;echo;fast-webcrawler;ferret;googlebot;gulliver;harvest;htdig;ia_archiver;jeeves;jennybot;linkwalker;lycos;mercator;moget;muscatferret;myweb;netcraft;nomad;petersnews;scooter;slurp;unlost_web_crawler;voila;voyager;webbase;weblayers;wget;wisenutbot;acme.spider;ahoythehomepagefinder;alkaline;arachnophilia;aretha;ariadne;arks;aspider;atn.txt;atomz;auresys;backrub;bigbrother;blackwidow;blindekuh;bloodhound;brightnet;bspider;cactvschemistryspider;cassandra;cgireader;checkbot;churl;cmc;collective;combine;conceptbot;coolbot;core;cosmos;cruiser;cusco;cyberspyder;deweb;dienstspider;digger;diibot;directhit;dnabot;download_express;dragonbot;dwcp;e-collector;ebiness;eit;elfinbot;emacs;emcspider;esther;evliyacelebi;nzexplorer;fdse;felix;fetchrover;fido;finnish;fireball;fouineur;francoroute;freecrawl;funnelweb;gama;gazz;gcreep;getbot;geturl;golem;grapnel;griffon;gromit;hambot;havindex;hometown;htmlgobble;hyperdecontextualizer;iajabot;ibm;iconoclast;ilse;imagelock;incywincy;informant;infoseek;infoseeksidewinder;infospider;inspectorwww;intelliagent;irobot;israelisearch;javabee;jbot;jcrawler;jobo;jobot;joebot;jubii;jumpstation;katipo;kdd;kilroy;ko_yappo_robot;labelgrabber.txt;larbin;legs;linkidator;linkscan;lockon;logo_gif;macworm;magpie;marvin;mattie;mediafox;merzscope;meshexplorer;mindcrawler;momspider;monster;motor;mwdsearch;netcarta;netmechanic;netscoop;newscan-online;nhse;northstar;occam;octopus;openfind;orb_search;packrat;pageboy;parasite;patric;pegasus;perignator;perlcrawler;phantom;piltdownman;pimptrain;pioneer;pitkow;pjspider;pka;plumtreewebaccessor;poppi;portalb;puu;python;raven;rbse;resumerobot;rhcs;roadrunner;robbie;robi;robofox;robozilla;roverbot;rules;safetynetrobot;search_au;searchprocess;senrigan;sgscout;shaggy;shaihulud;sift;simbot;site-valet;sitegrabber;sitetech;slcrawler;smartspider;snooper;solbot;spanner;speedy;spider_monkey;spiderbot;spiderline;spiderman;spiderview;spry;ssearcher;suke;suntek;sven;tach_bw;tarantula;tarspider;techbot;templeton;teoma_agent1;titin;titan;tkwww;tlspider;ucsd;udmsearch;urlck;valkyrie;victoria;visionsearch;vwbot;w3index;w3m2;wallpaper;wanderer;wapspider;webbandit;webcatcher;webcopy;webfetcher;webfoot;weblinker;webmirror;webmoose;webquest;webreader;webreaper;websnarf;webspider;webvac;webwalk;webwalker;webwatch;whatuseek;whowhere;wired-digital;wmir;wolp;wombat;worm;wwwc;wz101;xget;awbot;bobby;boris;bumblebee;cscrawler;daviesbot;ezresult;gigabot;gnodspider;internetseer;justview;linkbot;linkchecker;nederland.zoek;perman;pompos;pooodle;redalert;shoutcast;slysearch;ultraseek;webcompass;yandex;robot;yahoo;bot;psbot;crawl;RSS;larbin;ichiro;Slurp;msnbot;bot;Googlebot;ShopWiki;Bot;WebAlta;;abachobot;architext;ask jeeves;frooglebot;googlebot;lycos;spider;HTTPClient\";','Bot-Liste',NULL,'textarea',1,20,0,NULL,NULL,NULL),(847,78,'baseFile','s:12:\"shopware.php\";','Base-File',NULL,'text',1,0,0,NULL,NULL,NULL),(848,253,'esdKey','s:33:\"552211cce724117c3178e3d22bec532ec\";','ESD-Key',NULL,'text',1,0,0,NULL,NULL,NULL),(849,147,'blogdetailtemplates','s:10:\":Standard;\";','Verfügbare Templates Blog-Detailseite',NULL,'textarea',0,0,0,NULL,NULL,NULL),(850,190,'fuzzysearchdistance','i:20;','Maximal-Distanz für Unscharfe Suche in Prozent',NULL,'number',1,0,1,NULL,NULL,NULL),(851,190,'fuzzysearchexactmatchfactor','i:100;','Faktor für genaue Treffer',NULL,'number',1,0,1,NULL,NULL,NULL),(852,190,'fuzzysearchlastupdate','s:19:\"2010-01-01 00:00:00\";','Datum des letzten Updates',NULL,'datetime',0,0,0,NULL,NULL,NULL),(853,190,'fuzzysearchmatchfactor','i:5;','Faktor für unscharfe Treffer',NULL,'number',1,0,1,NULL,NULL,NULL),(854,190,'fuzzysearchmindistancentop','i:20;','Minimale Relevanz zum Topartikel in Prozent',NULL,'number',1,0,1,NULL,NULL,NULL),(855,190,'fuzzysearchpartnamedistancen','i:25;','Maximal-Distanz für Teilnamen in Prozent',NULL,'number',1,0,1,NULL,NULL,NULL),(856,190,'fuzzysearchpatternmatchfactor','i:50;','Faktor für Teiltreffer',NULL,'number',1,0,1,NULL,NULL,NULL),(857,190,'fuzzysearchpricefilter','s:47:\"5|10|20|50|100|300|600|1000|1500|2500|3500|5000\";','Auswahl Preisfilter',NULL,'text',1,0,1,NULL,NULL,NULL),(858,190,'fuzzysearchresultsperpage','i:12;','Ergebnisse pro Seite',NULL,'number',1,0,1,NULL,NULL,NULL),(859,190,'fuzzysearchselectperpage','s:11:\"12|24|36|48\";','Auswahl Ergebnisse pro Seite',NULL,'text',1,0,1,NULL,NULL,NULL),(860,253,'esdMinSerials','i:5;','ESD-Min-Serials',NULL,'text',1,0,0,NULL,NULL,NULL),(867,255,'alsoBoughtShow','b:1;','Anzeigen der Kunden-kauften-auch-Empfehlung',NULL,'checkbox',1,1,1,NULL,NULL,NULL),(868,255,'alsoBoughtPerPage','i:4;','Anzahl an Artikel pro Seite in der Liste',NULL,'number',1,2,1,NULL,NULL,NULL),(869,255,'alsoBoughtMaxPages','i:10;','Maximale Anzahl von Seiten in der Liste',NULL,'number',1,3,1,NULL,NULL,NULL),(870,255,'similarViewedShow','b:1;','Anzeigen der Kunden-schauten-sich-auch-an-Empfehlung',NULL,'checkbox',1,5,1,NULL,NULL,NULL),(871,255,'similarViewedPerPage','i:4;','Anzahl an Artikel pro Seite in der Liste',NULL,'number',1,6,1,NULL,NULL,NULL),(872,255,'similarViewedMaxPages','i:10;','Maximale Anzahl von Seiten in der Liste',NULL,'number',1,7,1,NULL,NULL,NULL),(873,256,'revocationNotice','b:1;','Zeige Widerrufsbelehrung an',NULL,'boolean',0,0,1,NULL,NULL,'a:0:{}'),(874,256,'newsletter','b:0;','Zeige Newsletter-Registrierung an',NULL,'boolean',0,0,1,NULL,NULL,'a:0:{}'),(875,256,'bankConnection','b:0;','Zeige Bankverbindungshinweis an',NULL,'boolean',0,0,1,NULL,NULL,'a:0:{}'),(876,256,'additionalFreeText','b:0;','Zeige weiteren Hinweis an','Snippet: ConfirmTextOrderDefault','boolean',0,0,1,NULL,NULL,'a:0:{}'),(877,256,'commentVoucherArticle','b:0;','Zeige weitere Optionen an','Artikel hinzuf&uuml;gen, Gutschein hinzuf&uuml;gen, Kommentarfunktion','boolean',0,0,1,NULL,NULL,'a:0:{}'),(879,256,'premiumArticles','b:0;','Zeige Prämienartikel an',NULL,'boolean',0,0,1,NULL,NULL,'a:0:{}'),(880,256,'countryNotice','b:1;','Zeige Länder-Beschreibung an',NULL,'boolean',0,0,1,NULL,NULL,'a:0:{}'),(881,256,'nettoNotice','b:0;','Zeige Hinweis für Netto-Bestellungen an',NULL,'boolean',0,0,1,NULL,NULL,'a:0:{}'),(882,256,'basketHeaderColor','s:7:\"#f5f5f5\";','Warenkorbkopf Hintergrundfarbe','(Hex-Code)','color',0,1,1,NULL,NULL,'a:0:{}'),(883,256,'basketHeaderFontColor','s:4:\"#000\";','Warenkorbkopf Textfarbe','(Hex-Code)','color',0,1,1,NULL,NULL,'a:0:{}'),(884,256,'basketTableColor','s:7:\"#f5f5f5\";','Warenkorbtabelle Hintergrundfarbe','(Hex-Code)','color',0,1,1,NULL,NULL,'a:0:{}'),(885,256,'mainFeatures','s:290:\"{if $sBasketItem.additional_details.properties}\n    {$sBasketItem.additional_details.properties}\n{elseif $sBasketItem.additional_details.description}\n    {$sBasketItem.additional_details.description}\n{else}\n    {$sBasketItem.additional_details.description_long|strip_tags|truncate:50}\n{/if}\";','Template für die wesentliche Merkmale',NULL,'textarea',0,1,1,NULL,NULL,'a:0:{}'),(886,259,'backendTimeout','i:7200;','Timeout',NULL,'interval',1,0,0,NULL,NULL,'a:0:{}'),(887,259,'backendLocales','a:2:{i:0;i:1;i:1;i:2;}','Auswählbare Sprachen',NULL,'select',1,0,0,NULL,NULL,'a:2:{s:5:\"store\";s:11:\"base.Locale\";s:11:\"multiSelect\";b:1;}'),(888,249,'routerblogtemplate','s:71:\"{sCategoryPath categoryID=$blogArticle.categoryId}/{$blogArticle.title}\";','SEO-Urls Blog-Template',NULL,'text',0,0,1,NULL,NULL,NULL),(889,256,'detailModal','b:1;','Artikeldetails in Modalbox anzeigen',NULL,'boolean',0,0,1,NULL,NULL,NULL),(890,260,'tsid','s:0:\"\";','Trusted-Shops-ID','','text',0,0,1,NULL,NULL,NULL),(891,144,'blogcategory','s:0:\"\";','Blog-Einträge aus Kategorie (ID) auf Startseite anzeigen (Nur alte Templatebasis)','','text',0,0,1,NULL,NULL,NULL),(892,144,'bloglimit','s:1:\"3\";','Anzahl Blog-Einträge auf Startseite','','text',0,0,1,NULL,NULL,NULL),(893,119,'company','s:0:\"\";','Firma',NULL,'textfield',0,0,1,NULL,NULL,NULL),(894,249,'routercampaigntemplate','s:64:\"{sCategoryPath categoryID=$campaign.categoryId}/{$campaign.name}\";','SEO-Urls Landingpage-Template',NULL,'text',0,0,1,NULL,NULL,NULL),(897,191,'paymentSurchargeAbsolute','s:25:\"Zuschlag für Zahlungsart\";','Pauschaler Aufschlag für Zahlungsart (Bezeichnung)',NULL,'text',1,0,1,NULL,NULL,NULL),(898,191,'paymentSurchargeAbsoluteNumber','s:19:\"sw-payment-absolute\";','Pauschaler Aufschlag für Zahlungsart (Bestellnummer)',NULL,'text',1,0,1,NULL,NULL,NULL),(899,262,'StoreApiUrl','s:33:\"http://store.shopware.de/storeApi\";','Store API Url',NULL,'text',0,0,1,NULL,NULL,'a:0:{}'),(900,263,'MailCampaignsPerCall','i:1000;','Anzahl der Mails, die pro Cronjob-Aufruf versendet werden',NULL,'number',1,0,0,NULL,NULL,NULL),(901,189,'own_filter','N;','Eigener Filter',NULL,'textarea',0,0,0,NULL,NULL,NULL),(905,157,'accountPasswordCheck','b:1;','Aktuelles Passwort bei Passwort-Änderungen abfragen',NULL,'boolean',1,0,0,NULL,NULL,NULL),(906,189,'refererCheck','b:1;','Referrer-Check aktivieren',NULL,'boolean',1,0,0,NULL,NULL,NULL),(907,249,'preferBasePath','b:1;','Shopware-Kernel aus URL entfernen ','Entfernt \"shopware.php\" aus URLs. Verhindert, dass Suchmaschinen fälschlicherweise DuplicateContent im Shop erkennen. Wenn kein ModRewrite zur Verfügung steht, muss dieses Häcken entfernt werden.','boolean',1,0,0,NULL,NULL,NULL),(908,0,'redirectDownload','b:0;','Auf Download-Datei direkt verlinken',NULL,'boolean',0,0,0,NULL,NULL,NULL),(909,264,'useShortDescriptionInListing','b:0;','In Listen-Ansichten immer die Artikel-Kurzbeschreibung anzeigen','Beeinflusst: Topseller, Kategorielisten, Einkaufswelten','checkbox',0,0,0,NULL,NULL,NULL),(910,265,'defaultPasswordEncoder','s:4:\"Auto\";','Passwort-Algorithmus','Mit welchem Algorithmus sollen die Passwörter verschlüsselt werden?','combo',1,0,0,NULL,NULL,'a:5:{s:8:\"editable\";b:0;s:10:\"valueField\";s:2:\"id\";s:12:\"displayField\";s:2:\"id\";s:13:\"triggerAction\";s:3:\"all\";s:5:\"store\";s:20:\"base.PasswordEncoder\";}'),(911,265,'liveMigration','i:1;','Live Migration','Sollen vorhandene Benutzer-Passwörter mit anderen Passwort-Algorithmen beim nächsten Einloggen erneut gehasht werden? Das geschieht voll automatisch im Hintergrund, so dass die Passwörter sukzessiv auf einen neuen Algorithmus umgestellt werden können.','checkbox',1,0,0,NULL,NULL,NULL),(912,265,'bcryptCost','i:10;','Bcrypt-Rechenaufwand','Je höher der Rechenaufwand, desto aufwändiger ist es für einen möglichen Angreifer, ein Klartext-Passwort für das verschlüsselte Passwort zu berechnen.','number',1,0,0,NULL,NULL,'a:2:{s:8:\"minValue\";s:1:\"4\";s:8:\"maxValue\";s:2:\"31\";}'),(913,265,'sha256iterations','i:100000;','Sha256-Iterationen','Je höher der Rechenaufwand, desto aufwändiger ist es für einen möglichen Angreifer, ein Klartext-Passwort für das verschlüsselte Passwort zu berechnen.','number',1,0,0,NULL,NULL,'a:2:{s:8:\"minValue\";s:1:\"1\";s:8:\"maxValue\";s:7:\"1000000\";}'),(914,0,'topSellerActive','i:1;','','','',1,0,0,NULL,NULL,''),(915,0,'topSellerValidationTime','i:100;','','','',1,0,0,NULL,NULL,''),(916,0,'topSellerRefreshStrategy','i:3;','','','',1,0,0,NULL,NULL,''),(917,0,'topSellerPseudoSales','i:1;','','','',1,0,0,NULL,NULL,''),(918,0,'seoRefreshStrategy','i:3;','','','',1,0,0,NULL,NULL,''),(919,0,'searchRefreshStrategy','i:3;','','','',1,0,0,NULL,NULL,''),(920,0,'showSupplierInCategories','i:1;','','','',1,0,0,NULL,NULL,''),(921,0,'propertySorting','i:1;','','','',1,0,0,NULL,NULL,''),(922,0,'disableShopwareStatistics','i:0;','','','',1,0,0,NULL,NULL,''),(923,0,'disableArticleNavigation','i:0;','','','',1,0,0,NULL,NULL,''),(924,0,'similarRefreshStrategy','i:3;','','','',1,0,0,NULL,NULL,''),(925,0,'similarActive','i:1;','','','',1,0,0,NULL,NULL,''),(926,0,'similarValidationTime','i:100;','','','',1,0,0,NULL,NULL,''),(927,144,'moveBatchModeEnabled','b:0;','Kategorien im Batch-Modus verschieben',NULL,'checkbox',0,0,0,NULL,NULL,'a:0:{}'),(928,0,'traceSearch','i:1;','','','',1,0,0,NULL,NULL,''),(929,262,'DummyPluginUrl','s:71:\"http://store.shopware.de/downloads/free/plugin/%name%/version/%version%\";','Dummyplugin Download Url',NULL,'text',0,0,1,NULL,NULL,NULL),(930,0,'displayFiltersInListings','i:1;','','','boolean',1,0,0,NULL,NULL,''),(931,0,'displayFilterArticleCount','i:1;','','','boolean',1,0,0,NULL,NULL,''),(932,0,'displayFiltersOnDetailPage','i:1;','','','boolean',1,0,0,NULL,NULL,''),(933,266,'admin','b:0;','Admin-View','Cache bei Artikel-Vorschau und Schnellbestellung deaktivieren','boolean',0,0,0,NULL,NULL,'a:0:{}'),(934,266,'cacheControllers','s:326:\"frontend/listing 3600\r\nfrontend/index 3600\r\nfrontend/detail 3600\r\nfrontend/campaign 14400\r\nwidgets/listing 14400\r\nfrontend/custom 14400\r\nfrontend/sitemap 14400\r\nfrontend/blog 14400\r\nwidgets/index 3600\r\nwidgets/checkout 3600\r\nwidgets/compare 3600\r\nwidgets/emotion 14400\r\nwidgets/recommendation 14400\r\nwidgets/lastArticles 3600\n\";','Cache-Controller / Zeiten',NULL,'textarea',0,0,0,NULL,NULL,'a:0:{}'),(935,266,'noCacheControllers','s:166:\"frontend/listing price\nfrontend/index price\nfrontend/detail price\nwidgets/lastArticles detail\nwidgets/checkout checkout\nwidgets/compare compare\nwidgets/emotion price\n\";','NoCache-Controller / Tags',NULL,'textarea',0,0,0,NULL,NULL,'a:0:{}'),(936,266,'proxy','N;','Alternative Proxy-Url','Link zum Http-Proxy mit „http://“ am Anfang.','text',0,0,0,NULL,NULL,'a:0:{}'),(937,266,'proxyPrune','b:1;','Proxy-Prune aktivieren','Das automatische Leeren des Caches aktivieren.','boolean',0,0,0,NULL,NULL,'a:0:{}'),(938,253,'downloadAvailablePaymentStatus','a:1:{i:0;i:12;}','Download freigeben bei Zahlstatus','Definieren Sie hier die Zahlstatus bei dem ein Download des ESD-Artikels möglich ist.','select',1,3,0,NULL,NULL,'a:4:{s:5:\"store\";s:18:\"base.PaymentStatus\";s:12:\"displayField\";s:11:\"description\";s:10:\"valueField\";s:2:\"id\";s:11:\"multiSelect\";b:1;}'),(939,144,'forceArticleMainImageInListing','b:0;','In Listen-Ansichten immer das Artikel-Vorschaubild anzeigen',NULL,'checkbox',0,0,0,NULL,NULL,'a:0:{}'),(940,256,'sendOrderMail','b:1;','Bestell-Abschluss-eMail versenden',NULL,'checkbox',0,0,1,NULL,NULL,'a:0:{}'),(941,249,'forceCanonicalHttp','b:1;','Canonical immer mit HTTP','Diese Option greift nicht, wenn die Option \"Überall SSL verwenden\" aktiviert ist.','boolean',0,0,1,NULL,NULL,NULL),(942,157,'requirePhoneField','b:1;','Telefon als Pflichtfeld behandeln','Beachten Sie, dass Sie die Sternchenangabe über den Textbaustein RegisterLabelPhone konfigurieren müssen','checkbox',0,0,1,NULL,NULL,'a:0:{}'),(943,267,'sepaCompany','s:0:\"\";','Firmenname',NULL,'text',0,1,1,NULL,NULL,NULL),(944,267,'sepaHeaderText','s:0:\"\";','Überschrift',NULL,'text',0,2,1,NULL,NULL,NULL),(945,267,'sepaSellerId','s:0:\"\"','Gläubiger-Identifikationsnummer',NULL,'text',0,3,1,NULL,NULL,NULL),(946,267,'sepaSendEmail','i:1;','SEPA Mandat automatisch versenden',NULL,'checkbox',0,4,1,NULL,NULL,NULL),(947,267,'sepaShowBic','i:1;','SEPA BIC Feld anzeigen',NULL,'checkbox',0,5,1,NULL,NULL,NULL),(948,267,'sepaRequireBic','i:1;','SEPA BIC Feld erforderlich',NULL,'checkbox',0,6,1,NULL,NULL,NULL),(949,267,'sepaShowBankName','i:1;','SEPA Kreditinstitut Feld anzeigen',NULL,'checkbox',0,7,1,NULL,NULL,NULL),(950,267,'sepaRequireBankName','i:1;','SEPA Kreditinstitut Feld erforderlich',NULL,'checkbox',0,8,1,NULL,NULL,NULL),(951,256,'paymentEditingInCheckoutPage','b:0;','Lastschriftdaten im Checkout editierbar',NULL,'boolean',0,1,1,NULL,NULL,NULL),(952,249,'seoSupplier','b:1;','Hersteller SEO-Informationen anwenden',NULL,'checkbox',0,0,1,NULL,NULL,'a:0:{}'),(953,249,'seoSupplierRouteTemplate','s:46:\"{createSupplierPath supplierID=$sSupplier.id}/\";','SEO-Urls Hersteller-Template',NULL,'text',0,0,1,NULL,NULL,'a:0:{}'),(954,268,'logMail','i:0;','Fehler an Shopbetreiber senden',NULL,'checkbox',0,0,0,NULL,NULL,'a:0:{}'),(955,173,'maximumReferrerAge','s:2:\"90\";','Maximales Alter für Referrer Statistikdaten','Alte Referrer Daten werden über den Aufräumen Cronjob gelöscht, falls aktiv','text',0,0,1,NULL,NULL,'a:0:{}'),(956,173,'maximumImpressionAge','s:2:\"90\";','Maximales Alter für Artikel-Impressions','Alte Impression Daten werden über den Aufräumen Cronjob gelöscht, falls aktiv','text',0,0,1,NULL,NULL,'a:0:{}'),(957,255,'showTellAFriend','b:0;','Artikel weiterempfehlen anzeigen',NULL,'boolean',0,7,1,NULL,NULL,NULL),(958,102,'time','i:15;','Speicherfrist in Tagen',NULL,'number',0,0,0,NULL,NULL,'a:0:{}'),(959,253,'esdDownloadStrategy','i:1;','Downloadoption für ESD Dateien','<b>Achtung</b>: Diese Einstellung könnte die Funktionalität der ESD Downloads beeinträchtigen. Ändern Sie hier nur die Einstellung falls Sie wissen, was Sie tun.<br><br>Downloadstrategie für ESD Dateien.<br><b>Link</b>: Unter umständen Unsicher, da der Link von Außen eingesehen werden kann.<br><b>PHP</b>: Der Link kann nicht eingesehen werden. PHP liefert die Datei aus. Dies kann zu Problemen bei größeren Dateien führen.<br><b>X-Sendfile</b>: Unterstütz größere Dateien und ist sicher. Benötigt das X-Sendfile Apache Module. <br><b>X-Accel</b>: Äquivalent zum X-Sendfile. Benötigt das Nginx Modul X-Accel.','select',1,4,0,NULL,NULL,'a:1:{s:5:\"store\";a:4:{i:0;a:2:{i:0;i:0;i:1;s:4:\"Link\";}i:1;a:2:{i:0;i:1;i:1;s:3:\"PHP\";}i:2;a:2:{i:0;i:2;i:1;s:20:\"X-Sendfile (Apache2)\";}i:3;a:2:{i:0;i:3;i:1;s:15:\"X-Accel (Nginx)\";}}}'),(960,269,'update-api-endpoint','s:34:\"http://update-api.shopware.com/v1/\";','API Endpoint',NULL,'text',1,0,0,NULL,NULL,'a:1:{s:6:\"hidden\";b:1;}'),(961,269,'update-channel','s:6:\"stable\";','Channel',NULL,'select',0,0,0,NULL,NULL,'a:1:{s:5:\"store\";a:4:{i:0;a:2:{i:0;s:6:\"stable\";i:1;s:6:\"stable\";}i:1;a:2:{i:0;s:4:\"beta\";i:1;s:4:\"beta\";}i:2;a:2:{i:0;s:2:\"rc\";i:1;s:2:\"rc\";}i:3;a:2:{i:0;s:3:\"dev\";i:1;s:3:\"dev\";}}}'),(962,269,'update-code','s:0:\"\";','Code',NULL,'text',0,0,0,NULL,NULL,'a:0:{}'),(963,269,'update-fake-version','N;','Fake Version',NULL,'text',0,0,0,NULL,NULL,'a:1:{s:6:\"hidden\";b:1;}'),(964,269,'update-feedback-api-endpoint','s:43:\"http://feedback.update-api.shopware.com/v1/\";','Feedback API Endpoint',NULL,'text',1,0,0,NULL,NULL,'a:1:{s:6:\"hidden\";b:1;}'),(965,269,'update-send-feedback','b:1;','Send feedback',NULL,'boolean',0,0,0,NULL,NULL,'a:0:{}'),(966,269,'update-unique-id','s:0:\"\";','Unique identifier',NULL,'text',0,0,0,NULL,NULL,'a:1:{s:6:\"hidden\";b:1;}'),(967,269,'update-verify-signature','b:1;','Verify Signature',NULL,'boolean',0,0,0,NULL,NULL,'a:1:{s:6:\"hidden\";b:1;}');
/*!40000 ALTER TABLE `s_core_config_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_config_form_translations`
--

DROP TABLE IF EXISTS `s_core_config_form_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_config_form_translations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` int(11) unsigned NOT NULL,
  `locale_id` int(11) unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_config_form_translations`
--

LOCK TABLES `s_core_config_form_translations` WRITE;
/*!40000 ALTER TABLE `s_core_config_form_translations` DISABLE KEYS */;
INSERT INTO `s_core_config_form_translations` VALUES (1,77,2,'Shop settings',NULL),(2,78,2,'System',NULL),(3,79,2,'Items',NULL),(4,80,2,'Frontend',NULL),(5,82,2,'Interfaces',NULL),(6,83,2,'Payment methods',NULL),(7,84,2,'Item numbers',NULL),(8,86,2,'Other VAT rates',NULL),(9,87,2,'Price groups',NULL),(10,88,2,'Price units',NULL),(11,89,2,'Item open text fields',NULL),(12,90,2,'Customer reviews',NULL),(13,92,2,'Additional settings',NULL),(14,102,2,'Recently viewed items',NULL),(15,118,2,'Shops',NULL),(16,119,2,'Basic information',NULL),(17,120,2,'Currencies',NULL),(18,121,2,'Localizations',NULL),(19,122,2,'Templates',NULL),(20,123,2,'Taxes',NULL),(21,124,2,'Mailers',NULL),(22,125,2,'Number ranges',NULL),(23,126,2,'Customer groups',NULL),(24,127,2,'Caching',NULL),(25,128,2,'Service',NULL),(26,133,2,'Advanced menu',NULL),(27,134,2,'Item comparison',NULL),(28,135,2,'Tag cloud',NULL),(29,144,2,'Categories / lists',NULL),(30,145,2,'Top seller / novelties',NULL),(31,146,2,'Cross selling / item details',NULL),(32,147,2,'Shopping cart / item details',NULL),(33,157,2,'Login / registration',NULL),(34,173,2,'Statstics',NULL),(35,174,2,'Google Analytics',NULL),(36,175,2,'HttpCache',NULL),(37,176,2,'Log',NULL),(38,177,2,'Debug',NULL),(39,180,2,'Countries',NULL),(40,189,2,'Input filter',NULL),(41,190,2,'Search',NULL),(42,191,2,'Discounts / surcharges',NULL),(43,192,2,'Email settings',NULL),(44,247,2,'Shipping costs module',NULL),(45,248,2,'Check VAT ID number',NULL),(46,249,2,'SEO / router settings',NULL),(48,251,2,'Country areas',NULL),(50,253,2,'ESD',NULL),(51,255,2,'Item recommendations',NULL),(52,256,2,'Checkout',NULL),(53,257,2,'Shop page groups',NULL),(54,258,2,'Cronjobs',NULL),(55,259,2,'Backend',NULL),(56,261,2,'PDF document creation',NULL),(57,262,2,'Store API',NULL),(58,264,2,'Legacy options',NULL),(59,265,2,'Passwords',NULL),(60,260,2,'Trusted shops','\r\n<style type=\"text/css\">\r\n    body { padding: 10px; }\r\n    h2 { margin: 0 0 .5em; }\r\n    p { margin: 0 0 1.5em }\r\n    .logo { margin: 1em; }\r\n    .logo img { display: block; width: 300px; height: 140px; margin: 0 auto }\r\n</style>\r\n\r\n<div class=\"logo\">\r\n	<img src=\'data:image/gif;base64,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\r\nOw==\' alt=\"Trusted Shops Logo\">\r\n</div>\r\n\r\n<div class=\"info\">\r\n	<h2>Seal of approval and buyer protection</h2>\r\n	<p>\r\n		Trusted Shops certifies online shops by carefully checking a SET of quality criteria before awarding the European trust mark. With the combination of Trusted Shop\'s money-back guarantee and the seller rating system you are able to order online with confidence.\r\n	</p>\r\n\r\n\r\n	<h2>More trust means more turnover!</h2>\r\n	<p>\r\n		The Trusted Shops Seal of Approval is optimal for building the trust of your online customers. Confidence increases the readiness of your customers to buy from you.\r\n	</p>\r\n\r\n	<h2>Fewer abandoned shopping carts</h2>\r\n	<p>\r\n		You offer your online customers a strong argument: the Trusted Shops Buyer Protection. With this additional security, fewer purchases will be cancelled.\r\n	</p>\r\n\r\n	<h2>Profitable and sustainable customer relationships</h2>\r\n	<p>\r\n		The Trusted Shops Seal of Approval with Buyer Protection is a sustainable quality feature for safe shopping on the Web for many online shoppers. First-time buyers become regular customers.\r\n	</p>\r\n	<div class=\"register\">\r\n		<a class=\"button\" href=\"http://www.trustedshops.de/shopbetreiber/index.html?et_cid=14&et_lid=29818\" target=\"_blank\">\r\n			Get informed and sign up!\r\n		</a>\r\n	</div>\r\n</div>'),(61,267,2,'SEPA configuration',NULL);
/*!40000 ALTER TABLE `s_core_config_form_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_config_forms`
--

DROP TABLE IF EXISTS `s_core_config_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_config_forms` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `position` int(11) NOT NULL,
  `scope` int(11) unsigned NOT NULL,
  `plugin_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `plugin_id` (`plugin_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=270 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_config_forms`
--

LOCK TABLES `s_core_config_forms` WRITE;
/*!40000 ALTER TABLE `s_core_config_forms` DISABLE KEYS */;
INSERT INTO `s_core_config_forms` VALUES (77,NULL,'Base','Shopeinstellungen',NULL,0,0,NULL),(78,NULL,'Core','System',NULL,10,0,NULL),(79,NULL,'Product','Artikel',NULL,20,0,NULL),(80,NULL,'Frontend','Storefront',NULL,30,0,NULL),(82,NULL,'Interface','Schnittstellen',NULL,50,0,NULL),(83,NULL,'Payment','Zahlungsarten',NULL,60,0,NULL),(84,79,'Product29','Artikelnummern',NULL,1,0,NULL),(86,79,'Product35','Sonstige MwSt.-Sätze',NULL,4,1,NULL),(87,79,'PriceGroup','Preisgruppen',NULL,5,0,NULL),(88,79,'Unit','Preiseinheiten',NULL,6,0,NULL),(89,79,'Attribute','Artikel-Freitextfelder',NULL,7,0,NULL),(90,80,'Rating','Artikelbewertungen',NULL,8,0,NULL),(92,NULL,'Other','Weitere Einstellungen',NULL,60,0,NULL),(102,80,'LastArticles','Artikelverlauf','',0,1,23),(118,77,'Shop','Shops',NULL,0,0,NULL),(119,77,'MasterData','Stammdaten',NULL,10,1,NULL),(120,77,'Currency','Währungen',NULL,20,0,NULL),(121,77,'Locale','Lokalisierungen',NULL,30,0,NULL),(122,77,'Template','Templates',NULL,40,0,NULL),(123,77,'Tax','Steuern',NULL,50,0,NULL),(124,77,'Mail','Mailer',NULL,60,1,NULL),(125,77,'Number','Nummernkreise',NULL,70,0,NULL),(126,77,'CustomerGroup','Kundengruppen',NULL,80,0,NULL),(128,78,'Service','Wartung',NULL,20,0,NULL),(133,80,'AdvancedMenu','Erweitertes Menü','',0,1,29),(134,80,'Compare','Artikelvergleich',NULL,0,1,20),(135,80,'TagCloud','Schlagwortwolke','',0,1,34),(144,80,'Frontend30','Kategorien / Listen',NULL,1,0,NULL),(145,80,'Frontend76','Topseller / Neuheiten',NULL,2,0,NULL),(146,80,'Frontend77','Cross-Selling / Ähnliche Art.',NULL,3,0,NULL),(147,80,'Frontend79','Warenkorb / Artikeldetails',NULL,5,1,NULL),(157,80,'Frontend33','Anmeldung / Registrierung',NULL,0,1,NULL),(173,78,'Statistics','Statistiken','',0,1,31),(174,82,'Google','Google Analytics','',0,1,26),(180,77,'Country','Länder',NULL,50,0,NULL),(189,78,'InputFilter','InputFilter','',0,0,35),(190,80,'Search','Suche',NULL,4,0,NULL),(191,80,'Frontend71','Rabatte / Zuschläge',NULL,5,1,NULL),(192,80,'Frontend60','eMail-Einstellungen',NULL,10,0,NULL),(247,80,'Frontend93','Versandkosten-Modul',NULL,11,0,NULL),(248,80,'Frontend101','USt-IdNr. Überprüfung',NULL,11,1,NULL),(249,80,'Frontend100','SEO/Router-Einstellungen',NULL,12,1,NULL),(251,77,'CountryArea','Länder-Zonen',NULL,51,0,NULL),(253,79,'Esd','ESD',NULL,0,0,NULL),(255,80,'Recommendation','Artikelempfehlungen',NULL,8,1,NULL),(256,80,'Checkout','Bestellabschluss',NULL,0,1,NULL),(257,77,'PageGroup','Shopseiten-Gruppen',NULL,90,0,NULL),(258,78,'CronJob','Cronjobs',NULL,50,0,NULL),(259,78,'Auth','Backend','',0,0,36),(260,82,'TrustedShop','Trusted-Shops','\r\n<style type=\"text/css\">\r\n    body { padding: 10px; }\r\n    h2 { margin: 0 0 .5em; }\r\n    p { margin: 0 0 1.5em }\r\n    .logo { margin: 1em; }\r\n    .logo img { display: block; width: 300px; height: 140px; margin: 0 auto }\r\n</style>\r\n\r\n<div class=\"logo\">\r\n	<img src=\'data:image/gif;base64,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\r\nOw==\' alt=\"Trusted Shops Logo\">\r\n</div>\r\n\r\n<div class=\"info\">\r\n	<h2>Gütesiegel und Käuferschutz</h2>\r\n	<p>\r\n		Trusted Shops ist das bekannte Internet-Gütesiegel für Online-Shops mit Käuferschutz für IhreKunden. Bei einer Zertifizierung wird Ihr Shop umfassenden Tests unterzogen. Diese Prüfung mit mehr als 100 Einzelkriterien orientiert sich an den Forderungen von Verbraucherschützern sowie dem nationalen und europäischen Recht.\r\n	</p>\r\n\r\n\r\n	<h2>Mehr Umsatz durch mehr Vertrauen!</h2>\r\n	<p>\r\n		Das Trusted Shops Gütesiegel ist optimal, um das Vertrauen Ihrer Online-Kunden zu steigern. Vertrauen steigert die Bereitschaft Ihrer Kunden, bei Ihnen einzukaufen.\r\n	</p>\r\n\r\n	<h2>Weniger Kaufabbrüche</h2>\r\n	<p>\r\n		Sie bieten Ihren Online-Kunden ein starkes Argument: Den Trusted Shops Käuferschutz. Durch diese zusätzliche Sicherheit werden weniger Einkäufe abgebrochen.\r\n	</p>\r\n\r\n	<h2>Ertragreiche und nachhaltige Kundenbeziehung</h2>\r\n	<p>\r\n		Das Trusted Shops Gütesiegel mit Käuferschutz ist für viele Online-Shopper ein nachhaltiges Qualitätsmerkmal für sicheres Einkaufen im Web. Aus Einmalkäufern werden Stammkunden.\r\n	</p>\r\n	<div class=\"register\">\r\n		<a class=\"button\" href=\"http://www.trustedshops.de/shopbetreiber/index.html?et_cid=14&et_lid=29818\" target=\"_blank\">\r\n			Informieren und anmelden!\r\n		</a>\r\n	</div>\r\n</div>',2,0,NULL),(261,77,'Document','PDF-Belegerstellung',NULL,90,0,NULL),(262,92,'StoreApi','StoreApi',NULL,0,0,45),(263,92,'Newsletter','Newsletter',NULL,0,0,NULL),(264,92,'LegacyOptions','Abwärtskompatibilität',NULL,0,0,NULL),(265,78,'Passwörter','Passwörter',NULL,0,0,49),(266,78,'HttpCache','Frontend cache (HTTP cache)',NULL,0,0,52),(267,80,'SEPA','SEPA-Konfiguration',NULL,0,1,NULL),(268,78,'Log','Log',NULL,0,0,2),(269,78,'SwagUpdate','Shopware Auto Update',NULL,0,0,55);
/*!40000 ALTER TABLE `s_core_config_forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_config_mails`
--

DROP TABLE IF EXISTS `s_core_config_mails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_config_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stateId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `frommail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fromname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `contentHTML` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ishtml` int(1) NOT NULL,
  `attachment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mailtype` int(11) NOT NULL DEFAULT '1',
  `context` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `stateId` (`stateId`),
  CONSTRAINT `s_core_config_mails_ibfk_1` FOREIGN KEY (`stateId`) REFERENCES `s_core_states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_config_mails`
--

LOCK TABLES `s_core_config_mails` WRITE;
/*!40000 ALTER TABLE `s_core_config_mails` DISABLE KEYS */;
INSERT INTO `s_core_config_mails` VALUES (1,NULL,'sREGISTERCONFIRMATION','{config name=mail}','{config name=shopName}','Ihre Anmeldung bei {config name=shopName}','Hallo {salutation} {firstname} {lastname},\n \nvielen Dank für Ihre Anmeldung in unserem Shop.\n \nSie erhalten Zugriff über Ihre eMail-Adresse {sMAIL}\nund dem von Ihnen gewählten Kennwort.\n \nSie können sich Ihr Kennwort jederzeit per eMail erneut zuschicken lassen.\n \nMit freundlichen Grüßen,\n \nIhr Team von {config name=shopName}','<div style=\"font-family:arial; font-size:12px;\">\n<img src=\"#\" alt=\"Logo\" />\n<p>\nHallo {salutation} {firstname} {lastname},<br/><br/>\n \nvielen Dank für Ihre Anmeldung in unserem Shop.<br/><br/>\n \nSie erhalten Zugriff über Ihre eMail-Adresse <strong>{sMAIL}</strong><br/>\nund dem von Ihnen gewählten Kennwort.<br/><br/>\n \nSie können sich Ihr Kennwort jederzeit per eMail erneut zuschicken lassen.<br/><br/>\n \nMit freundlichen Grüßen,<br/><br/>\n \nIhr Team von {config name=shopName}\n</p>\n</div>',1,'',2,'a:30:{s:5:\"sShop\";s:7:\"Deutsch\";s:8:\"sShopURL\";s:27:\"http://trunk.qa.shopware.in\";s:7:\"sConfig\";a:0:{}s:5:\"sMAIL\";s:14:\"xy@example.org\";s:7:\"country\";s:1:\"2\";s:13:\"customer_type\";s:7:\"private\";s:10:\"salutation\";s:4:\"Herr\";s:9:\"firstname\";s:8:\"Banjimen\";s:8:\"lastname\";s:6:\"Ercmer\";s:5:\"phone\";s:8:\"55555555\";s:3:\"fax\";N;s:5:\"text1\";N;s:5:\"text2\";N;s:5:\"text3\";N;s:5:\"text4\";N;s:5:\"text5\";N;s:5:\"text6\";N;s:11:\"sValidation\";N;s:9:\"birthyear\";s:0:\"\";s:10:\"birthmonth\";s:0:\"\";s:8:\"birthday\";s:0:\"\";s:11:\"dpacheckbox\";N;s:7:\"company\";s:0:\"\";s:6:\"street\";s:14:\"Musterstreaße\";s:12:\"streetnumber\";s:2:\"55\";s:7:\"zipcode\";s:5:\"55555\";s:4:\"city\";s:11:\"Musterhsuen\";s:10:\"department\";s:0:\"\";s:15:\"shippingAddress\";N;s:7:\"stateID\";N;}'),(2,NULL,'sORDER','{config name=mail}','{config name=shopName}','Ihre Bestellung im {config name=shopName}','Hallo {$billingaddress.firstname} {$billingaddress.lastname},\r\n \r\nvielen Dank fuer Ihre Bestellung bei {config name=shopName} (Nummer: {$sOrderNumber}) am {$sOrderDay} um {$sOrderTime}.\r\nInformationen zu Ihrer Bestellung:\r\n \r\nPos. Art.Nr.              Menge         Preis        Summe\r\n{foreach item=details key=position from=$sOrderDetails}\r\n{$position+1|fill:4} {$details.ordernumber|fill:20} {$details.quantity|fill:6} {$details.price|padding:8} EUR {$details.amount|padding:8} EUR\r\n{$details.articlename|wordwrap:49|indent:5}\r\n{/foreach}\r\n \r\nVersandkosten: {$sShippingCosts}\r\nGesamtkosten Netto: {$sAmountNet}\r\n{if !$sNet}\r\nGesamtkosten Brutto: {$sAmount}\r\n{/if}\r\n \r\nGewählte Zahlungsart: {$additional.payment.description}\r\n{$additional.payment.additionaldescription}\r\n{if $additional.payment.name == \"debit\"}\r\nIhre Bankverbindung:\r\nKontonr: {$sPaymentTable.account}\r\nBLZ:{$sPaymentTable.bankcode}\r\nWir ziehen den Betrag in den nächsten Tagen von Ihrem Konto ein.\r\n{/if}\r\n{if $additional.payment.name == \"prepayment\"}\r\n \r\nUnsere Bankverbindung:\r\n{config name=bankAccount}\r\n{/if}\r\n \r\n{if $sComment}\r\nIhr Kommentar:\r\n{$sComment}\r\n{/if}\r\n \r\nRechnungsadresse:\r\n{$billingaddress.company}\r\n{$billingaddress.firstname} {$billingaddress.lastname}\r\n{$billingaddress.street} {$billingaddress.streetnumber}\r\n{$billingaddress.zipcode} {$billingaddress.city}\r\n{$billingaddress.phone}\r\n{$additional.country.countryname}\r\n \r\nLieferadresse:\r\n{$shippingaddress.company}\r\n{$shippingaddress.firstname} {$shippingaddress.lastname}\r\n{$shippingaddress.street} {$shippingaddress.streetnumber}\r\n{$shippingaddress.zipcode} {$shippingaddress.city}\r\n{$additional.country.countryname}\r\n \r\n{if $billingaddress.ustid}\r\nIhre Umsatzsteuer-ID: {$billingaddress.ustid}\r\nBei erfolgreicher Prüfung und sofern Sie aus dem EU-Ausland\r\nbestellen, erhalten Sie Ihre Ware umsatzsteuerbefreit.\r\n{/if}\r\n \r\n \r\nFür Rückfragen stehen wir Ihnen jederzeit gerne zur Verfügung. \r\n\r\nWir wünschen Ihnen noch einen schönen Tag.\r\n \r\n{config name=address}\r\n\r\n ','<div style=\"font-family:arial; font-size:12px;\">\r\n \r\n<p>Hallo {$billingaddress.firstname} {$billingaddress.lastname},<br/><br/>\r\n \r\nvielen Dank fuer Ihre Bestellung bei {config name=shopName} (Nummer: {$sOrderNumber}) am {$sOrderDay} um {$sOrderTime}.\r\n<br/>\r\n<br/>\r\n<strong>Informationen zu Ihrer Bestellung:</strong></p>\r\n  <table width=\"80%\" border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif; font-size:10px;\">\r\n    <tr>\r\n      <td bgcolor=\"#F7F7F2\" style=\"border-bottom:1px solid #cccccc;\"><strong>Artikel</strong></td>\r\n      <td bgcolor=\"#F7F7F2\" style=\"border-bottom:1px solid #cccccc;\"><strong>Pos.</strong></td>\r\n      <td bgcolor=\"#F7F7F2\" style=\"border-bottom:1px solid #cccccc;\"><strong>Art-Nr.</strong></td>\r\n      <td bgcolor=\"#F7F7F2\" style=\"border-bottom:1px solid #cccccc;\"><strong>Menge</strong></td>\r\n      <td bgcolor=\"#F7F7F2\" style=\"border-bottom:1px solid #cccccc;\"><strong>Preis</strong></td>\r\n      <td bgcolor=\"#F7F7F2\" style=\"border-bottom:1px solid #cccccc;\"><strong>Summe</strong></td>\r\n    </tr>\r\n \r\n    {foreach item=details key=position from=$sOrderDetails}\r\n    <tr>\r\n      <td rowspan=\"2\" style=\"border-bottom:1px solid #cccccc;\">{if $details.image.src.1}<img src=\"{$details.image.src.1}\" alt=\"{$details.articlename}\" />{else} {/if}</td>\r\n      <td>{$position+1|fill:4} </td>\r\n      <td>{$details.ordernumber|fill:20}</td>\r\n      <td>{$details.quantity|fill:6}</td>\r\n      <td>{$details.price|padding:8}{$sCurrency}</td>\r\n      <td>{$details.amount|padding:8} {$sCurrency}</td>\r\n    </tr>\r\n    <tr>\r\n      <td colspan=\"5\" style=\"border-bottom:1px solid #cccccc;\">{$details.articlename|wordwrap:80|indent:4}</td>\r\n    </tr>\r\n    {/foreach}\r\n \r\n  </table>\r\n \r\n<p>\r\n  <br/>\r\n  <br/>\r\n    Versandkosten: {$sShippingCosts}<br/>\r\n    Gesamtkosten Netto: {$sAmountNet}<br/>\r\n    {if !$sNet}\r\n    Gesamtkosten Brutto: {$sAmount}<br/>\r\n    {/if}\r\n  <br/>\r\n  <br/>\r\n    <strong>Gewählte Zahlungsart:</strong> {$additional.payment.description}<br/>\r\n    {$additional.payment.additionaldescription}\r\n    {if $additional.payment.name == \"debit\"}\r\n    Ihre Bankverbindung:<br/>\r\n    Kontonr: {$sPaymentTable.account}<br/>\r\n    BLZ:{$sPaymentTable.bankcode}<br/>\r\n    Wir ziehen den Betrag in den nächsten Tagen von Ihrem Konto ein.<br/>\r\n    {/if}\r\n  <br/>\r\n  <br/>\r\n    {if $additional.payment.name == \"prepayment\"}\r\n    Unsere Bankverbindung:<br/>\r\n    {config name=bankAccount}\r\n    {/if} \r\n  <br/>\r\n  <br/>\r\n    <strong>Gewählte Versandart:</strong> {$sDispatch.name}<br/>{$sDispatch.description}\r\n</p>\r\n<p>\r\n  {if $sComment}\r\n    <strong>Ihr Kommentar:</strong><br/>\r\n    {$sComment}<br/>\r\n  {/if} \r\n  <br/>\r\n  <br/>\r\n    <strong>Rechnungsadresse:</strong><br/>\r\n    {$billingaddress.company}<br/>\r\n    {$billingaddress.firstname} {$billingaddress.lastname}<br/>\r\n    {$billingaddress.street} {$billingaddress.streetnumber}<br/>\r\n    {$billingaddress.zipcode} {$billingaddress.city}<br/>\r\n    {$billingaddress.phone}<br/>\r\n    {$additional.country.countryname}<br/>\r\n  <br/>\r\n  <br/>\r\n    <strong>Lieferadresse:</strong><br/>\r\n    {$shippingaddress.company}<br/>\r\n    {$shippingaddress.firstname} {$shippingaddress.lastname}<br/>\r\n    {$shippingaddress.street} {$shippingaddress.streetnumber}<br/>\r\n    {$shippingaddress.zipcode} {$shippingaddress.city}<br/>\r\n    {$additional.countryShipping.countryname}<br/>\r\n  <br/>\r\n    {if $billingaddress.ustid}\r\n    Ihre Umsatzsteuer-ID: {$billingaddress.ustid}<br/>\r\n    Bei erfolgreicher Prüfung und sofern Sie aus dem EU-Ausland<br/>\r\n    bestellen, erhalten Sie Ihre Ware umsatzsteuerbefreit.<br/>\r\n    {/if}\r\n  <br/>\r\n  <br/>\r\n    Für Rückfragen stehen wir Ihnen jederzeit gerne zur Verfügung. Sie erreichen uns wie folgt: <br/>{config name=address}\r\n    <br/>\r\n    Mit freundlichen Grüßen,<br/>\r\n    Ihr Team von {config name=shopName}<br/>\r\n</p>\r\n</div>',1,'',2,NULL),(3,NULL,'sTELLAFRIEND','{config name=mail}','{config name=shopName}','{sName} empfiehlt Ihnen {sArticle}','Hallo,\r\n\r\n{sName} hat für Sie bei {sShop} ein interessantes Produkt gefunden, dass Sie sich anschauen sollten:\r\n\r\n{sArticle}\r\n{sLink}\r\n\r\n{sComment}\r\n\r\nBis zum naechsten Mal und mit freundlichen Gruessen,\r\n\r\nIhre Kontaktdaten','',0,'',2,'a:4:{s:5:\"sName\";s:11:\"Peter Meyer\";s:8:\"sArticle\";s:10:\"Blumenvase\";s:5:\"sLink\";s:31:\"http://shop.example.org/test123\";s:8:\"sComment\";s:36:\"Hey Peter - das musst du dir ansehen\";}'),(4,NULL,'sPASSWORD','{config name=mail}','{config name=shopName}','Passwort vergessen - Ihre Zugangsdaten zu {sShop}','Hallo,\n\nIhre Zugangsdaten zu {sShopURL} lauten wie folgt:\nBenutzer: {sMail}\nPasswort: {sPassword}\n\nBis zum naechsten Mal und mit freundlichen Gruessen,\n\n{config name=address}','',0,'',2,'a:2:{s:9:\"sPassword\";s:7:\"xFqr3zp\";s:5:\"sMail\";s:18:\"nutzer@example.org\";}'),(5,NULL,'sNOSERIALS','{config name=mail}','{config name=shopName}','Achtung - keine freien Seriennummern für {sArticleName}','Hallo,\r\n\r\nes sind keine weiteren freien Seriennummern für den Artikel {sArticleName} verfügbar. Bitte stellen Sie umgehend neue Seriennummern ein oder deaktivieren Sie den Artikel. \r\n\r\n{config name=shopName}','',0,'',2,'a:2:{s:12:\"sArticleName\";s:20:\"ESD Download Artikel\";s:5:\"sMail\";s:23:\"max.mustermann@mail.com\";}'),(7,NULL,'sVOUCHER','{config name=mail}','{config name=shopName}','Ihr Gutschein','Hallo {customer},\n\n{user} ist Ihrer Empfehlung gefolgt und hat so eben im Demoshop bestellt.\nWir schenken Ihnen deshalb einen X € Gutschein, den Sie bei Ihrer nächsten Bestellung einlösen können.\n			\nIhr Gutschein-Code lautet: XXX\n			\nViele Grüße,\n\nIhr Team von {config name=shopName}','',0,'',2,'a:2:{s:8:\"customer\";s:11:\"Peter Meyer\";s:4:\"user\";s:11:\"Hans Maiser\";}'),(12,NULL,'sCUSTOMERGROUPHACCEPTED','{config name=mail}','{config name=shopName}','Ihr Händleraccount wurde freigeschaltet','Hallo,\n\nIhr Händleraccount auf {config name=shopName} wurde freigeschaltet\n\nAb sofort kaufen Sie zum Netto-EK bei uns ein.\n\nMit freundlichen Grüßen,\n\nIhr Team von {config name=shopName}','',0,'',2,NULL),(13,NULL,'sCUSTOMERGROUPHREJECTED','{config name=mail}','{config name=shopName}','Ihr Händleraccount wurde abgelehnt','Sehr geehrter Kunde,\n\nvielen Dank für Ihr Interesse an unseren Fachhandelspreisen. Leider liegt uns aber noch kein Gewerbenachweis vor bzw. leider können wir Sie nicht als Fachhändler anerkennen.\n\nBei Rückfragen aller Art können Sie uns gerne telefonisch, per Fax oder per Mail diesbezüglich erreichen.\n\nMit freundlichen Grüßen\n\nIhr Team von {config name=shopName}','',0,'',2,NULL),(14,1,'sORDERSTATEMAIL1','{config name=mail}','{config name=shopName}','Statusänderung zur Bestellung bei {config name=shopName}','Sehr geehrte{if $sUser.billing_salutation eq \"mr\"}r Herr{elseif $sUser.billing_salutation eq \"ms\"}Frau{/if} {$sUser.billing_firstname} {$sUser.billing_lastname},\r\n\r\nDer Status Ihrer Bestellung mit der Bestellnummer: {$sOrder.ordernumber} vom {$sOrder.ordertime|date_format:\" %d-%m-%Y\"} hat sich geändert. Der neue Status lautet nun {$sOrder.status_description}.','',0,'',3,NULL),(15,2,'sORDERSTATEMAIL2','{config name=mail}','{config name=shopName}','Statusänderung zur Bestellung bei {config name=shopName}','Sehr geehrte{if $sUser.billing_salutation eq \"mr\"}r Herr{elseif $sUser.billing_salutation eq \"ms\"}Frau{/if} {$sUser.billing_firstname} {$sUser.billing_lastname},\r\n\r\nDer Status Ihrer Bestellung mit der Bestellnummer: {$sOrder.ordernumber} vom {$sOrder.ordertime|date_format:\" %d-%m-%Y\"} hat sich geändert. Der neue Status lautet nun {$sOrder.status_description}.','',0,'',3,NULL),(19,NULL,'sCANCELEDQUESTION','{config name=mail}','{config name=shopName}','Ihre abgebrochene Bestellung - Jetzt Feedback geben und Gutschein kassieren','Lieber Kunde,\r\n \r\nsie haben vor kurzem Ihre Bestellung auf Demoshop.de nicht bis zum Ende durchgeführt - wir sind stets bemüht unseren Kunden das Einkaufen in unserem Shop so angenehm wie möglich zu machen und würden deshalb gerne wissen, woran Ihr Einkauf bei uns gescheitert ist.\r\n \r\nBitte lassen Sie uns doch den Grund für Ihren Bestellabbruch zukommen, Ihren Aufwand entschädigen wir Ihnen in jedem Fall mit einem 5,00 € Gutschein.\r\n \r\nVielen Dank für Ihre Unterstützung.','',0,'',2,NULL),(20,NULL,'sCANCELEDVOUCHER','{config name=mail}','{config name=shopName}','Ihre abgebrochene Bestellung - Gutschein-Code anbei','Lieber Kunde,\r\n \r\nsie haben vor kurzem Ihre Bestellung auf Demoshop.de nicht bis zum Ende durchgeführt - wir möchten Ihnen heute einen 5,00 € Gutschein zukommen lassen - und Ihnen hiermit die Bestell-Entscheidung auf demoshop.de erleichtern.\r\n \r\nIhr Gutschein ist 2 Monate gültig und kann mit dem Code \"{$sVouchercode}\" eingelöst werden.\r\n\r\nWir würden uns freuen, Ihre Bestellung entgegen nehmen zu dürfen.\r\n','',0,'',2,NULL),(21,9,'sORDERSTATEMAIL9','{config name=mail}','{config name=shopName}','Statusänderung zur Bestellung bei {config name=shopName}','','',0,'',3,NULL),(22,10,'sORDERSTATEMAIL10','{config name=mail}','{config name=shopName}','Statusänderung zur Bestellung bei {config name=shopName}','','',0,'',3,NULL),(23,11,'sORDERSTATEMAIL11','{config name=mail}','{config name=shopName}','Statusänderung zur Bestellung bei {config name=shopName}','Sehr geehrte{if $sUser.billing_salutation eq \"mr\"}r Herr{elseif $sUser.billing_salutation eq \"ms\"}Frau{/if} {$sUser.billing_firstname} {$sUser.billing_lastname},\n\nDer Status Ihrer Bestellung mit der Bestellnummer: {$sOrder.ordernumber} vom {$sOrder.ordertime|date_format:\" %d-%m-%Y\"} hat sich geändert. \n\nDer neue Status lautet nun {$sOrder.status_description}.','',0,'',3,NULL),(24,13,'sORDERSTATEMAIL13','{config name=mail}','{config name=shopName}','Statusänderung zur Bestellung bei {config name=shopName}','','',0,'',3,NULL),(25,16,'sORDERSTATEMAIL16','{config name=mail}','{config name=shopName}','Statusänderung zur Bestellung bei {config name=shopName}','','',0,'',3,NULL),(26,15,'sORDERSTATEMAIL15','{config name=mail}','{config name=shopName}','Statusänderung zur Bestellung bei {config name=shopName}','','',0,'',3,NULL),(27,14,'sORDERSTATEMAIL14','{config name=mail}','{config name=shopName}','Statusänderung zur Bestellung bei {config name=shopName}','','',0,'',3,NULL),(28,12,'sORDERSTATEMAIL12','{config name=mail}','{config name=shopName}','Statusänderung zur Bestellung bei {config name=shopName}','','',0,'',3,NULL),(29,5,'sORDERSTATEMAIL5','{config name=mail}','{config name=shopName}','Statusänderung zur Bestellung bei {config name=shopName}','Sehr geehrte{if $sUser.billing_salutation eq \"mr\"}r Herr{elseif $sUser.billing_salutation eq \"ms\"}Frau{/if} \n{$sUser.billing_firstname} {$sUser.billing_lastname},\n \nDer Status Ihrer Bestellung mit der Bestellnummer {$sOrder.ordernumber} vom {$sOrder.ordertime|date_format:\" %d.%m.%Y\"} \nhat sich geändert. Der neun Staus lautet nun {$sOrder.status_description}.\n \nMit freundlichen Grüßen,\nIhr Team von {config name=shopName}','',0,'',3,NULL),(30,8,'sORDERSTATEMAIL8','{config name=mail}','{config name=shopName}','Statusänderung zur Bestellung bei {config name=shopName}','Hallo {if $sUser.billing_salutation eq \"mr\"}Herr{elseif $sUser.billing_salutation eq \"ms\"}Frau{/if} {$sUser.billing_firstname} {$sUser.billing_lastname},\n \nder Bestellstatus für Ihre Bestellung {$sOrder.ordernumber} hat sich geändert!\nDie Bestellung hat jetzt den Status: {$sOrder.status_description}.\n\nDen aktuellen Status Ihrer Bestellung  können Sie  auch jederzeit auf unserer Webseite im  Bereich \"Mein Konto\" - \"Meine Bestellungen\" abrufen. Sollten Sie allerdings den Kauf ohne Registrierung, also ohne Anlage eines Kundenkontos, gewählt haben, steht Ihnen diese Möglichkeit nicht zur Verfügung.\n \nMit freundlichen Grüßen,\nIhr Team von {config name=shopName}','',0,'',3,NULL),(31,3,'sORDERSTATEMAIL3','{config name=mail}','{config name=shopName}','Statusänderung zur Bestellung bei {config name=shopName}','Sehr geehrte{if $sUser.billing_salutation eq \"mr\"}r Herr{elseif $sUser.billing_salutation eq \"ms\"} Frau{/if} {$sUser.billing_firstname} {$sUser.billing_lastname},\n \nDer Status Ihrer Bestellung mit der Bestellnummer {$sOrder.ordernumber} vom {$sOrder.ordertime|date_format:\" %d.%m.%Y\"} \nhat sich geändert. Der neue Staus lautet nun \"{$sOrder.status_description}\".\n \n \nInformationen zu Ihrer Bestellung:\n================================== \n{foreach item=details key=position from=$sOrderDetails}\n{$position+1|fill:3} {$details.articleordernumber|fill:10:\" \":\"...\"} {$details.name|fill:30} {$details.quantity} x {$details.price|string_format:\"%.2f\"} {$sConfig.sCURRENCY}\n{/foreach}\n \nVersandkosten: {$sOrder.invoice_shipping} {$sConfig.sCURRENCY}\nNetto-Gesamt: {$sOrder.invoice_amount_net|string_format:\"%.2f\"} {$sConfig.sCURRENCY}\nGesamtbetrag inkl. MwSt.: {$sOrder.invoice_amount|string_format:\"%.2f\"} {$sConfig.sCURRENCY}\n \nMit freundlichen Grüßen,\nIhr Team von {config name=shopName}\n\n','',0,'',3,NULL),(32,17,'sORDERSTATEMAIL17','{config name=mail}','{config name=shopName}','Statusänderung zur Bestellung bei {config name=shopName}','','',0,'',3,NULL),(33,4,'sORDERSTATEMAIL4','{config name=mail}','{config name=shopName}','Statusänderung zur Bestellung bei {config name=shopName}','Hallo {if $sUser.billing_salutation eq \"mr\"}Herr{elseif $sUser.billing_salutation eq \"ms\"}Frau{/if} {$sUser.billing_firstname} {$sUser.billing_lastname},\n \nder Bestellstatus für Ihre Bestellung {$sOrder.ordernumber} hat sich geändert!\nDie Bestellung hat jetzt den Status: {$sOrder.status_description}.\n\nDen aktuellen Status Ihrer Bestellung  können Sie  auch jederzeit auf unserer Webseite im  Bereich \"Mein Konto\" - \"Meine Bestellungen\" abrufen. Sollten Sie allerdings den Kauf ohne Registrierung, also ohne Anlage eines Kundenkontos, gewählt haben, steht Ihnen diese Möglichkeit nicht zur Verfügung.\n \nMit freundlichen Grüßen,\nIhr Team von {config name=shopName}','',0,'',3,NULL),(34,6,'sORDERSTATEMAIL6','{config name=mail}','{config name=shopName}','Statusänderung zur Bestellung bei {config name=shopName}','Hallo {if $sUser.billing_salutation eq \"mr\"}Herr{elseif $sUser.billing_salutation eq \"ms\"}Frau{/if} {$sUser.billing_firstname} {$sUser.billing_lastname},\n \nder Bestellstatus für Ihre Bestellung {$sOrder.ordernumber} hat sich geändert!\nDie Bestellung hat jetzt den Status: {$sOrder.status_description}.\n\nDen aktuellen Status Ihrer Bestellung  können Sie  auch jederzeit auf unserer Webseite im  Bereich \"Mein Konto\" - \"Meine Bestellungen\" abrufen. Sollten Sie allerdings den Kauf ohne Registrierung, also ohne Anlage eines Kundenkontos, gewählt haben, steht Ihnen diese Möglichkeit nicht zur Verfügung.\n \nMit freundlichen Grüßen,\nIhr Team von {config name=shopName}','',0,'',3,NULL),(35,18,'sORDERSTATEMAIL18','{config name=mail}','{config name=shopName}','Statusänderung zur Bestellung bei {config name=shopName}','','',0,'',3,NULL),(36,19,'sORDERSTATEMAIL19','{config name=mail}','{config name=shopName}','Statusänderung zur Bestellung bei {config name=shopName}','','',0,'',3,NULL),(37,20,'sORDERSTATEMAIL20','{config name=mail}','{config name=shopName}','Statusänderung zur Bestellung bei {config name=shopName}','','',0,'',3,NULL),(38,7,'sORDERSTATEMAIL7','{config name=mail}','{config name=shopName}','Statusänderung zur Bestellung bei {config name=shopName}','','',0,'',3,NULL),(39,NULL,'sBIRTHDAY','{config name=mail}','{config name=shopName}','Herzlichen Glückwunsch zum Geburtstag von {config name=shopName}','Hallo {if $sUser.salutation eq \"mr\"}Herr{elseif $sUser.billing_salutation eq \"ms\"}Frau{/if} {$sUser.firstname} {$sUser.lastname},\n\nMit freundlichen Grüßen,\n\nIhr Team von {config name=shopName}','',0,'',2,NULL),(40,NULL,'sARTICLESTOCK','{config name=mail}','{config name=shopName}','Lagerbestand von {$sData.count} Artikel{if $sData.count>1}n{/if} unter Mindestbestand ','Hallo,\n\nfolgende Artikel haben den Mindestbestand unterschritten:\n\nBestellnummer Artikelname Bestand/Mindestbestand \n{foreach from=$sJob.articles item=sArticle key=key}\n{$sArticle.ordernumber} {$sArticle.name} {$sArticle.instock}/{$sArticle.stockmin} \n{/foreach}\n','',0,'',2,NULL),(41,NULL,'sNEWSLETTERCONFIRMATION','{config name=mail}','{config name=shopName}','Vielen Dank für Ihre Newsletter-Anmeldung','Hallo,\n\nvielen Dank für Ihre Newsletter-Anmeldung bei {config name=shopName}.\n\nViele Grüße,\n\nIhr Team von {config name=shopName}\n\n\nKontaktdaten:\n{config name=address}','',0,'',2,NULL),(42,NULL,'sOPTINNEWSLETTER','{config name=mail}','{config name=shopName}','Bitte bestätigen Sie Ihre Newsletter-Anmeldung','Hallo, \n\nvielen Dank für Ihre Anmeldung zu unserem regelmäßig erscheinenden Newsletter. \n\nBitte bestätigen Sie die Anmeldung über den nachfolgenden Link: {$sConfirmLink} \n\n\nViele Grüße\n\nIhr Team von {config name=shopName}','',0,'',2,NULL),(43,NULL,'sOPTINVOTE','{config name=mail}','{config name=shopName}','Bitte bestätigen Sie Ihre Artikel-Bewertung','Hallo, \n\nvielen Dank für die Bewertung des Artikels {$sArticle.articleName}. \n\nBitte bestätigen Sie die Bewertung über nach den nachfolgenden Link: {$sConfirmLink} \n\nViele Grüße','',0,'',2,NULL),(44,NULL,'sARTICLEAVAILABLE','{config name=mail}','{config name=shopName}','Ihr Artikel ist wieder verfügbar','Hallo,\n\nIhr Artikel mit der Bestellnummer {$sOrdernumber} ist jetzt wieder verfügbar.\n\n{$sArticleLink}\n\nViele Grüße\n\nIhr Team von {config name=shopName}','',0,'',2,NULL),(45,NULL,'sACCEPTNOTIFICATION','{config name=mail}','{config name=shopName}','Bitte bestätigen Sie Ihre E-Mail-Benachrichtigung','Hallo,\n\nvielen Dank, dass Sie sich für die automatische e-Mail Benachrichtigung für den Artikel {$sArticleName} eingetragen haben.\n\nBitte bestätigen Sie die Benachrichtigung über den nachfolgenden Link: \n\n{$sConfirmLink}\n\nViele Grüße \n\nIhr Team von {config name=shopName}','',0,'',2,NULL),(46,NULL,'sARTICLECOMMENT','{config name=mail}','{config name=shopName}','Artikel bewerten','Hallo {if $sUser.salutation eq \"mr\"}Herr{elseif $sUser.billing_salutation eq \"ms\"}Frau{/if} {$sUser.billing_firstname} {$sUser.billing_lastname},\n\n\nSie haben bei uns vor einigen Tagen Artikel gekauft. Wir würden uns freuen, wenn Sie diese Artikel bewerten würden.<br/>\nSo helfen Sie uns, unseren Service weiter zu steigern und Sie können auf diesem Weg anderen Interessenten direkt Ihre Meinung mitteilen.\n\n\nHier finden Sie die Links zum Bewerten der von Ihnen gekauften Produkte.\n\n{foreach from=$sArticles item=sArticle key=key}\n{if !$sArticle.modus}\n{$sArticle.articleordernumber} {$sArticle.name} {$sArticle.link}\n{/if}\n{/foreach}\n\nViele Grüße,\n\nIhr Team von {config name=shopName}','<div>\nHallo {if $sUser.salutation eq \"mr\"}Herr{elseif $sUser.billing_salutation eq \"ms\"}Frau{/if} {$sUser.billing_firstname} {$sUser.billing_lastname},\n<br/>\nSie haben bei uns vor einigen Tagen Artikel gekauft. Wir würden uns freuen, wenn Sie diese Artikel bewerten würden.<br/>\nSo helfen Sie uns, unseren Service weiter zu steigern und Sie können auf diesem Weg anderen Interessenten direkt Ihre Meinung mitteilen.\n<br/><br/>\n\nHier finden Sie die Links zum Bewerten der von Ihnen gekauften Produkte.\n\n<table>\n {foreach from=$sArticles item=sArticle key=key}\n{if !$sArticle.modus}\n <tr>\n  <td>{$sArticle.articleordernumber}</td>\n  <td>{$sArticle.name}</td>\n  <td>\n  <a href=\"{$sArticle.link}\">link</a>\n  </td>\n </tr>\n{/if}\n {/foreach}\n</table>\n\n\nViele Grüße,<br />\nIhr Team von {config name=shopName}\n</div>',1,'',2,NULL),(51,NULL,'sORDERSEPAAUTHORIZATION','{config name=mail}','{config name=shopName}','SEPA Lastschriftmandat','Hallo {$paymentInstance.firstName} {$paymentInstance.lastName}, im Anhang finden Sie ein Lastschriftmandat zu Ihrer Bestellung {$paymentInstance.orderNumber}. Bitte senden Sie uns das komplett ausgefüllte Dokument per Fax oder Email zurück.','Hallo {$paymentInstance.firstName} {$paymentInstance.lastName}, im Anhang finden Sie ein Lastschriftmandat zu Ihrer Bestellung {$paymentInstance.orderNumber}. Bitte senden Sie uns das komplett ausgefüllte Dokument per Fax oder Email zurück.',1,'',1,NULL);
/*!40000 ALTER TABLE `s_core_config_mails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_config_mails_attachments`
--

DROP TABLE IF EXISTS `s_core_config_mails_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_config_mails_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mailID` int(11) NOT NULL,
  `mediaID` int(11) NOT NULL,
  `shopID` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mailID` (`mailID`,`mediaID`,`shopID`),
  KEY `mediaID` (`mediaID`),
  KEY `shopID` (`shopID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_config_mails_attachments`
--

LOCK TABLES `s_core_config_mails_attachments` WRITE;
/*!40000 ALTER TABLE `s_core_config_mails_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_config_mails_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_config_mails_attributes`
--

DROP TABLE IF EXISTS `s_core_config_mails_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_config_mails_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mailID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mailID` (`mailID`),
  CONSTRAINT `s_core_config_mails_attributes_ibfk_1` FOREIGN KEY (`mailID`) REFERENCES `s_core_config_mails` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_config_mails_attributes`
--

LOCK TABLES `s_core_config_mails_attributes` WRITE;
/*!40000 ALTER TABLE `s_core_config_mails_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_config_mails_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_config_values`
--

DROP TABLE IF EXISTS `s_core_config_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_config_values` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `element_id` int(11) unsigned NOT NULL,
  `shop_id` int(11) unsigned DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_id` (`shop_id`),
  KEY `element_id` (`element_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_config_values`
--

LOCK TABLES `s_core_config_values` WRITE;
/*!40000 ALTER TABLE `s_core_config_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_config_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_countries`
--

DROP TABLE IF EXISTS `s_core_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `countryname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `countryiso` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `areaID` int(11) DEFAULT NULL,
  `countryen` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `notice` text COLLATE utf8_unicode_ci,
  `shippingfree` int(11) DEFAULT NULL,
  `taxfree` int(11) DEFAULT NULL,
  `taxfree_ustid` int(11) DEFAULT NULL,
  `taxfree_ustid_checked` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `iso3` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_state_in_registration` int(1) NOT NULL,
  `force_state_in_registration` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `areaID` (`areaID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_countries`
--

LOCK TABLES `s_core_countries` WRITE;
/*!40000 ALTER TABLE `s_core_countries` DISABLE KEYS */;
INSERT INTO `s_core_countries` VALUES (2,'Deutschland','DE',1,'GERMANY',1,'',0,0,0,0,1,'DEU',0,0),(3,'Arabische Emirate','AE',2,'ARAB EMIRATES',10,'',0,0,0,0,0,'ARE',0,0),(4,'Australien','AU',2,'AUSTRALIA',10,'',0,0,0,0,0,'AUS',0,0),(5,'Belgien','BE',3,'BELGIUM',10,'',0,0,0,0,0,'BEL',0,0),(7,'Dänemark','DK',3,'DENMARK',10,'',0,0,0,0,0,'DNK',0,0),(8,'Finnland','FI',3,'FINLAND',10,'',0,0,0,0,0,'FIN',0,0),(9,'Frankreich','FR',3,'FRANCE',10,'',0,0,0,0,0,'FRA',0,0),(10,'Griechenland','GR',3,'GREECE',10,'',0,0,0,0,0,'GRC',0,0),(11,'Großbritannien','GB',3,'GREAT BRITAIN',10,'',0,0,0,0,0,'GBR',0,0),(12,'Irland','IE',3,'IRELAND',10,'',0,0,0,0,0,'IRL',0,0),(13,'Island','IS',3,'ICELAND',10,'',0,0,0,0,0,'ISL',0,0),(14,'Italien','IT',3,'ITALY',10,'',0,0,0,0,0,'ITA',0,0),(15,'Japan','JP',2,'JAPAN',10,'',0,0,0,0,0,'JPN',0,0),(16,'Kanada','CA',2,'CANADA',10,'',0,0,0,0,0,'CAN',0,0),(18,'Luxemburg','LU',3,'LUXEMBOURG',10,'',0,0,0,0,0,'LUX',0,0),(20,'Namibia','NA',2,'NAMIBIA',10,'',0,0,0,0,0,'NAM',0,0),(21,'Niederlande','NL',3,'NETHERLANDS',10,'',0,0,0,0,0,'NLD',0,0),(22,'Norwegen','NO',3,'NORWAY',10,'',0,0,0,0,0,'NOR',0,0),(23,'Österreich','AT',3,'AUSTRIA',1,'',0,0,0,0,0,'AUT',0,0),(24,'Portugal','PT',3,'PORTUGAL',10,'',0,0,0,0,0,'PRT',0,0),(25,'Schweden','SE',3,'SWEDEN',10,'',0,0,0,0,0,'SWE',0,0),(26,'Schweiz','CH',3,'SWITZERLAND',10,'',0,1,0,0,0,'CHE',0,0),(27,'Spanien','ES',3,'SPAIN',10,'',0,0,0,0,0,'ESP',0,0),(28,'USA','US',2,'USA',10,'',0,0,0,0,0,'USA',0,0),(29,'Liechtenstein','LI',3,'LIECHTENSTEIN',10,'',0,0,0,0,0,'LIE',0,0),(30,'Polen','PL',3,'POLAND',10,'',0,0,0,0,0,'POL',0,0),(31,'Ungarn','HU',3,'HUNGARY',10,'',0,0,0,0,0,'HUN',0,0),(32,'Türkei','TR',2,'TURKEY',10,'',0,0,0,0,0,'TUR',0,0),(33,'Tschechien','CZ',3,'CZECH REPUBLIC',10,'',0,0,0,0,0,'CZE',0,0),(34,'Slowakei','SK',3,'SLOVAKIA',10,'',0,0,0,0,0,'SVK',0,0),(35,'Rum&auml;nien','RO',3,'ROMANIA',10,'',0,0,0,0,0,'ROU',0,0),(36,'Brasilien','BR',2,'BRAZIL',10,'',0,0,0,0,0,'BRA',0,0),(37,'Israel','IL',2,'ISRAEL',10,'',0,0,0,0,0,'ISR',0,0);
/*!40000 ALTER TABLE `s_core_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_countries_areas`
--

DROP TABLE IF EXISTS `s_core_countries_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_countries_areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_countries_areas`
--

LOCK TABLES `s_core_countries_areas` WRITE;
/*!40000 ALTER TABLE `s_core_countries_areas` DISABLE KEYS */;
INSERT INTO `s_core_countries_areas` VALUES (1,'deutschland',1),(2,'welt',1),(3,'europa',1);
/*!40000 ALTER TABLE `s_core_countries_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_countries_attributes`
--

DROP TABLE IF EXISTS `s_core_countries_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_countries_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `countryID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `countryID` (`countryID`),
  CONSTRAINT `s_core_countries_attributes_ibfk_1` FOREIGN KEY (`countryID`) REFERENCES `s_core_countries` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_countries_attributes`
--

LOCK TABLES `s_core_countries_attributes` WRITE;
/*!40000 ALTER TABLE `s_core_countries_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_countries_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_countries_states`
--

DROP TABLE IF EXISTS `s_core_countries_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_countries_states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `countryID` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shortcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `countryID` (`countryID`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_countries_states`
--

LOCK TABLES `s_core_countries_states` WRITE;
/*!40000 ALTER TABLE `s_core_countries_states` DISABLE KEYS */;
INSERT INTO `s_core_countries_states` VALUES (2,2,'Niedersachsen','NI',0,1),(3,2,'Nordrhein-Westfalen','NW',0,1),(5,2,'Baden-Württemberg','BW',0,1),(6,2,'Bayern','BY',0,1),(7,2,'Berlin','BE',0,1),(8,2,'Brandenburg','BB',0,1),(9,2,'Bremen','HB',0,1),(10,2,'Hamburg','HH',0,1),(11,2,'Hessen','HE',0,1),(12,2,'Mecklenburg-Vorpommern','MV',0,1),(13,2,'Rheinland-Pfalz','RP',0,1),(14,2,'Saarland','SL',0,1),(15,2,'Sachsen','SN',0,1),(16,2,'Sachsen-Anhalt','ST',0,1),(17,2,'Schleswig-Holstein','SH',0,1),(18,2,'Thüringen','TH',0,1),(20,28,'Alabama','AL',0,1),(21,28,'Alaska','AK',0,1),(22,28,'Arizona','AZ',0,1),(23,28,'Arkansas','AR',0,1),(24,28,'Kalifornien','CA',0,1),(25,28,'Colorado','CO',0,1),(26,28,'Connecticut','CT',0,1),(27,28,'Delaware','DE',0,1),(28,28,'Florida','FL',0,1),(29,28,'Georgia','GA',0,1),(30,28,'Hawaii','HI',0,1),(31,28,'Idaho','ID',0,1),(32,28,'Illinois','IL',0,1),(33,28,'Indiana','IN',0,1),(34,28,'Iowa','IA',0,1),(35,28,'Kansas','KS',0,1),(36,28,'Kentucky','KY',0,1),(37,28,'Louisiana','LA',0,1),(38,28,'Maine','ME',0,1),(39,28,'Maryland','MD',0,1),(40,28,'Massachusetts','MA',0,1),(41,28,'Michigan','MI',0,1),(42,28,'Minnesota','MN',0,1),(43,28,'Mississippi','MS',0,1),(44,28,'Missouri','MO',0,1),(45,28,'Montana','MT',0,1),(46,28,'Nebraska','NE',0,1),(47,28,'Nevada','NV',0,1),(48,28,'New Hampshire','NH',0,1),(49,28,'New Jersey','NJ',0,1),(50,28,'New Mexico','NM',0,1),(51,28,'New York','NY',0,1),(52,28,'North Carolina','NC',0,1),(53,28,'North Dakota','ND',0,1),(54,28,'Ohio','OH',0,1),(55,28,'Oklahoma','OK',0,1),(56,28,'Oregon','OR',0,1),(57,28,'Pennsylvania','PA',0,1),(58,28,'Rhode Island','RI',0,1),(59,28,'South Carolina','SC',0,1),(60,28,'South Dakota','SD',0,1),(61,28,'Tennessee','TN',0,1),(62,28,'Texas','TX',0,1),(63,28,'Utah','UT',0,1),(64,28,'Vermont','VT',0,1),(65,28,'Virginia','VA',0,1),(66,28,'Washington','WA',0,1),(67,28,'West Virginia','WV',0,1),(68,28,'Wisconsin','WI',0,1),(69,28,'Wyoming','WY',0,1);
/*!40000 ALTER TABLE `s_core_countries_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_countries_states_attributes`
--

DROP TABLE IF EXISTS `s_core_countries_states_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_countries_states_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stateID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stateID` (`stateID`),
  CONSTRAINT `s_core_countries_states_attributes_ibfk_1` FOREIGN KEY (`stateID`) REFERENCES `s_core_countries_states` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_countries_states_attributes`
--

LOCK TABLES `s_core_countries_states_attributes` WRITE;
/*!40000 ALTER TABLE `s_core_countries_states_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_countries_states_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_currencies`
--

DROP TABLE IF EXISTS `s_core_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `standard` int(1) NOT NULL,
  `factor` double NOT NULL,
  `templatechar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol_position` int(11) unsigned NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_currencies`
--

LOCK TABLES `s_core_currencies` WRITE;
/*!40000 ALTER TABLE `s_core_currencies` DISABLE KEYS */;
INSERT INTO `s_core_currencies` VALUES (1,'EUR','Euro',1,1,'&euro;',0,0),(2,'USD','US-Dollar',0,1.3625,'$',0,0);
/*!40000 ALTER TABLE `s_core_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_customergroups`
--

DROP TABLE IF EXISTS `s_core_customergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_customergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupkey` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tax` int(1) NOT NULL DEFAULT '0',
  `taxinput` int(1) NOT NULL,
  `mode` int(11) NOT NULL,
  `discount` double NOT NULL,
  `minimumorder` double NOT NULL,
  `minimumordersurcharge` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupkey` (`groupkey`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_customergroups`
--

LOCK TABLES `s_core_customergroups` WRITE;
/*!40000 ALTER TABLE `s_core_customergroups` DISABLE KEYS */;
INSERT INTO `s_core_customergroups` VALUES (1,'EK','Shopkunden',1,1,0,0,10,5),(2,'H','Händler',1,0,0,0,0,0);
/*!40000 ALTER TABLE `s_core_customergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_customergroups_attributes`
--

DROP TABLE IF EXISTS `s_core_customergroups_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_customergroups_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerGroupID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customerGroupID` (`customerGroupID`),
  CONSTRAINT `s_core_customergroups_attributes_ibfk_1` FOREIGN KEY (`customerGroupID`) REFERENCES `s_core_customergroups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_customergroups_attributes`
--

LOCK TABLES `s_core_customergroups_attributes` WRITE;
/*!40000 ALTER TABLE `s_core_customergroups_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_customergroups_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_customergroups_discounts`
--

DROP TABLE IF EXISTS `s_core_customergroups_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_customergroups_discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupID` int(11) NOT NULL,
  `basketdiscount` double NOT NULL,
  `basketdiscountstart` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `groupID` (`groupID`,`basketdiscountstart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_customergroups_discounts`
--

LOCK TABLES `s_core_customergroups_discounts` WRITE;
/*!40000 ALTER TABLE `s_core_customergroups_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_customergroups_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_customerpricegroups`
--

DROP TABLE IF EXISTS `s_core_customerpricegroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_customerpricegroups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `netto` int(1) unsigned NOT NULL,
  `active` int(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_customerpricegroups`
--

LOCK TABLES `s_core_customerpricegroups` WRITE;
/*!40000 ALTER TABLE `s_core_customerpricegroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_customerpricegroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_detail_states`
--

DROP TABLE IF EXISTS `s_core_detail_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_detail_states` (
  `id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `mail` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_detail_states`
--

LOCK TABLES `s_core_detail_states` WRITE;
/*!40000 ALTER TABLE `s_core_detail_states` DISABLE KEYS */;
INSERT INTO `s_core_detail_states` VALUES (0,'Offen',1,0),(1,'In Bearbeitung',2,0),(2,'Storniert',3,0),(3,'Abgeschlossen',4,0);
/*!40000 ALTER TABLE `s_core_detail_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_documents`
--

DROP TABLE IF EXISTS `s_core_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numbers` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `top` int(11) NOT NULL,
  `bottom` int(11) NOT NULL,
  `pagebreak` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_documents`
--

LOCK TABLES `s_core_documents` WRITE;
/*!40000 ALTER TABLE `s_core_documents` DISABLE KEYS */;
INSERT INTO `s_core_documents` VALUES (1,'Rechnung','index.tpl','doc_0',25,10,20,20,10),(2,'Lieferschein','index_ls.tpl','doc_1',25,10,20,20,10),(3,'Gutschrift','index_gs.tpl','doc_2',25,10,20,20,10),(4,'Stornorechnung','index_sr.tpl','doc_3',25,10,20,20,10);
/*!40000 ALTER TABLE `s_core_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_documents_box`
--

DROP TABLE IF EXISTS `s_core_documents_box`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_documents_box` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documentID` int(11) NOT NULL,
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `style` longtext COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_documents_box`
--

LOCK TABLES `s_core_documents_box` WRITE;
/*!40000 ALTER TABLE `s_core_documents_box` DISABLE KEYS */;
INSERT INTO `s_core_documents_box` VALUES (1,1,'Body','width:100%;\r\nfont-family: Verdana, Arial, Helvetica, sans-serif;\r\nfont-size:11px;',''),(2,1,'Logo','height: 20mm;\r\nwidth: 90mm;\r\nmargin-bottom:5mm;','<p><img src=\"http://www.shopware.de/logo/logo.png \" alt=\"\" /></p>'),(3,1,'Header_Recipient','',''),(4,1,'Header','height: 60mm;',''),(5,1,'Header_Sender','','<p>Demo GmbH - Stra&szlig;e 3 - 00000 Musterstadt</p>'),(6,1,'Header_Box_Left','width: 120mm;\r\nheight:60mm;\r\nfloat:left;',''),(7,1,'Header_Box_Right','width: 45mm;\r\nheight: 60mm;\r\nfloat:left;\r\nmargin-top:-20px;\r\nmargin-left:5px;','<p><strong>Demo GmbH </strong><br /> Max Mustermann<br /> Stra&szlig;e 3<br /> 00000 Musterstadt<br /> Fon: 01234 / 56789<br /> Fax: 01234 / 			56780<br />info@demo.de<br />www.demo.de</p>'),(8,1,'Header_Box_Bottom','font-size:14px;\r\nheight: 10mm;',''),(9,1,'Content','height: 65mm;\r\nwidth: 170mm;',''),(10,1,'Td','white-space:nowrap;\r\npadding: 5px 0;',''),(11,1,'Td_Name','white-space:normal;',''),(12,1,'Td_Line','border-bottom: 1px solid #999;\r\nheight: 0px;',''),(13,1,'Td_Head','border-bottom:1px solid #000;',''),(14,1,'Footer','width: 170mm;\r\nposition:fixed;\r\nbottom:-20mm;\r\nheight: 15mm;','<table style=\"height: 90px;\" border=\"0\" width=\"100%\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td style=\"width: 25%;\">\r\n<p><span style=\"font-size: xx-small;\">Demo GmbH</span></p>\r\n<p><span style=\"font-size: xx-small;\">Steuer-Nr <br />UST-ID: <br />Finanzamt </span><span style=\"font-size: xx-small;\">Musterstadt</span></p>\r\n</td>\r\n<td style=\"width: 25%;\">\r\n<p><span style=\"font-size: xx-small;\">Bankverbindung</span></p>\r\n<p><span style=\"font-size: xx-small;\">Sparkasse Musterstadt<br />BLZ: <br />Konto: </span></p>\r\n<span style=\"font-size: xx-small;\">aaaa<br /></span></td>\r\n<td style=\"width: 25%;\">\r\n<p><span style=\"font-size: xx-small;\">AGB<br /></span></p>\r\n<p><span style=\"font-size: xx-small;\">Gerichtsstand ist Musterstadt<br />Erf&uuml;llungsort Musterstadt<br />Gelieferte Ware bleibt bis zur vollst&auml;ndigen Bezahlung unser Eigentum</span></p>\r\n</td>\r\n<td style=\"width: 25%;\">\r\n<p><span style=\"font-size: xx-small;\">Gesch&auml;ftsf&uuml;hrer</span></p>\r\n<p><span style=\"font-size: xx-small;\">Max Mustermann</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(15,1,'Content_Amount','margin-left:90mm;',''),(16,1,'Content_Info','','<p>Die Ware bleibt bis zur vollst&auml;ndigen Bezahlung unser Eigentum</p>'),(68,2,'Body','width:100%;\r\nfont-family: Verdana, Arial, Helvetica, sans-serif;\r\nfont-size:11px;',''),(69,2,'Logo','height: 20mm;\r\nwidth: 90mm;\r\nmargin-bottom:5mm;','<p><img src=\"http://www.shopware.de/logo/logo.png \" alt=\"\" /></p>'),(70,2,'Header_Recipient','',''),(71,2,'Header','height: 60mm;',''),(72,2,'Header_Sender','','<p>Demo GmbH - Stra&szlig;e 3 - 00000 Musterstadt</p>'),(73,2,'Header_Box_Left','width: 120mm;\r\nheight:60mm;\r\nfloat:left;',''),(74,2,'Header_Box_Right','width: 45mm;\r\nheight: 60mm;\r\nfloat:left;\r\nmargin-top:-20px;\r\nmargin-left:5px;','<p><strong>Demo GmbH </strong><br /> Max Mustermann<br /> Stra&szlig;e 3<br /> 00000 Musterstadt<br /> Fon: 01234 / 56789<br /> Fax: 01234 / 			56780<br />info@demo.de<br />www.demo.de</p>'),(75,2,'Header_Box_Bottom','font-size:14px;\r\nheight: 10mm;',''),(76,2,'Content','height: 65mm;\r\nwidth: 170mm;',''),(77,2,'Td','white-space:nowrap;\r\npadding: 5px 0;',''),(78,2,'Td_Name','white-space:normal;',''),(79,2,'Td_Line','border-bottom: 1px solid #999;\r\nheight: 0px;',''),(80,2,'Td_Head','border-bottom:1px solid #000;',''),(81,2,'Footer','width: 170mm;\r\nposition:fixed;\r\nbottom:-20mm;\r\nheight: 15mm;','<table style=\"height: 90px;\" border=\"0\" width=\"100%\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td style=\"width: 25%;\">\r\n<p><span style=\"font-size: xx-small;\">Demo GmbH</span></p>\r\n<p><span style=\"font-size: xx-small;\">Steuer-Nr <br />UST-ID: <br />Finanzamt </span><span style=\"font-size: xx-small;\">Musterstadt</span></p>\r\n</td>\r\n<td style=\"width: 25%;\">\r\n<p><span style=\"font-size: xx-small;\">Bankverbindung</span></p>\r\n<p><span style=\"font-size: xx-small;\">Sparkasse Musterstadt<br />BLZ: <br />Konto: </span></p>\r\n<span style=\"font-size: xx-small;\">aaaa<br /></span></td>\r\n<td style=\"width: 25%;\">\r\n<p><span style=\"font-size: xx-small;\">AGB<br /></span></p>\r\n<p><span style=\"font-size: xx-small;\">Gerichtsstand ist Musterstadt<br />Erf&uuml;llungsort Musterstadt<br />Gelieferte Ware bleibt bis zur vollst&auml;ndigen Bezahlung unser Eigentum</span></p>\r\n</td>\r\n<td style=\"width: 25%;\">\r\n<p><span style=\"font-size: xx-small;\">Gesch&auml;ftsf&uuml;hrer</span></p>\r\n<p><span style=\"font-size: xx-small;\">Max Mustermann</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(82,2,'Content_Amount','margin-left:90mm;',''),(83,2,'Content_Info','','<p>Die Ware bleibt bis zur vollst&auml;ndigen Bezahlung unser Eigentum</p>'),(84,3,'Body','width:100%;\r\nfont-family: Verdana, Arial, Helvetica, sans-serif;\r\nfont-size:11px;',''),(85,3,'Logo','height: 20mm;\r\nwidth: 90mm;\r\nmargin-bottom:5mm;','<p><img src=\"http://www.shopware.de/logo/logo.png \" alt=\"\" /></p>'),(86,3,'Header_Recipient','',''),(87,3,'Header','height: 60mm;',''),(88,3,'Header_Sender','','<p>Demo GmbH - Stra&szlig;e 3 - 00000 Musterstadt</p>'),(89,3,'Header_Box_Left','width: 120mm;\r\nheight:60mm;\r\nfloat:left;',''),(90,3,'Header_Box_Right','width: 45mm;\r\nheight: 60mm;\r\nfloat:left;\r\nmargin-top:-20px;\r\nmargin-left:5px;','<p><strong>Demo GmbH </strong><br /> Max Mustermann<br /> Stra&szlig;e 3<br /> 00000 Musterstadt<br /> Fon: 01234 / 56789<br /> Fax: 01234 / 			56780<br />info@demo.de<br />www.demo.de</p>'),(91,3,'Header_Box_Bottom','font-size:14px;\r\nheight: 10mm;',''),(92,3,'Content','height: 65mm;\r\nwidth: 170mm;',''),(93,3,'Td','white-space:nowrap;\r\npadding: 5px 0;',''),(94,3,'Td_Name','white-space:normal;',''),(95,3,'Td_Line','border-bottom: 1px solid #999;\r\nheight: 0px;',''),(96,3,'Td_Head','border-bottom:1px solid #000;',''),(97,3,'Footer','width: 170mm;\r\nposition:fixed;\r\nbottom:-20mm;\r\nheight: 15mm;','<table style=\"height: 90px;\" border=\"0\" width=\"100%\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td style=\"width: 25%;\">\r\n<p><span style=\"font-size: xx-small;\">Demo GmbH</span></p>\r\n<p><span style=\"font-size: xx-small;\">Steuer-Nr <br />UST-ID: <br />Finanzamt </span><span style=\"font-size: xx-small;\">Musterstadt</span></p>\r\n</td>\r\n<td style=\"width: 25%;\">\r\n<p><span style=\"font-size: xx-small;\">Bankverbindung</span></p>\r\n<p><span style=\"font-size: xx-small;\">Sparkasse Musterstadt<br />BLZ: <br />Konto: </span></p>\r\n<span style=\"font-size: xx-small;\">aaaa<br /></span></td>\r\n<td style=\"width: 25%;\">\r\n<p><span style=\"font-size: xx-small;\">AGB<br /></span></p>\r\n<p><span style=\"font-size: xx-small;\">Gerichtsstand ist Musterstadt<br />Erf&uuml;llungsort Musterstadt<br />Gelieferte Ware bleibt bis zur vollst&auml;ndigen Bezahlung unser Eigentum</span></p>\r\n</td>\r\n<td style=\"width: 25%;\">\r\n<p><span style=\"font-size: xx-small;\">Gesch&auml;ftsf&uuml;hrer</span></p>\r\n<p><span style=\"font-size: xx-small;\">Max Mustermann</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(98,3,'Content_Amount','margin-left:90mm;',''),(99,3,'Content_Info','','<p>Die Ware bleibt bis zur vollst&auml;ndigen Bezahlung unser Eigentum</p>'),(100,4,'Body','width:100%;\r\nfont-family: Verdana, Arial, Helvetica, sans-serif;\r\nfont-size:11px;',''),(101,4,'Logo','height: 20mm;\r\nwidth: 90mm;\r\nmargin-bottom:5mm;','<p><img src=\"http://www.shopware.de/logo/logo.png \" alt=\"\" /></p>'),(102,4,'Header_Recipient','',''),(103,4,'Header','height: 60mm;',''),(104,4,'Header_Sender','','<p>Demo GmbH - Stra&szlig;e 3 - 00000 Musterstadt</p>'),(105,4,'Header_Box_Left','width: 120mm;\r\nheight:60mm;\r\nfloat:left;',''),(106,4,'Header_Box_Right','width: 45mm;\r\nheight: 60mm;\r\nfloat:left;\r\nmargin-top:-20px;\r\nmargin-left:5px;','<p><strong>Demo GmbH </strong><br /> Max Mustermann<br /> Stra&szlig;e 3<br /> 00000 Musterstadt<br /> Fon: 01234 / 56789<br /> Fax: 01234 / 			56780<br />info@demo.de<br />www.demo.de</p>'),(107,4,'Header_Box_Bottom','font-size:14px;\r\nheight: 10mm;',''),(108,4,'Content','height: 65mm;\r\nwidth: 170mm;',''),(109,4,'Td','white-space:nowrap;\r\npadding: 5px 0;',''),(110,4,'Td_Name','white-space:normal;',''),(111,4,'Td_Line','border-bottom: 1px solid #999;\r\nheight: 0px;',''),(112,4,'Td_Head','border-bottom:1px solid #000;',''),(113,4,'Footer','width: 170mm;\r\nposition:fixed;\r\nbottom:-20mm;\r\nheight: 15mm;','<table style=\"height: 90px;\" border=\"0\" width=\"100%\">\r\n<tbody>\r\n<tr valign=\"top\">\r\n<td style=\"width: 25%;\">\r\n<p><span style=\"font-size: xx-small;\">Demo GmbH</span></p>\r\n<p><span style=\"font-size: xx-small;\">Steuer-Nr <br />UST-ID: <br />Finanzamt </span><span style=\"font-size: xx-small;\">Musterstadt</span></p>\r\n</td>\r\n<td style=\"width: 25%;\">\r\n<p><span style=\"font-size: xx-small;\">Bankverbindung</span></p>\r\n<p><span style=\"font-size: xx-small;\">Sparkasse Musterstadt<br />BLZ: <br />Konto: </span></p>\r\n<span style=\"font-size: xx-small;\">aaaa<br /></span></td>\r\n<td style=\"width: 25%;\">\r\n<p><span style=\"font-size: xx-small;\">AGB<br /></span></p>\r\n<p><span style=\"font-size: xx-small;\">Gerichtsstand ist Musterstadt<br />Erf&uuml;llungsort Musterstadt<br />Gelieferte Ware bleibt bis zur vollst&auml;ndigen Bezahlung unser Eigentum</span></p>\r\n</td>\r\n<td style=\"width: 25%;\">\r\n<p><span style=\"font-size: xx-small;\">Gesch&auml;ftsf&uuml;hrer</span></p>\r\n<p><span style=\"font-size: xx-small;\">Max Mustermann</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>'),(114,4,'Content_Amount','margin-left:90mm;',''),(115,4,'Content_Info','','<p>Die Ware bleibt bis zur vollst&auml;ndigen Bezahlung unser Eigentum</p>');
/*!40000 ALTER TABLE `s_core_documents_box` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_engine_elements`
--

DROP TABLE IF EXISTS `s_core_engine_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_engine_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupID` int(11) unsigned NOT NULL DEFAULT '0',
  `domname` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `default` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `store` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `required` int(1) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variantable` int(1) unsigned NOT NULL,
  `help` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `translatable` int(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `databasefield` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_engine_elements`
--

LOCK TABLES `s_core_engine_elements` WRITE;
/*!40000 ALTER TABLE `s_core_engine_elements` DISABLE KEYS */;
INSERT INTO `s_core_engine_elements` VALUES (22,7,'attr[3]','','textarea',NULL,'Kommentar',0,3,'attr3','',0,'Optionaler Kommentar',1),(33,7,'attr[1]','','text',NULL,'Freitext-1',0,1,'attr1','w200',1,'Freitext zur Anzeige auf der Detailseite',1),(34,7,'attr[2]','','text',NULL,'Freitext-2',0,2,'attr2','w200',1,'Freitext zur Anzeige auf der Detailseite',1);
/*!40000 ALTER TABLE `s_core_engine_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_engine_groups`
--

DROP TABLE IF EXISTS `s_core_engine_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_engine_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variantable` int(1) unsigned NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_engine_groups`
--

LOCK TABLES `s_core_engine_groups` WRITE;
/*!40000 ALTER TABLE `s_core_engine_groups` DISABLE KEYS */;
INSERT INTO `s_core_engine_groups` VALUES (1,'basic','Stammdaten','column',1,1),(2,'description','Beschreibung',NULL,0,2),(3,'advanced','Einstellungen','column',1,5),(7,'additional','Zusatzfelder',NULL,1,7),(8,'reference_price','Grundpreisberechnung',NULL,0,4),(10,'price','Preise und Kundengruppen',NULL,0,3),(11,'property','Eigenschaften',NULL,0,6);
/*!40000 ALTER TABLE `s_core_engine_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_licenses`
--

DROP TABLE IF EXISTS `s_core_licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_licenses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `license` text COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(11) unsigned NOT NULL,
  `source` int(11) unsigned NOT NULL,
  `added` date NOT NULL,
  `creation` date DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `active` int(1) NOT NULL,
  `plugin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_licenses`
--

LOCK TABLES `s_core_licenses` WRITE;
/*!40000 ALTER TABLE `s_core_licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_locales`
--

DROP TABLE IF EXISTS `s_core_locales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_locales` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `territory` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_locales`
--

LOCK TABLES `s_core_locales` WRITE;
/*!40000 ALTER TABLE `s_core_locales` DISABLE KEYS */;
INSERT INTO `s_core_locales` VALUES (1,'de_DE','Deutsch','Deutschland'),(2,'en_GB','Englisch','Vereinigtes Königreich'),(3,'aa_DJ','Afar','Dschibuti'),(4,'aa_ER','Afar','Eritrea'),(5,'aa_ET','Afar','Äthiopien'),(6,'af_NA','Afrikaans','Namibia'),(7,'af_ZA','Afrikaans','Südafrika'),(8,'ak_GH','Akan','Ghana'),(9,'am_ET','Amharisch','Äthiopien'),(10,'ar_AE','Arabisch','Vereinigte Arabische Emirate'),(11,'ar_BH','Arabisch','Bahrain'),(12,'ar_DZ','Arabisch','Algerien'),(13,'ar_EG','Arabisch','Ägypten'),(14,'ar_IQ','Arabisch','Irak'),(15,'ar_JO','Arabisch','Jordanien'),(16,'ar_KW','Arabisch','Kuwait'),(17,'ar_LB','Arabisch','Libanon'),(18,'ar_LY','Arabisch','Libyen'),(19,'ar_MA','Arabisch','Marokko'),(20,'ar_OM','Arabisch','Oman'),(21,'ar_QA','Arabisch','Katar'),(22,'ar_SA','Arabisch','Saudi-Arabien'),(23,'ar_SD','Arabisch','Sudan'),(24,'ar_SY','Arabisch','Syrien'),(25,'ar_TN','Arabisch','Tunesien'),(26,'ar_YE','Arabisch','Jemen'),(27,'as_IN','Assamesisch','Indien'),(28,'az_AZ','Aserbaidschanisch','Aserbaidschan'),(29,'be_BY','Weißrussisch','Belarus'),(30,'bg_BG','Bulgarisch','Bulgarien'),(31,'bn_BD','Bengalisch','Bangladesch'),(32,'bn_IN','Bengalisch','Indien'),(33,'bo_CN','Tibetisch','China'),(34,'bo_IN','Tibetisch','Indien'),(35,'bs_BA','Bosnisch','Bosnien und Herzegowina'),(36,'byn_ER','Blin','Eritrea'),(37,'ca_ES','Katalanisch','Spanien'),(38,'cch_NG','Atsam','Nigeria'),(39,'cs_CZ','Tschechisch','Tschechische Republik'),(40,'cy_GB','Walisisch','Vereinigtes Königreich'),(41,'da_DK','Dänisch','Dänemark'),(42,'de_AT','Deutsch','Österreich'),(43,'de_BE','Deutsch','Belgien'),(44,'de_CH','Deutsch','Schweiz'),(45,'de_LI','Deutsch','Liechtenstein'),(46,'de_LU','Deutsch','Luxemburg'),(47,'dv_MV','Maledivisch','Malediven'),(48,'dz_BT','Bhutanisch','Bhutan'),(49,'ee_GH','Ewe-Sprache','Ghana'),(50,'ee_TG','Ewe-Sprache','Togo'),(51,'el_CY','Griechisch','Zypern'),(52,'el_GR','Griechisch','Griechenland'),(53,'en_AS','Englisch','Amerikanisch-Samoa'),(54,'en_AU','Englisch','Australien'),(55,'en_BE','Englisch','Belgien'),(56,'en_BW','Englisch','Botsuana'),(57,'en_BZ','Englisch','Belize'),(58,'en_CA','Englisch','Kanada'),(59,'en_GU','Englisch','Guam'),(60,'en_HK','Englisch','Sonderverwaltungszone Hongkong'),(61,'en_IE','Englisch','Irland'),(62,'en_IN','Englisch','Indien'),(63,'en_JM','Englisch','Jamaika'),(64,'en_MH','Englisch','Marshallinseln'),(65,'en_MP','Englisch','Nördliche Marianen'),(66,'en_MT','Englisch','Malta'),(67,'en_NA','Englisch','Namibia'),(68,'en_NZ','Englisch','Neuseeland'),(69,'en_PH','Englisch','Philippinen'),(70,'en_PK','Englisch','Pakistan'),(71,'en_SG','Englisch','Singapur'),(72,'en_TT','Englisch','Trinidad und Tobago'),(73,'en_UM','Englisch','Amerikanisch-Ozeanien'),(74,'en_US','Englisch','Vereinigte Staaten'),(75,'en_VI','Englisch','Amerikanische Jungferninseln'),(76,'en_ZA','Englisch','Südafrika'),(77,'en_ZW','Englisch','Simbabwe'),(78,'es_AR','Spanisch','Argentinien'),(79,'es_BO','Spanisch','Bolivien'),(80,'es_CL','Spanisch','Chile'),(81,'es_CO','Spanisch','Kolumbien'),(82,'es_CR','Spanisch','Costa Rica'),(83,'es_DO','Spanisch','Dominikanische Republik'),(84,'es_EC','Spanisch','Ecuador'),(85,'es_ES','Spanisch','Spanien'),(86,'es_GT','Spanisch','Guatemala'),(87,'es_HN','Spanisch','Honduras'),(88,'es_MX','Spanisch','Mexiko'),(89,'es_NI','Spanisch','Nicaragua'),(90,'es_PA','Spanisch','Panama'),(91,'es_PE','Spanisch','Peru'),(92,'es_PR','Spanisch','Puerto Rico'),(93,'es_PY','Spanisch','Paraguay'),(94,'es_SV','Spanisch','El Salvador'),(95,'es_US','Spanisch','Vereinigte Staaten'),(96,'es_UY','Spanisch','Uruguay'),(97,'es_VE','Spanisch','Venezuela'),(98,'et_EE','Estnisch','Estland'),(99,'eu_ES','Baskisch','Spanien'),(100,'fa_AF','Persisch','Afghanistan'),(101,'fa_IR','Persisch','Iran'),(102,'fi_FI','Finnisch','Finnland'),(103,'fil_PH','Filipino','Philippinen'),(104,'fo_FO','Färöisch','Färöer'),(105,'fr_BE','Französisch','Belgien'),(106,'fr_CA','Französisch','Kanada'),(107,'fr_CH','Französisch','Schweiz'),(108,'fr_FR','Französisch','Frankreich'),(109,'fr_LU','Französisch','Luxemburg'),(110,'fr_MC','Französisch','Monaco'),(111,'fr_SN','Französisch','Senegal'),(112,'fur_IT','Friulisch','Italien'),(113,'ga_IE','Irisch','Irland'),(114,'gaa_GH','Ga-Sprache','Ghana'),(115,'gez_ER','Geez','Eritrea'),(116,'gez_ET','Geez','Äthiopien'),(117,'gl_ES','Galizisch','Spanien'),(118,'gsw_CH','Schweizerdeutsch','Schweiz'),(119,'gu_IN','Gujarati','Indien'),(120,'gv_GB','Manx','Vereinigtes Königreich'),(121,'ha_GH','Hausa','Ghana'),(122,'ha_NE','Hausa','Niger'),(123,'ha_NG','Hausa','Nigeria'),(124,'ha_SD','Hausa','Sudan'),(125,'haw_US','Hawaiisch','Vereinigte Staaten'),(126,'he_IL','Hebräisch','Israel'),(127,'hi_IN','Hindi','Indien'),(128,'hr_HR','Kroatisch','Kroatien'),(129,'hu_HU','Ungarisch','Ungarn'),(130,'hy_AM','Armenisch','Armenien'),(131,'id_ID','Indonesisch','Indonesien'),(132,'ig_NG','Igbo-Sprache','Nigeria'),(133,'ii_CN','Sichuan Yi','China'),(134,'is_IS','Isländisch','Island'),(135,'it_CH','Italienisch','Schweiz'),(136,'it_IT','Italienisch','Italien'),(137,'ja_JP','Japanisch','Japan'),(138,'ka_GE','Georgisch','Georgien'),(139,'kaj_NG','Jju','Nigeria'),(140,'kam_KE','Kamba','Kenia'),(141,'kcg_NG','Tyap','Nigeria'),(142,'kfo_CI','Koro','Côte d?Ivoire'),(143,'kk_KZ','Kasachisch','Kasachstan'),(144,'kl_GL','Grönländisch','Grönland'),(145,'km_KH','Kambodschanisch','Kambodscha'),(146,'kn_IN','Kannada','Indien'),(147,'ko_KR','Koreanisch','Republik Korea'),(148,'kok_IN','Konkani','Indien'),(149,'kpe_GN','Kpelle-Sprache','Guinea'),(150,'kpe_LR','Kpelle-Sprache','Liberia'),(151,'ku_IQ','Kurdisch','Irak'),(152,'ku_IR','Kurdisch','Iran'),(153,'ku_SY','Kurdisch','Syrien'),(154,'ku_TR','Kurdisch','Türkei'),(155,'kw_GB','Kornisch','Vereinigtes Königreich'),(156,'ky_KG','Kirgisisch','Kirgisistan'),(157,'ln_CD','Lingala','Demokratische Republik Kongo'),(158,'ln_CG','Lingala','Kongo'),(159,'lo_LA','Laotisch','Laos'),(160,'lt_LT','Litauisch','Litauen'),(161,'lv_LV','Lettisch','Lettland'),(162,'mk_MK','Mazedonisch','Mazedonien'),(163,'ml_IN','Malayalam','Indien'),(164,'mn_CN','Mongolisch','China'),(165,'mn_MN','Mongolisch','Mongolei'),(166,'mr_IN','Marathi','Indien'),(167,'ms_BN','Malaiisch','Brunei Darussalam'),(168,'ms_MY','Malaiisch','Malaysia'),(169,'mt_MT','Maltesisch','Malta'),(170,'my_MM','Birmanisch','Myanmar'),(171,'nb_NO','Norwegisch Bokmål','Norwegen'),(172,'nds_DE','Niederdeutsch','Deutschland'),(173,'ne_IN','Nepalesisch','Indien'),(174,'ne_NP','Nepalesisch','Nepal'),(175,'nl_BE','Niederländisch','Belgien'),(176,'nl_NL','Niederländisch','Niederlande'),(177,'nn_NO','Norwegisch Nynorsk','Norwegen'),(178,'nr_ZA','Süd-Ndebele-Sprache','Südafrika'),(179,'nso_ZA','Nord-Sotho-Sprache','Südafrika'),(180,'ny_MW','Nyanja-Sprache','Malawi'),(181,'oc_FR','Okzitanisch','Frankreich'),(182,'om_ET','Oromo','Äthiopien'),(183,'om_KE','Oromo','Kenia'),(184,'or_IN','Orija','Indien'),(185,'pa_IN','Pandschabisch','Indien'),(186,'pa_PK','Pandschabisch','Pakistan'),(187,'pl_PL','Polnisch','Polen'),(188,'ps_AF','Paschtu','Afghanistan'),(189,'pt_BR','Portugiesisch','Brasilien'),(190,'pt_PT','Portugiesisch','Portugal'),(191,'ro_MD','Rumänisch','Republik Moldau'),(192,'ro_RO','Rumänisch','Rumänien'),(193,'ru_RU','Russisch','Russische Föderation'),(194,'ru_UA','Russisch','Ukraine'),(195,'rw_RW','Ruandisch','Ruanda'),(196,'sa_IN','Sanskrit','Indien'),(197,'se_FI','Nord-Samisch','Finnland'),(198,'se_NO','Nord-Samisch','Norwegen'),(199,'sh_BA','Serbo-Kroatisch','Bosnien und Herzegowina'),(200,'sh_CS','Serbo-Kroatisch','Serbien und Montenegro'),(201,'sh_YU','Serbo-Kroatisch',''),(202,'si_LK','Singhalesisch','Sri Lanka'),(203,'sid_ET','Sidamo','Äthiopien'),(204,'sk_SK','Slowakisch','Slowakei'),(205,'sl_SI','Slowenisch','Slowenien'),(206,'so_DJ','Somali','Dschibuti'),(207,'so_ET','Somali','Äthiopien'),(208,'so_KE','Somali','Kenia'),(209,'so_SO','Somali','Somalia'),(210,'sq_AL','Albanisch','Albanien'),(211,'sr_BA','Serbisch','Bosnien und Herzegowina'),(212,'sr_CS','Serbisch','Serbien und Montenegro'),(213,'sr_ME','Serbisch','Montenegro'),(214,'sr_RS','Serbisch','Serbien'),(215,'sr_YU','Serbisch',''),(216,'ss_SZ','Swazi','Swasiland'),(217,'ss_ZA','Swazi','Südafrika'),(218,'st_LS','Süd-Sotho-Sprache','Lesotho'),(219,'st_ZA','Süd-Sotho-Sprache','Südafrika'),(220,'sv_FI','Schwedisch','Finnland'),(221,'sv_SE','Schwedisch','Schweden'),(222,'sw_KE','Suaheli','Kenia'),(223,'sw_TZ','Suaheli','Tansania'),(224,'syr_SY','Syrisch','Syrien'),(225,'ta_IN','Tamilisch','Indien'),(226,'te_IN','Telugu','Indien'),(227,'tg_TJ','Tadschikisch','Tadschikistan'),(228,'th_TH','Thailändisch','Thailand'),(229,'ti_ER','Tigrinja','Eritrea'),(230,'ti_ET','Tigrinja','Äthiopien'),(231,'tig_ER','Tigre','Eritrea'),(232,'tn_ZA','Tswana-Sprache','Südafrika'),(233,'to_TO','Tongaisch','Tonga'),(234,'tr_TR','Türkisch','Türkei'),(236,'ts_ZA','Tsonga','Südafrika'),(237,'tt_RU','Tatarisch','Russische Föderation'),(238,'ug_CN','Uigurisch','China'),(239,'uk_UA','Ukrainisch','Ukraine'),(240,'ur_IN','Urdu','Indien'),(241,'ur_PK','Urdu','Pakistan'),(242,'uz_AF','Usbekisch','Afghanistan'),(243,'uz_UZ','Usbekisch','Usbekistan'),(244,'ve_ZA','Venda-Sprache','Südafrika'),(245,'vi_VN','Vietnamesisch','Vietnam'),(246,'wal_ET','Walamo-Sprache','Äthiopien'),(247,'wo_SN','Wolof','Senegal'),(248,'xh_ZA','Xhosa','Südafrika'),(249,'yo_NG','Yoruba','Nigeria'),(250,'zh_CN','Chinesisch','China'),(251,'zh_HK','Chinesisch','Sonderverwaltungszone Hongkong'),(252,'zh_MO','Chinesisch','Sonderverwaltungszone Macao'),(253,'zh_SG','Chinesisch','Singapur'),(254,'zh_TW','Chinesisch','Taiwan'),(255,'zu_ZA','Zulu','Südafrika');
/*!40000 ALTER TABLE `s_core_locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_log`
--

DROP TABLE IF EXISTS `s_core_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_log`
--

LOCK TABLES `s_core_log` WRITE;
/*!40000 ALTER TABLE `s_core_log` DISABLE KEYS */;
INSERT INTO `s_core_log` VALUES (1,'backend','Versandkosten Verwaltung','Einstellungen wurden erfolgreich gespeichert.','2012-08-28 10:38:26','Administrator','217.86.247.178','Mozilla/5.0 (Windows NT 6.1; WOW64; rv:14.0) Gecko/20100101 Firefox/14.0.1 FirePHP/0.7.1','');
/*!40000 ALTER TABLE `s_core_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_menu`
--

DROP TABLE IF EXISTS `s_core_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) unsigned DEFAULT NULL,
  `hyperlink` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `onclick` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `active` int(1) NOT NULL DEFAULT '0',
  `pluginID` int(11) unsigned DEFAULT NULL,
  `resourceID` int(11) DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shortcut` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`parent`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_menu`
--

LOCK TABLES `s_core_menu` WRITE;
/*!40000 ALTER TABLE `s_core_menu` DISABLE KEYS */;
INSERT INTO `s_core_menu` VALUES (1,NULL,'','Artikel',NULL,NULL,'ico package_green',0,1,NULL,NULL,'Article',NULL,NULL),(2,1,'','Anlegen','',NULL,'sprite-inbox--plus',-3,1,NULL,NULL,'Article','STRG + ALT + N','Detail'),(4,1,'','Kategorien','',NULL,'sprite-blue-folders-stack',0,1,NULL,23,'Category',NULL,'Index'),(6,1,'','Hersteller',NULL,NULL,'sprite-truck',2,1,NULL,NULL,'Supplier',NULL,'Index'),(7,NULL,'','Inhalte',NULL,NULL,'ico2 note03',0,1,NULL,NULL,'Content',NULL,NULL),(8,30,'','Banner',NULL,NULL,'sprite-image-medium',0,1,NULL,2,'Banner',NULL,'Index'),(9,30,'','Einkaufswelten','',NULL,'sprite-pin',1,1,NULL,NULL,'Emotion',NULL,'Index'),(10,30,'','Gutscheine',NULL,NULL,'sprite-mail-open-image',3,1,NULL,8,'Voucher',NULL,'Index'),(11,30,'','Pr&auml;mienartikel',NULL,NULL,'sprite-star',2,1,NULL,7,'Premium',NULL,'Index'),(12,30,'','Produktexporte',NULL,NULL,'sprite-folder-export',5,1,NULL,11,'ProductFeed',NULL,'Index'),(15,7,'','Shopseiten',NULL,NULL,'sprite-documents',0,1,NULL,NULL,'Site',NULL,'Index'),(20,NULL,'','Kunden',NULL,NULL,'ico customer',0,1,NULL,NULL,'Customer',NULL,NULL),(21,20,'','Kundenliste',NULL,NULL,'sprite-ui-scroll-pane-detail',0,1,NULL,NULL,'Customer','STRG + ALT + K','Index'),(22,20,'','Bestellungen',NULL,NULL,'sprite-sticky-notes-pin',0,1,NULL,NULL,'Order','STRG + ALT + B','Index'),(23,NULL,'','Einstellungen',NULL,NULL,'ico2 wrench_screwdriver',0,1,NULL,NULL,'ConfigurationMenu',NULL,NULL),(25,23,'','Benutzerverwaltung',NULL,NULL,'sprite-user-silhouette',-2,1,NULL,35,'UserManager',NULL,'Index'),(26,23,'','Versandkosten',NULL,NULL,'sprite-envelope--arrow',0,1,NULL,16,'Shipping',NULL,'Index'),(27,23,'','Zahlungsarten',NULL,NULL,'sprite-credit-cards',0,1,NULL,NULL,'Payment',NULL,'Index'),(28,23,'','eMail-Vorlagen',NULL,NULL,'sprite-mail--pencil',0,1,NULL,10,'Mail',NULL,'Index'),(29,23,'','Performance',NULL,NULL,'sprite-bin-full',-5,1,NULL,NULL,'Performance',NULL,'Index'),(30,NULL,'','Marketing',NULL,NULL,'ico2 chart_bar01',0,1,NULL,NULL,'Marketing',NULL,NULL),(31,69,'','Übersicht',NULL,NULL,'sprite-report-paper',-5,1,NULL,13,'Overview',NULL,'Index'),(32,69,'','Statistiken / Diagramme',NULL,NULL,'sprite-chart',-4,1,NULL,26,'Analytics',NULL,'Index'),(40,NULL,'','',NULL,NULL,'ico question_frame shopware-help-menu',0,1,NULL,NULL,NULL,NULL,NULL),(41,114,'','Onlinehilfe aufrufen','window.open(\'http://www.shopware.de/wiki\',\'Shopware\',\'width=800,height=550,scrollbars=yes\')',NULL,'sprite-lifebuoy',0,1,NULL,NULL,'Onlinehelp',NULL,NULL),(44,40,'','Über Shopware','createShopwareVersionMessage()',NULL,'sprite-shopware-logo',2,1,NULL,NULL,'AboutShopware',NULL,'Index'),(46,7,'','Import/Export','',NULL,'sprite-arrow-circle-double-135',3,1,NULL,34,'ImportExport',NULL,'Index'),(50,1,'','Bewertungen',NULL,NULL,'sprite-balloon',3,1,NULL,9,'Vote',NULL,'Index'),(56,30,'','Partnerprogramm','',NULL,'sprite-xfn-colleague',6,1,NULL,22,'Partner',NULL,'Index'),(57,7,'','Formulare',NULL,NULL,'sprite-application-form',2,1,NULL,NULL,'Form',NULL,'Index'),(58,30,'','Newsletter','',NULL,'sprite-paper-plane',7,1,NULL,32,'NewsletterManager',NULL,'Index'),(59,69,'','Abbruch-Analyse','',NULL,'sprite-chart-down-color',0,1,NULL,25,'CanceledOrder',NULL,'Index'),(62,23,'','Riskmanagement','',NULL,'sprite-funnel--exclamation',0,1,NULL,NULL,'RiskManagement',NULL,'Index'),(63,23,'','Systeminfo',NULL,NULL,'sprite-blueprint',-3,1,40,19,'Systeminfo',NULL,'Index'),(64,7,'','Medienverwaltung',NULL,NULL,'sprite-inbox-image',4,1,NULL,27,'MediaManager',NULL,'Index'),(65,20,'','Zahlungen',NULL,NULL,'sprite-money-coin',0,1,NULL,NULL,'Payments',NULL,NULL),(66,1,'','Übersicht','',NULL,'sprite-ui-scroll-pane-list',-2,1,NULL,13,'ArticleList','STRG + ALT + O','Index'),(68,23,'','Logfile','',NULL,'sprite-cards-stack',-2,1,NULL,NULL,'Log',NULL,'Index'),(69,30,'','Auswertungen',NULL,NULL,'sprite-chart',-1,1,NULL,NULL,'AnalysisMenu',NULL,NULL),(72,1,'','Eigenschaften','',NULL,'sprite-property-blue',0,1,NULL,NULL,'Property',NULL,'Index'),(75,20,'','Anlegen','',NULL,'sprite-user--plus',-1,1,NULL,NULL,'Customer',NULL,'Detail'),(84,69,'','E-Mail Benachrichtigung','',NULL,'sprite-mail-forward',4,1,NULL,24,'Notification',NULL,'Index'),(85,7,'','Blog','',NULL,'sprite-application-blog',1,1,NULL,28,'Blog',NULL,'Index'),(88,114,'','Zum Forum','window.open(\'http://www.shopware-community.de\',\'Shopware\',\'width=800,height=550,scrollbars=yes\')',NULL,'sprite-balloons-box',-1,1,NULL,NULL,'Forum',NULL,NULL),(91,29,'','Shopcache leeren',NULL,NULL,'sprite-edit-shade',1,1,NULL,NULL,'Performance','STRG + ALT + X','Config'),(107,23,'','Textbausteine',NULL,NULL,'sprite-edit-shade',0,1,NULL,NULL,'Snippet',NULL,'Index'),(109,40,'','Tastaturk&uuml;rzel','createKeyNavOverlay()',NULL,'sprite-keyboard-command',1,1,NULL,NULL,'ShortCutMenu',NULL,'Index'),(110,23,'','Grundeinstellungen',NULL,NULL,'sprite-wrench-screwdriver',-5,1,NULL,NULL,'Config',NULL,'Index'),(114,40,'','Hilfe',NULL,NULL,'sprite-lifebuoy',0,1,NULL,NULL,'HelpMenu',NULL,NULL),(115,40,'','Feedback senden',NULL,NULL,'sprite-briefcase--arrow',0,1,NULL,NULL,'BetaFeedback',NULL,'Index'),(116,23,'','Plugin Manager',NULL,NULL,'sprite-application-block',0,1,46,36,'PluginManager',NULL,'Index'),(118,40,'','SwagUpdate',NULL,NULL,'sprite-arrow-continue-090',0,1,55,NULL,'SwagUpdate',NULL,'Index');
/*!40000 ALTER TABLE `s_core_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_multilanguage`
--

DROP TABLE IF EXISTS `s_core_multilanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_multilanguage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mainID` int(11) unsigned DEFAULT NULL,
  `isocode` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `locale` int(11) unsigned NOT NULL,
  `parentID` int(11) unsigned NOT NULL,
  `flagstorefront` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flagbackend` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `skipbackend` int(1) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `defaultcustomergroup` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `doc_template` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0/de/forms',
  `separate_numbers` tinyint(4) NOT NULL,
  `domainaliase` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `defaultcurrency` int(11) NOT NULL,
  `default` int(1) NOT NULL,
  `switchCurrencies` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `switchLanguages` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `scoped_registration` int(1) DEFAULT NULL,
  `fallback` int(11) unsigned DEFAULT NULL,
  `navigation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_multilanguage`
--

LOCK TABLES `s_core_multilanguage` WRITE;
/*!40000 ALTER TABLE `s_core_multilanguage` DISABLE KEYS */;
INSERT INTO `s_core_multilanguage` VALUES (1,NULL,'1',1,3,'','de.png',1,'Deutsch','EK','orange','orange',0,'',1,1,'1|2','1|6',NULL,0,'');
/*!40000 ALTER TABLE `s_core_multilanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_optin`
--

DROP TABLE IF EXISTS `s_core_optin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_optin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datum` datetime NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`),
  KEY `datum` (`datum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_optin`
--

LOCK TABLES `s_core_optin` WRITE;
/*!40000 ALTER TABLE `s_core_optin` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_optin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_payment_data`
--

DROP TABLE IF EXISTS `s_core_payment_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_payment_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_mean_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `use_billing_data` int(1) DEFAULT NULL,
  `bankname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bic` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iban` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_holder` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `payment_mean_id_2` (`payment_mean_id`,`user_id`),
  KEY `payment_mean_id` (`payment_mean_id`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_payment_data`
--

LOCK TABLES `s_core_payment_data` WRITE;
/*!40000 ALTER TABLE `s_core_payment_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_payment_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_payment_instance`
--

DROP TABLE IF EXISTS `s_core_payment_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_payment_instance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_mean_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_holder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bic` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iban` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(20,4) DEFAULT NULL,
  `created_at` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_mean_id` (`payment_mean_id`),
  KEY `payment_mean_id_2` (`payment_mean_id`),
  KEY `order_id` (`order_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_payment_instance`
--

LOCK TABLES `s_core_payment_instance` WRITE;
/*!40000 ALTER TABLE `s_core_payment_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_payment_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_paymentmeans`
--

DROP TABLE IF EXISTS `s_core_paymentmeans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_paymentmeans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `hide` int(1) NOT NULL,
  `additionaldescription` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `debit_percent` double NOT NULL DEFAULT '0',
  `surcharge` double NOT NULL DEFAULT '0',
  `surchargestring` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `esdactive` int(1) NOT NULL,
  `embediframe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hideprospect` int(1) NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pluginID` int(11) unsigned DEFAULT NULL,
  `source` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_paymentmeans`
--

LOCK TABLES `s_core_paymentmeans` WRITE;
/*!40000 ALTER TABLE `s_core_paymentmeans` DISABLE KEYS */;
INSERT INTO `s_core_paymentmeans` VALUES (2,'debit','Lastschrift','debit.tpl','debit.php','s_user_debit',0,'Zusatztext',0,0,'',4,1,0,'',0,NULL,NULL,NULL),(3,'cash','Nachnahme','cash.tpl','cash.php','',0,'(zzgl. 2,00 Euro Nachnahmegebühren)',0,0,'',2,1,0,'',0,NULL,NULL,NULL),(4,'invoice','Rechnung','invoice.tpl','invoice.php','',0,'Sie zahlen einfach und bequem auf Rechnung. Shopware bietet z.B. auch die Möglichkeit, Rechnung automatisiert erst ab der 2. Bestellung für Kunden zur Verfügung zu stellen, um Zahlungsausfälle zu vermeiden.',0,0,'',3,1,1,'',0,NULL,NULL,NULL),(5,'prepayment','Vorkasse','prepayment.tpl','prepayment.php','',0,'Sie zahlen einfach vorab und erhalten die Ware bequem und günstig bei Zahlungseingang nach Hause geliefert.',0,0,'',1,1,0,'',0,NULL,NULL,NULL),(6,'sepa','SEPA','sepa.tpl','sepa','',0,'SEPA debit',0,0,'',5,0,0,'',0,'',NULL,1);
/*!40000 ALTER TABLE `s_core_paymentmeans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_paymentmeans_attributes`
--

DROP TABLE IF EXISTS `s_core_paymentmeans_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_paymentmeans_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paymentmeanID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `paymentmeanID` (`paymentmeanID`),
  CONSTRAINT `s_core_paymentmeans_attributes_ibfk_1` FOREIGN KEY (`paymentmeanID`) REFERENCES `s_core_paymentmeans` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_paymentmeans_attributes`
--

LOCK TABLES `s_core_paymentmeans_attributes` WRITE;
/*!40000 ALTER TABLE `s_core_paymentmeans_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_paymentmeans_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_paymentmeans_countries`
--

DROP TABLE IF EXISTS `s_core_paymentmeans_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_paymentmeans_countries` (
  `paymentID` int(11) unsigned NOT NULL,
  `countryID` int(11) unsigned NOT NULL,
  PRIMARY KEY (`paymentID`,`countryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_paymentmeans_countries`
--

LOCK TABLES `s_core_paymentmeans_countries` WRITE;
/*!40000 ALTER TABLE `s_core_paymentmeans_countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_paymentmeans_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_paymentmeans_subshops`
--

DROP TABLE IF EXISTS `s_core_paymentmeans_subshops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_paymentmeans_subshops` (
  `paymentID` int(11) unsigned NOT NULL,
  `subshopID` int(11) unsigned NOT NULL,
  PRIMARY KEY (`paymentID`,`subshopID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_paymentmeans_subshops`
--

LOCK TABLES `s_core_paymentmeans_subshops` WRITE;
/*!40000 ALTER TABLE `s_core_paymentmeans_subshops` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_paymentmeans_subshops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_plugins`
--

DROP TABLE IF EXISTS `s_core_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_plugins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `description_long` mediumtext COLLATE utf8_unicode_ci,
  `active` int(1) unsigned NOT NULL,
  `added` datetime NOT NULL,
  `installation_date` datetime DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `refresh_date` datetime DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `support` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `changes` mediumtext COLLATE utf8_unicode_ci,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `store_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `store_date` datetime DEFAULT NULL,
  `capability_update` int(1) NOT NULL,
  `capability_install` int(1) NOT NULL,
  `capability_enable` int(1) NOT NULL,
  `capability_dummy` int(1) NOT NULL DEFAULT '0',
  `update_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `namespace` (`namespace`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_plugins`
--

LOCK TABLES `s_core_plugins` WRITE;
/*!40000 ALTER TABLE `s_core_plugins` DISABLE KEYS */;
INSERT INTO `s_core_plugins` VALUES (2,'Core','ErrorHandler','ErrorHandler','Default','','',1,'2012-08-28 00:00:00','2010-10-18 00:00:00','2010-10-18 00:00:00',NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(7,'Core','Cron','Cron','Default','','',0,'2012-08-28 00:00:00',NULL,NULL,NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(8,'Core','Router','Router','Default','','',1,'2012-08-28 00:00:00','2010-10-18 00:00:00','2010-10-18 00:00:00',NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(9,'Core','CronBirthday','CronBirthday','Default','','',0,'2012-08-28 00:00:00',NULL,NULL,NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(10,'Core','System','System','Default','','',1,'2012-08-28 00:00:00','2010-10-18 00:00:00','2010-10-18 00:00:00',NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(11,'Core','ViewportForward','ViewportForward','Default','','',1,'2012-08-28 00:00:00','2010-10-18 00:00:00','2010-10-18 00:00:00',NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(12,'Core','Shop','Shop','Default','','',1,'2012-08-28 00:00:00','2010-10-18 00:00:00','2010-10-18 00:00:00',NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(13,'Core','PostFilter','PostFilter','Default','','',1,'2012-08-28 00:00:00','2010-10-18 00:00:00','2010-10-18 00:00:00',NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(14,'Core','CronRating','CronRating','Default','','',0,'2012-08-28 00:00:00',NULL,NULL,NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(15,'Core','ControllerBase','ControllerBase','Default','','',1,'2012-08-28 00:00:00','2010-10-18 00:00:00','2010-10-18 00:00:00',NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(16,'Core','CronStock','CronStock','Default','','',0,'2012-08-28 00:00:00',NULL,NULL,NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(17,'Core','Api','Api','Default','','',1,'2012-08-28 00:00:00','2010-10-18 00:00:00','2010-10-18 00:00:00',NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(18,'Core','License','License','Default','','',1,'2012-08-28 00:00:00','2010-10-18 00:00:00','2010-10-18 00:00:00',NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(19,'Frontend','RouterRewrite','RouterRewrite','Default','','',1,'2012-08-28 00:00:00','2010-10-18 00:00:00','2010-10-18 00:00:00',NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(20,'Frontend','Compare','Compare','Default','','',1,'2012-08-28 00:00:00','2010-10-18 00:00:00','2010-10-18 00:00:00',NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(21,'Frontend','Facebook','Facebook','Default','','',0,'2012-08-28 00:00:00',NULL,NULL,NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(22,'Frontend','Seo','Seo','Default','','',1,'2012-08-28 00:00:00','2010-10-18 00:00:00','2010-10-18 00:00:00',NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(23,'Frontend','LastArticles','LastArticles','Default','','',1,'2012-08-28 00:00:00','2010-10-18 00:00:00','2010-10-18 00:00:00',NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(24,'Frontend','RouterOld','RouterOld','Default','','',1,'2012-08-28 00:00:00','2010-10-18 00:00:00','2010-10-18 00:00:00',NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(26,'Frontend','Google','Google','Default','','',0,'2012-08-28 00:00:00',NULL,NULL,NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(29,'Frontend','AdvancedMenu','AdvancedMenu','Default','','',0,'2012-08-28 00:00:00',NULL,NULL,NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(31,'Frontend','Statistics','Statistics','Default','','',1,'2012-08-28 00:00:00','2010-10-18 00:00:00','2010-10-18 00:00:00',NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(33,'Frontend','Notification','Notification','Default','','',0,'2012-08-28 00:00:00',NULL,NULL,NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(34,'Frontend','TagCloud','TagCloud','Default','','',1,'2012-08-28 00:00:00','2010-10-18 00:00:00','2010-10-18 00:00:00',NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(35,'Frontend','InputFilter','InputFilter','Default','','',1,'2012-08-28 00:00:00','2010-10-18 00:00:00','2010-10-18 00:00:00',NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(36,'Backend','Auth','Auth','Default','','',1,'2012-08-28 00:00:00','2010-10-18 00:00:00','2010-10-18 00:00:00',NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(37,'Backend','Menu','Menu','Default','','',1,'2012-08-28 00:00:00','2010-10-18 00:00:00','2010-10-18 00:00:00',NULL,'shopware AG','Copyright © 2010, shopware AG','','1','http://www.shopware.de/wiki/','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(39,'Frontend','Payment','Payment','Default','','',1,'2012-08-28 00:00:00','2011-05-11 14:06:17','2011-05-11 14:06:17',NULL,'shopware AG','Copyright ? 2011, shopware AG','','1.0.0','http://wiki.shopware.de','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(40,'Backend','Check','Systeminfo','Default','','',1,'2010-10-18 00:00:00','2010-10-18 00:00:00','2010-10-18 00:00:00',NULL,'shopware AG','Copyright © 2011, shopware AG','','1.0.0','http://wiki.shopware.de','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(43,'Backend','Locale','Locale','Default','','',1,'2012-08-27 22:28:53','2012-08-27 22:28:53','2012-08-27 22:28:53',NULL,'shopware AG','Copyright &copy; 2011, shopware AG','','1.0.0','http://wiki.shopware.de','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(44,'Core','RestApi','RestApi','Default','','',1,'2012-07-13 12:03:13','2012-07-13 12:03:36','2012-07-13 12:03:36',NULL,'shopware AG','Copyright © 2012, shopware AG','','1.0.0','http://wiki.shopware.de','','http://www.shopware.de/',NULL,NULL,0,0,0,0,NULL,NULL),(45,'Backend','StoreApi','StoreApi','Default',NULL,NULL,1,'2012-08-19 14:34:36','2012-08-19 14:34:46','2012-08-19 14:34:46','2012-08-21 09:59:19','shopware AG','Copyright © 2012, shopware AG',NULL,'1.0.0',NULL,NULL,NULL,NULL,NULL,1,0,0,0,NULL,NULL),(46,'Core','PluginManager','PluginManager','Default',NULL,NULL,1,'2012-08-19 14:34:36','2012-08-19 14:34:46','2012-08-19 14:34:59','2012-08-21 09:59:19','shopware AG','Copyright © 2012, shopware AG',NULL,'1.0.0',NULL,NULL,NULL,NULL,NULL,1,0,0,0,NULL,NULL),(48,'Core','SelfHealing','SelfHealing','Default',NULL,NULL,1,'2012-10-16 12:13:54','2012-10-16 14:07:23','2012-10-16 14:07:23','2012-10-16 14:07:23','shopware AG','Copyright © 2012, shopware AG',NULL,'1.0.0',NULL,NULL,NULL,NULL,NULL,1,1,1,0,NULL,NULL),(49,'Core','PasswordEncoder','PasswordEncoder','Default',NULL,NULL,1,'2013-04-16 12:13:54','2013-04-16 14:07:23','2013-04-16 14:07:23','2013-04-16 14:07:23','shopware AG','Copyright © 2013, shopware AG',NULL,'1.0.0',NULL,NULL,NULL,NULL,NULL,1,0,0,0,NULL,NULL),(50,'Core','MarketingAggregate','Shopware Marketing Aggregat Funktionen','Default',NULL,NULL,1,'2013-04-30 14:19:13','2013-04-30 14:26:48','2013-04-30 14:26:48','2013-04-30 14:26:51','shopware AG','Copyright © 2012, shopware AG',NULL,'1.0.0',NULL,NULL,'http://www.shopware.de/',NULL,NULL,1,1,1,0,NULL,NULL),(51,'Core','RebuildIndex','Shopware Such- und SEO-Index','Default',NULL,NULL,1,'2013-05-19 10:53:24','2013-05-21 13:28:04','2013-05-21 13:28:04','2013-05-21 13:28:07','shopware AG','Copyright © 2012, shopware AG',NULL,'1.0.0',NULL,NULL,'http://www.shopware.de/',NULL,NULL,1,1,1,0,NULL,NULL),(52,'Core','HttpCache','Frontendcache (HttpCache)','Default',NULL,NULL,0,'2013-05-27 15:57:59','2013-05-27 15:58:09','2013-05-27 15:58:09','2013-05-27 15:58:10','shopware AG','Copyright © 2012, shopware AG',NULL,'1.1.0',NULL,NULL,NULL,NULL,NULL,1,0,1,0,NULL,NULL),(53,'Core','PaymentMethods','Payment Methods','Default','Shopware Payment Methods handling. This plugin is required to handle payment methods, and should not be deactivated',NULL,1,'2013-10-30 08:12:22','2013-10-30 08:13:26','2013-10-30 08:13:26','2013-10-30 08:13:34','shopware AG','Copyright © 2013, shopware AG',NULL,'1.0.0',NULL,NULL,NULL,NULL,NULL,1,0,1,0,NULL,NULL),(54,'Core','Debug','Debug','Default',NULL,NULL,0,'2014-01-17 09:19:05',NULL,NULL,'2014-01-17 09:19:07','shopware AG','Copyright © shopware AG',NULL,'1.0.0',NULL,NULL,NULL,NULL,NULL,1,1,1,0,NULL,NULL),(55,'Backend','SwagUpdate','Shopware Auto Update','Default',NULL,NULL,1,'2014-05-06 09:03:01','2014-05-06 09:03:06','2014-05-06 09:03:06','2014-05-06 09:03:09','shopware AG','Copyright © 2012, shopware AG',NULL,'1.0.0',NULL,NULL,NULL,NULL,NULL,1,1,1,0,NULL,NULL);
/*!40000 ALTER TABLE `s_core_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_pricegroups`
--

DROP TABLE IF EXISTS `s_core_pricegroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_pricegroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_pricegroups`
--

LOCK TABLES `s_core_pricegroups` WRITE;
/*!40000 ALTER TABLE `s_core_pricegroups` DISABLE KEYS */;
INSERT INTO `s_core_pricegroups` VALUES (1,'Standard');
/*!40000 ALTER TABLE `s_core_pricegroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_pricegroups_discounts`
--

DROP TABLE IF EXISTS `s_core_pricegroups_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_pricegroups_discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupID` int(11) NOT NULL,
  `customergroupID` int(11) NOT NULL,
  `discount` double NOT NULL,
  `discountstart` double NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `groupID` (`groupID`,`customergroupID`,`discountstart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_pricegroups_discounts`
--

LOCK TABLES `s_core_pricegroups_discounts` WRITE;
/*!40000 ALTER TABLE `s_core_pricegroups_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_pricegroups_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_rewrite`
--

DROP TABLE IF EXISTS `s_core_rewrite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_rewrite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `search` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `replace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_rewrite`
--

LOCK TABLES `s_core_rewrite` WRITE;
/*!40000 ALTER TABLE `s_core_rewrite` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_rewrite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_rewrite_urls`
--

DROP TABLE IF EXISTS `s_core_rewrite_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_rewrite_urls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `org_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `main` int(1) unsigned NOT NULL,
  `subshopID` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`,`subshopID`),
  KEY `org_path` (`org_path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_rewrite_urls`
--

LOCK TABLES `s_core_rewrite_urls` WRITE;
/*!40000 ALTER TABLE `s_core_rewrite_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_rewrite_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_rulesets`
--

DROP TABLE IF EXISTS `s_core_rulesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_rulesets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paymentID` int(11) NOT NULL,
  `rule1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rule2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_rulesets`
--

LOCK TABLES `s_core_rulesets` WRITE;
/*!40000 ALTER TABLE `s_core_rulesets` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_rulesets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_sessions`
--

DROP TABLE IF EXISTS `s_core_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_sessions` (
  `id` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expiry` int(11) unsigned NOT NULL,
  `expireref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `expiry` (`expiry`),
  KEY `expireref` (`expireref`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_sessions`
--

LOCK TABLES `s_core_sessions` WRITE;
/*!40000 ALTER TABLE `s_core_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_sessions_backend`
--

DROP TABLE IF EXISTS `s_core_sessions_backend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_sessions_backend` (
  `id` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expiry` int(11) unsigned NOT NULL,
  `created` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `expiry` (`expiry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_sessions_backend`
--

LOCK TABLES `s_core_sessions_backend` WRITE;
/*!40000 ALTER TABLE `s_core_sessions_backend` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_sessions_backend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_shop_currencies`
--

DROP TABLE IF EXISTS `s_core_shop_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_shop_currencies` (
  `shop_id` int(11) unsigned NOT NULL,
  `currency_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`shop_id`,`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_shop_currencies`
--

LOCK TABLES `s_core_shop_currencies` WRITE;
/*!40000 ALTER TABLE `s_core_shop_currencies` DISABLE KEYS */;
INSERT INTO `s_core_shop_currencies` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `s_core_shop_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_shop_pages`
--

DROP TABLE IF EXISTS `s_core_shop_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_shop_pages` (
  `shop_id` int(11) unsigned NOT NULL,
  `group_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`shop_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_shop_pages`
--

LOCK TABLES `s_core_shop_pages` WRITE;
/*!40000 ALTER TABLE `s_core_shop_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_shop_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_shops`
--

DROP TABLE IF EXISTS `s_core_shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_shops` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `main_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `base_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `base_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hosts` text COLLATE utf8_unicode_ci NOT NULL,
  `secure` int(1) unsigned NOT NULL,
  `secure_host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secure_base_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template_id` int(11) unsigned DEFAULT NULL,
  `document_template_id` int(11) unsigned DEFAULT NULL,
  `category_id` int(11) unsigned DEFAULT NULL,
  `locale_id` int(11) unsigned DEFAULT NULL,
  `currency_id` int(11) unsigned DEFAULT NULL,
  `customer_group_id` int(11) unsigned DEFAULT NULL,
  `fallback_id` int(11) unsigned DEFAULT NULL,
  `customer_scope` int(1) NOT NULL,
  `default` int(1) unsigned NOT NULL,
  `active` int(1) NOT NULL,
  `always_secure` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `main_id` (`main_id`),
  KEY `host` (`host`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_shops`
--

LOCK TABLES `s_core_shops` WRITE;
/*!40000 ALTER TABLE `s_core_shops` DISABLE KEYS */;
INSERT INTO `s_core_shops` VALUES (1,NULL,'Deutsch',NULL,0,NULL,'',NULL,'',0,NULL,NULL,11,4,3,1,1,1,NULL,0,1,1,0),(2,1,'Englisch','',0,NULL,NULL,NULL,'',0,NULL,NULL,NULL,NULL,4,2,1,1,NULL,0,0,0,0);
/*!40000 ALTER TABLE `s_core_shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_snippets`
--

DROP TABLE IF EXISTS `s_core_snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_snippets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shopID` int(11) unsigned NOT NULL,
  `localeID` int(11) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `dirty` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `namespace` (`namespace`,`shopID`,`name`,`localeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2625 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_snippets`
--

LOCK TABLES `s_core_snippets` WRITE;
/*!40000 ALTER TABLE `s_core_snippets` DISABLE KEYS */;
INSERT INTO `s_core_snippets` VALUES (2587,'frontend/plugins/payment/sepa',1,1,'PaymentSepaLabelIban','IBAN','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2588,'frontend/plugins/payment/sepa',1,2,'PaymentSepaLabelIban','IBAN','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2589,'frontend/plugins/payment/sepa',1,1,'PaymentSepaLabelBic','BIC','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2590,'frontend/plugins/payment/sepa',1,2,'PaymentSepaLabelBic','BIC','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2591,'frontend/plugins/payment/sepa',1,1,'PaymentSepaLabelBankName','Ihre Bank','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2592,'frontend/plugins/payment/sepa',1,2,'PaymentSepaLabelBankName','Name of bank','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2593,'frontend/plugins/payment/sepa',1,1,'PaymentSepaLabelUseBillingData','Rechnungs-Adresse in Mandat übernehmen?','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2594,'frontend/plugins/payment/sepa',1,2,'PaymentSepaLabelUseBillingData','Use billing information for SEPA debit mandate?','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2595,'frontend/plugins/payment/sepa',1,1,'PaymentSepaInfoFields','Die mit einem * markierten Felder sind Pflichtfelder.','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2596,'frontend/plugins/payment/sepa',1,2,'PaymentSepaInfoFields','The fields marked with * are required.','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2597,'frontend/plugins/payment/sepaemail',1,1,'SepaEmailCreditorNumber','Gläubiger-Identifikationsnummer:','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2598,'frontend/plugins/payment/sepaemail',1,2,'SepaEmailCreditorNumber','Creditor number:','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2599,'frontend/plugins/payment/sepaemail',1,1,'SepaEmailMandateReference','Mandatsreferenz: <strong>{$data.orderNumber}</strong>','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2600,'frontend/plugins/payment/sepaemail',1,2,'SepaEmailMandateReference','Mandate reference: <strong>{$data.orderNumber}</strong>','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2601,'frontend/plugins/payment/sepaemail',1,1,'SepaEmailDirectDebitMandate','SEPA-Lastschriftmandat','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2602,'frontend/plugins/payment/sepaemail',1,2,'SepaEmailDirectDebitMandate','SEPA direct debit mandate','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2603,'frontend/plugins/payment/sepaemail',1,1,'SepaEmailBody','Ich ermächtige den {$config.sepaCompany}, Zahlungen von meinem Konto mittels Lastschrift einzuziehen. Zugleich weise ich mein Kreditinstitut an, die von dem {$config.sepaCompany} auf mein Konto gezogenen Lastschriften einzulösen.</p><p> Hinweis: Ich kann innerhalb von acht Wochen, beginnend mit dem Belastungsdatum, die Erstattung des belasteten Betrages verlangen. Es gelten dabei die mit meinem Kreditinstitut vereinbarten Bedingungen.','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2604,'frontend/plugins/payment/sepaemail',1,2,'SepaEmailBody','I hereby authorize payments to be made from my account to {$config.sepaCompany} via direct debit. At the same time, I instruct my financial institution to honor the debits drawn from my account.</p><p>Note: I may request reimbursement for the debited amount up to eight weeks following the date of the transfer, in accordance with preexisting terms and conditions set by my bank.','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2605,'frontend/plugins/payment/sepaemail',1,1,'SepaEmailName','Vorname und Name (Kontoinhaber)','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2606,'frontend/plugins/payment/sepaemail',1,2,'SepaEmailName','Account holder\'s name','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2607,'frontend/plugins/payment/sepaemail',1,1,'SepaEmailAddress','Straße und Hausnummer','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2608,'frontend/plugins/payment/sepaemail',1,2,'SepaEmailAddress','Address','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2609,'frontend/plugins/payment/sepaemail',1,1,'SepaEmailZip','Postleitzahl und Ort','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2610,'frontend/plugins/payment/sepaemail',1,2,'SepaEmailZip','Zip code and City','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2611,'frontend/plugins/payment/sepaemail',1,1,'SepaEmailBankName','Kreditinstitut','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2612,'frontend/plugins/payment/sepaemail',1,2,'SepaEmailBankName','Bank','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2613,'frontend/plugins/payment/sepaemail',1,1,'SepaEmailBic','BIC','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2614,'frontend/plugins/payment/sepaemail',1,2,'SepaEmailBic','BIC','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2615,'frontend/plugins/payment/sepaemail',1,1,'SepaEmailIban','IBAN','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2616,'frontend/plugins/payment/sepaemail',1,2,'SepaEmailIban','IBAN','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2617,'frontend/plugins/payment/sepaemail',1,1,'SepaEmailSignature','Datum, Ort und Unterschrift','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2618,'frontend/plugins/payment/sepaemail',1,2,'SepaEmailSignature','Signature (including date and location)','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2619,'frontend/plugins/payment/sepa',1,1,'PaymentDebitLabelIban','IBAN','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2620,'frontend/plugins/payment/sepa',1,2,'PaymentDebitLabelIban','IBAN','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2621,'frontend/plugins/payment/sepa',1,1,'PaymentDebitLabelBic','BIC','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2622,'frontend/plugins/payment/sepa',1,2,'PaymentDebitLabelBic','BIC','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2623,'frontend/plugins/payment/sepa',1,1,'ErrorIBAN','Ungültige IBAN','2013-11-01 00:00:00','2013-11-01 00:00:00',0),(2624,'frontend/plugins/payment/sepa',1,2,'ErrorIBAN','Invalid IBAN','2013-11-01 00:00:00','2013-11-01 00:00:00',0);
/*!40000 ALTER TABLE `s_core_snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_states`
--

DROP TABLE IF EXISTS `s_core_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_states` (
  `id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `group` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `mail` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_states`
--

LOCK TABLES `s_core_states` WRITE;
/*!40000 ALTER TABLE `s_core_states` DISABLE KEYS */;
INSERT INTO `s_core_states` VALUES (-1,'Abgebrochen',25,'state',0),(0,'Offen',1,'state',1),(1,'In Bearbeitung (Wartet)',2,'state',1),(2,'Komplett abgeschlossen',3,'state',0),(3,'Teilweise abgeschlossen',4,'state',0),(4,'Storniert / Abgelehnt',5,'state',1),(5,'Zur Lieferung bereit',6,'state',1),(6,'Teilweise ausgeliefert',7,'state',1),(7,'Komplett ausgeliefert',8,'state',1),(8,'Klärung notwendig',9,'state',1),(9,'Teilweise in Rechnung gestellt',1,'payment',0),(10,'Komplett in Rechnung gestellt',2,'payment',0),(11,'Teilweise bezahlt',3,'payment',0),(12,'Komplett bezahlt',4,'payment',0),(13,'1. Mahnung',5,'payment',0),(14,'2. Mahnung',6,'payment',0),(15,'3. Mahnung',7,'payment',0),(16,'Inkasso',8,'payment',0),(17,'Offen',0,'payment',0),(18,'Reserviert',9,'payment',0),(19,'Verzoegert',10,'payment',0),(20,'Wiedergutschrift',11,'payment',0),(21,'Überprüfung notwendig',12,'payment',0),(30,'Es wurde kein Kredit genehmigt.',30,'payment',1),(31,'Der Kredit wurde vorlaeufig akzeptiert.',31,'payment',1),(32,'Der Kredit wurde genehmigt.',32,'payment',1),(33,'Die Zahlung wurde von der Hanseatic Bank angewiesen.',33,'payment',1),(34,'Es wurde eine Zeitverlaengerung eingetragen.',34,'payment',1),(35,'Vorgang wurde abgebrochen.',35,'payment',1);
/*!40000 ALTER TABLE `s_core_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_subscribes`
--

DROP TABLE IF EXISTS `s_core_subscribes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_subscribes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subscribe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) unsigned NOT NULL,
  `listener` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pluginID` int(11) unsigned DEFAULT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscribe` (`subscribe`,`type`,`listener`),
  KEY `plugin_namespace_init_storage` (`type`,`subscribe`,`position`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_subscribes`
--

LOCK TABLES `s_core_subscribes` WRITE;
/*!40000 ALTER TABLE `s_core_subscribes` DISABLE KEYS */;
INSERT INTO `s_core_subscribes` VALUES (1,'Enlight_Bootstrap_InitResource_Auth',0,'Shopware_Plugins_Backend_Auth_Bootstrap::onInitResourceAuth',36,0),(2,'Enlight_Controller_Action_PreDispatch',0,'Shopware_Plugins_Backend_Auth_Bootstrap::onPreDispatchBackend',36,0),(3,'Enlight_Bootstrap_InitResource_Menu',0,'Shopware_Plugins_Backend_Menu_Bootstrap::onInitResourceMenu',37,0),(4,'Enlight_Bootstrap_InitResource_Api',0,'Shopware_Plugins_Core_Api_Bootstrap::onInitResourceApi',17,0),(5,'Enlight_Controller_Action_PostDispatch',0,'Shopware_Plugins_Core_ControllerBase_Bootstrap::onPostDispatch',15,100),(6,'Enlight_Controller_Front_StartDispatch',0,'Shopware_Plugins_Core_ErrorHandler_Bootstrap::onStartDispatch',2,0),(9,'Enlight_Plugins_ViewRenderer_FilterRender',0,'Shopware_Plugins_Core_PostFilter_Bootstrap::onFilterRender',13,0),(10,'Enlight_Controller_Front_RouteStartup',0,'Shopware_Plugins_Core_Router_Bootstrap::onRouteStartup',8,0),(11,'Enlight_Controller_Front_RouteShutdown',0,'Shopware_Plugins_Core_Router_Bootstrap::onRouteShutdown',8,0),(12,'Enlight_Controller_Router_FilterAssembleParams',0,'Shopware_Plugins_Core_Router_Bootstrap::onFilterAssemble',8,0),(13,'Enlight_Controller_Router_FilterUrl',0,'Shopware_Plugins_Core_Router_Bootstrap::onFilterUrl',8,0),(14,'Enlight_Controller_Router_Assemble',0,'Shopware_Plugins_Core_Router_Bootstrap::onAssemble',8,100),(17,'Enlight_Bootstrap_InitResource_System',0,'Shopware_Plugins_Core_System_Bootstrap::onInitResourceSystem',10,0),(18,'Enlight_Bootstrap_InitResource_Modules',0,'Shopware_Plugins_Core_System_Bootstrap::onInitResourceModules',10,0),(19,'Enlight_Bootstrap_InitResource_Adodb',0,'Shopware_Plugins_Core_System_Bootstrap::onInitResourceAdodb',10,0),(21,'Enlight_Controller_Front_PreDispatch',0,'Shopware_Plugins_Core_ViewportForward_Bootstrap::onPreDispatch',11,10),(23,'Enlight_Controller_Action_PostDispatch',0,'Shopware_Plugins_Frontend_Compare_Bootstrap::onPostDispatch',20,0),(24,'Enlight_Controller_Front_DispatchLoopShutdown',0,'Shopware_Plugins_Frontend_Statistics_Bootstrap::onDispatchLoopShutdown',31,0),(25,'Enlight_Plugins_ViewRenderer_FilterRender',0,'Shopware_Plugins_Frontend_Seo_Bootstrap::onFilterRender',22,0),(26,'Enlight_Controller_Action_PostDispatch',0,'Shopware_Plugins_Frontend_Seo_Bootstrap::onPostDispatch',22,0),(27,'Enlight_Controller_Action_PostDispatch',0,'Shopware_Plugins_Frontend_TagCloud_Bootstrap::onPostDispatch',34,0),(30,'Enlight_Controller_Front_StartDispatch',0,'Shopware_Plugins_Frontend_RouterRewrite_Bootstrap::onStartDispatch',19,0),(31,'Enlight_Controller_Router_Route',0,'Shopware_Plugins_Frontend_RouterOld_Bootstrap::onRoute',24,10),(37,'Enlight_Controller_Action_PostDispatch',0,'Shopware_Plugins_Frontend_LastArticles_Bootstrap::onPostDispatch',23,0),(38,'Enlight_Controller_Front_RouteShutdown',0,'Shopware_Plugins_Frontend_InputFilter_Bootstrap::onRouteShutdown',35,0),(40,'Enlight_Bootstrap_InitResource_Payments',0,'Shopware_Plugins_Frontend_Payment_Bootstrap::onInitResourcePayments',39,0),(41,'Enlight_Controller_Dispatcher_ControllerPath_Backend_Check',0,'Shopware_Plugins_Backend_Check_Bootstrap::onGetControllerPathBackend',40,0),(52,'Enlight_Bootstrap_InitResource_BackendSession',0,'Shopware_Plugins_Backend_Auth_Bootstrap::onInitResourceBackendSession',36,0),(53,'Enlight_Bootstrap_InitResource_Acl',0,'Shopware_Plugins_Backend_Auth_Bootstrap::onInitResourceAcl',36,0),(56,'Enlight_Controller_Front_DispatchLoopStartup',0,'Shopware_Plugins_Core_RestApi_Bootstrap::onDispatchLoopStartup',44,0),(57,'Enlight_Controller_Front_PreDispatch',0,'Shopware_Plugins_Core_RestApi_Bootstrap::onFrontPreDispatch',44,0),(58,'Enlight_Bootstrap_InitResource_Auth',0,'Shopware_Plugins_Core_RestApi_Bootstrap::onInitResourceAuth',44,0),(60,'Enlight_Controller_Dispatcher_ControllerPath_Backend_PluginManager',0,'Shopware_Plugins_Core_PluginManager_Bootstrap::onGetPluginController',46,0),(61,'Enlight_Controller_Dispatcher_ControllerPath_Backend_Store',0,'Shopware_Plugins_Core_PluginManager_Bootstrap::onGetStoreController',46,0),(62,'Enlight_Bootstrap_InitResource_StoreApi',0,'Shopware_Plugins_Backend_StoreApi_Bootstrap::onInitResourceStoreApi',45,0),(63,'Enlight_Controller_Action_PreDispatch',0,'Shopware_Plugins_Backend_StoreApi_Bootstrap::onPreDispatch',45,0),(66,'Enlight_Controller_Front_RouteShutdown',0,'Shopware_Plugins_Core_SelfHealing_Bootstrap::onDispatchEvent',48,100),(67,'Enlight_Controller_Front_PostDispatch',0,'Shopware_Plugins_Core_SelfHealing_Bootstrap::onDispatchEvent',48,100),(68,'Enlight_Controller_Front_DispatchLoopShutdown',0,'Shopware_Plugins_Core_SelfHealing_Bootstrap::onDispatchEvent',48,100),(69,'Enlight_Bootstrap_InitResource_PasswordEncoder',0,'Shopware_Plugins_Core_PasswordEncoder_Bootstrap::onInitResourcePasswordEncoder',49,0),(70,'Shopware_Components_Password_Manager_AddEncoder',0,'Shopware_Plugins_Core_PasswordEncoder_Bootstrap::onAddEncoder',49,0),(71,'Shopware_Modules_Order_SaveOrder_ProcessDetails',0,'Shopware_Plugins_Core_MarketingAggregate_Bootstrap::incrementTopSeller',50,0),(72,'Shopware_Modules_Articles_GetArticleCharts',0,'Shopware_Plugins_Core_MarketingAggregate_Bootstrap::afterTopSellerSelected',50,0),(73,'Enlight_Bootstrap_InitResource_TopSeller',0,'Shopware_Plugins_Core_MarketingAggregate_Bootstrap::initTopSellerResource',50,0),(74,'Enlight_Controller_Action_Backend_Config_InitTopSeller',0,'Shopware_Plugins_Core_MarketingAggregate_Bootstrap::initTopSeller',50,0),(75,'Enlight_Controller_Dispatcher_ControllerPath_Backend_TopSeller',0,'Shopware_Plugins_Core_MarketingAggregate_Bootstrap::getTopSellerBackendController',50,0),(76,'Shopware_CronJob_RefreshTopSeller',0,'Shopware_Plugins_Core_MarketingAggregate_Bootstrap::refreshTopSeller',50,0),(77,'Shopware\\Models\\Article\\Article::postUpdate',0,'Shopware_Plugins_Core_MarketingAggregate_Bootstrap::refreshArticle',50,0),(78,'Shopware\\Models\\Article\\Article::postPersist',0,'Shopware_Plugins_Core_MarketingAggregate_Bootstrap::refreshArticle',50,0),(79,'Shopware_Modules_Order_SaveOrder_ProcessDetails',0,'Shopware_Plugins_Core_MarketingAggregate_Bootstrap::addNewAlsoBought',50,0),(80,'Enlight_Controller_Dispatcher_ControllerPath_Backend_AlsoBought',0,'Shopware_Plugins_Core_MarketingAggregate_Bootstrap::getAlsoBoughtBackendController',50,0),(81,'Enlight_Bootstrap_InitResource_AlsoBought',0,'Shopware_Plugins_Core_MarketingAggregate_Bootstrap::initAlsoBoughtResource',50,0),(82,'Enlight_Controller_Dispatcher_ControllerPath_Backend_SimilarShown',0,'Shopware_Plugins_Core_MarketingAggregate_Bootstrap::getSimilarShownBackendController',50,0),(83,'Enlight_Bootstrap_InitResource_SimilarShown',0,'Shopware_Plugins_Core_MarketingAggregate_Bootstrap::initSimilarShownResource',50,0),(85,'Shopware_Plugins_LastArticles_ResetLastArticles',0,'Shopware_Plugins_Core_MarketingAggregate_Bootstrap::afterSimilarShownArticlesReset',50,0),(86,'Shopware_Modules_Articles_Before_SetLastArticle',0,'Shopware_Plugins_Core_MarketingAggregate_Bootstrap::beforeSetLastArticle',50,0),(87,'Shopware_CronJob_RefreshSimilarShown',0,'Shopware_Plugins_Core_MarketingAggregate_Bootstrap::refreshSimilarShown',50,0),(88,'Enlight_Controller_Dispatcher_ControllerPath_Backend_Seo',0,'Shopware_Plugins_Core_RebuildIndex_Bootstrap::getSeoBackendController',51,0),(89,'Enlight_Bootstrap_InitResource_SeoIndex',0,'Shopware_Plugins_Core_RebuildIndex_Bootstrap::initSeoIndexResource',51,0),(90,'Enlight_Controller_Front_DispatchLoopShutdown',0,'Shopware_Plugins_Core_RebuildIndex_Bootstrap::onAfterSendResponse',51,0),(91,'Shopware_CronJob_RefreshSeoIndex',0,'Shopware_Plugins_Core_RebuildIndex_Bootstrap::onRefreshSeoIndex',51,0),(92,'Enlight_Controller_Dispatcher_ControllerPath_Backend_SearchIndex',0,'Shopware_Plugins_Core_RebuildIndex_Bootstrap::getSearchIndexBackendController',51,0),(93,'Shopware_CronJob_RefreshSearchIndex',0,'Shopware_Plugins_Core_RebuildIndex_Bootstrap::refreshSearchIndex',51,0),(94,'Enlight_Controller_Action_PreDispatch',0,'Shopware_Plugins_Core_HttpCache_Bootstrap::onPreDispatch',52,0),(95,'Shopware\\Models\\Article\\Article::postPersist',0,'Shopware_Plugins_Core_HttpCache_Bootstrap::onPostPersist',52,0),(96,'Shopware\\Models\\Category\\Category::postPersist',0,'Shopware_Plugins_Core_HttpCache_Bootstrap::onPostPersist',52,0),(97,'Shopware\\Models\\Banner\\Banner::postPersist',0,'Shopware_Plugins_Core_HttpCache_Bootstrap::onPostPersist',52,0),(98,'Shopware\\Models\\Article\\Article::postUpdate',0,'Shopware_Plugins_Core_HttpCache_Bootstrap::onPostPersist',52,0),(99,'Shopware\\Models\\Category\\Category::postUpdate',0,'Shopware_Plugins_Core_HttpCache_Bootstrap::onPostPersist',52,0),(100,'Shopware\\Models\\Banner\\Banner::postUpdate',0,'Shopware_Plugins_Core_HttpCache_Bootstrap::onPostPersist',52,0),(101,'Enlight_Bootstrap_InitResource_CommunityStore',0,'Shopware_Plugins_Core_PluginManager_Bootstrap::onInitCommunityStore',46,0),(102,'Shopware_CronJob_ClearHttpCache',0,'Shopware_Plugins_Core_HttpCacheBootstrap::onClearHttpCache',52,0),(103,'Shopware_Plugins_HttpCache_InvalidateCacheId',0,'Shopware_Plugins_Core_HttpCache_Bootstrap::onInvalidateCacheId',52,0),(105,'Shopware\\Models\\Blog\\Blog::postPersist',0,'Shopware_Plugins_Core_HttpCache_Bootstrap::onPostPersist',52,0),(106,'Shopware\\Models\\Blog\\Blog::postUpdate',0,'Shopware_Plugins_Core_HttpCache_Bootstrap::onPostPersist',52,0),(107,'Shopware_Modules_Admin_InitiatePaymentClass_AddClass',0,'Shopware_Plugins_Core_PaymentMethods_Bootstrap::addPaymentClass',53,0),(108,'Enlight_Controller_Action_PostDispatchSecure',0,'Shopware_Plugins_Core_PaymentMethods_Bootstrap::addPaths',53,0),(109,'Enlight_Controller_Action_PostDispatchSecure_Backend_Order',0,'Shopware_Plugins_Core_PaymentMethods_Bootstrap::onBackendOrderPostDispatch',53,0),(110,'Shopware_Plugins_HttpCache_ClearCache',0,'Shopware_Plugins_Core_HttpCache_Bootstrap::onClearCache',52,0),(111,'Enlight_Controller_Action_PostDispatchSecure_Backend_Customer',0,'Shopware_Plugins_Core_PaymentMethods_Bootstrap::onBackendCustomerPostDispatch',53,0),(112,'Enlight_Controller_Action_PostDispatch_Backend_Index',0,'Shopware_Plugins_Backend_SwagUpdate_Bootstrap::onBackendIndexPostDispatch',55,0),(113,'Enlight_Controller_Dispatcher_ControllerPath_Backend_SwagUpdate',0,'Shopware_Plugins_Backend_SwagUpdate_Bootstrap::onGetSwagUpdateControllerPath',55,0),(114,'Enlight_Bootstrap_InitResource_SwagUpdateUpdateCheck',0,'Shopware_Plugins_Backend_SwagUpdate_Bootstrap::onInitUpdateCheck',55,0);
/*!40000 ALTER TABLE `s_core_subscribes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_tax`
--

DROP TABLE IF EXISTS `s_core_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_tax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tax` decimal(10,2) NOT NULL,
  `description` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tax` (`tax`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_tax`
--

LOCK TABLES `s_core_tax` WRITE;
/*!40000 ALTER TABLE `s_core_tax` DISABLE KEYS */;
INSERT INTO `s_core_tax` VALUES (1,19.00,'19%'),(4,7.00,'7 %');
/*!40000 ALTER TABLE `s_core_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_tax_rules`
--

DROP TABLE IF EXISTS `s_core_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_tax_rules` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `areaID` int(11) unsigned DEFAULT NULL,
  `countryID` int(11) unsigned DEFAULT NULL,
  `stateID` int(11) unsigned DEFAULT NULL,
  `groupID` int(11) unsigned NOT NULL,
  `customer_groupID` int(11) unsigned NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupID` (`groupID`),
  KEY `countryID` (`countryID`),
  KEY `stateID` (`stateID`),
  KEY `areaID` (`areaID`),
  KEY `tax_rate_by_conditions` (`customer_groupID`,`areaID`,`countryID`,`stateID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_tax_rules`
--

LOCK TABLES `s_core_tax_rules` WRITE;
/*!40000 ALTER TABLE `s_core_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_templates`
--

DROP TABLE IF EXISTS `s_core_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `esi` tinyint(1) unsigned NOT NULL,
  `style_support` tinyint(1) unsigned NOT NULL,
  `emotion` tinyint(1) unsigned NOT NULL,
  `version` int(11) unsigned NOT NULL,
  `plugin_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `basename` (`template`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_templates`
--

LOCK TABLES `s_core_templates` WRITE;
/*!40000 ALTER TABLE `s_core_templates` DISABLE KEYS */;
INSERT INTO `s_core_templates` VALUES (4,'orange','Orange',NULL,'shopware AG','AGPL',0,0,0,1,NULL),(11,'emotion_orange','Emotion Orange',NULL,'shopware AG','AGPL',1,0,1,2,NULL),(14,'emotion_turquoise','Emotion Turquoise',NULL,'shopware AG','AGPL',1,0,1,2,NULL),(15,'emotion_brown','Emotion Brown',NULL,'shopware AG','AGPL',1,0,1,2,NULL),(16,'emotion_gray','Emotion Gray',NULL,'shopware AG','AGPL',1,0,1,2,NULL),(17,'emotion_red','Emotion Red',NULL,'shopware AG','AGPL',1,0,1,2,NULL),(18,'emotion_blue','Emotion Blue',NULL,'shopware AG','AGPL',1,0,1,2,NULL),(19,'emotion_green','Emotion Green',NULL,'shopware AG','AGPL',1,0,1,2,NULL),(20,'emotion_black','Emotion Black',NULL,'shopware AG','AGPL',1,0,1,2,NULL),(21,'emotion_pink','Emotion Pink',NULL,'shopware AG','AGPL',1,0,1,2,NULL);
/*!40000 ALTER TABLE `s_core_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_translations`
--

DROP TABLE IF EXISTS `s_core_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objecttype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `objectdata` longtext COLLATE utf8_unicode_ci NOT NULL,
  `objectkey` int(11) unsigned NOT NULL,
  `objectlanguage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `objecttype` (`objecttype`,`objectkey`,`objectlanguage`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_translations`
--

LOCK TABLES `s_core_translations` WRITE;
/*!40000 ALTER TABLE `s_core_translations` DISABLE KEYS */;
INSERT INTO `s_core_translations` VALUES (58,'config_payment','a:13:{i:3;a:2:{s:11:\"description\";s:16:\"cash on delivery\";s:21:\"additionaldescription\";s:105:\"Available in Germany only. Please note that at delivery, you will be asked to pay an additional EUR 2,00.\";}i:7;a:2:{s:11:\"description\";s:10:\"Creditcard\";s:21:\"additionaldescription\";s:162:\"Testing the United-Online-Services creditcard-payment is very easy. Just enter the following data: \nType: Mastercard, Nummer: 4111111111111111, CVC/ CVV-Code: 111\";}i:2;a:2:{s:11:\"description\";s:5:\"Debit\";s:21:\"additionaldescription\";s:11:\"Insert text\";}i:4;a:2:{s:11:\"description\";s:7:\"Invoice\";s:21:\"additionaldescription\";s:152:\"You pay easy and secure by invoice.\n\nIt is for example possible to reopen the invoice account after the costumer made his second order. (Riskmanagement)\";}i:5;a:2:{s:11:\"description\";s:10:\"Prepayment\";s:21:\"additionaldescription\";s:194:\"Once we receive the funds you send us via bank transfer, we will ship your order. We cannot be responsible for paying bank fees, so make sure the full invoice amount will be received on our end.\";}i:17;a:1:{s:21:\"additionaldescription\";s:98:\"A quick and easy way to pay with your creditcard. We accept: VISA / Master Card / American Express\";}i:18;a:1:{s:21:\"additionaldescription\";s:209:\"Carefree shopping on the internet - you can do it now in over 8,000 affiliated online shops using DIRECTebanking.com. You benefit not only from immediate delivery but also from our consumer protection policy.\n\";}i:6;a:1:{s:21:\"additionaldescription\";s:163:\"Please enter your real account data, who are connected to your address. An automatic process will check the address.\n\nAll entries will not be charged in this demo!\";}i:8;a:1:{s:21:\"additionaldescription\";s:147:\"Testing Giropay from our partner United-Online-Services in this demo isn´t possible.\nIf you are interested in getting an account please contact us.\";}i:15;a:1:{s:21:\"additionaldescription\";s:7:\"Invoice\";}i:14;a:1:{s:21:\"additionaldescription\";s:10:\"Prepayment\";}i:11;a:1:{s:21:\"additionaldescription\";s:64:\"Pay the quick and secured way! Paying direct! No account needed!\";}i:12;a:1:{s:21:\"additionaldescription\";s:64:\"Pay the quick and secured way! Paying direct! No account needed!\";}}',1,'en'),(59,'config_snippets','a:546:{s:15:\"sPaymentESDInfo\";a:1:{s:5:\"value\";s:69:\"Purchase of direct downloads is only possible by debit or credit card\";}s:8:\"sAGBText\";a:1:{s:5:\"value\";s:181:\"I have read the <a href=\"{$sBasefile}?sViewport=custom&cCUSTOM=4\" title=\"Terms\"><span style=\"text-decoration:underline;\">Terms</span></a> of your shop and agree with their coverage.\";}s:10:\"sOrderInfo\";a:1:{s:5:\"value\";s:112:\"(Optionaler Freitext)If you pay debit or with your creditcard your bank account will be charged after five days.\";}s:15:\"sRegister_right\";a:1:{s:5:\"value\";s:183:\"<p>\nInsert your right of withdrawl here.\n<br /><br />\n<a href=\"{$sBasefile}?sViewport=custom&cCUSTOM=8\" title=\"Right of Withdrawl\">more informations to your right of withdrawl</a></p>\";}s:28:\"sNewsletterOptionUnsubscribe\";a:1:{s:5:\"value\";s:26:\"unsubscribe the newsletter\";}s:26:\"sNewsletterOptionSubscribe\";a:1:{s:5:\"value\";s:24:\"subscribe the newsletter\";}s:15:\"sNewsletterInfo\";a:1:{s:5:\"value\";s:151:\"Subsribe and get our newsletter.<br />\nOf course you can cancel this newsletter any time. Use the hyperlink in your eMail or visit this website again. \";}s:17:\"sNewsletterButton\";a:1:{s:5:\"value\";s:4:\"Save\";}s:20:\"sNewsletterLabelMail\";a:1:{s:5:\"value\";s:19:\"Your eMail-address:\";}s:22:\"sNewsletterLabelSelect\";a:1:{s:5:\"value\";s:10:\"I want to:\";}s:17:\"sInfoEmailDeleted\";a:1:{s:5:\"value\";s:32:\"Your eMail-address were deleted.\";}s:19:\"sInfoEmailRegiested\";a:1:{s:5:\"value\";s:35:\"Thanks. We added your eMail-address\";}s:16:\"sErrorEnterEmail\";a:1:{s:5:\"value\";s:31:\"Please specify an email address\";}s:16:\"sErrorForgotMail\";a:1:{s:5:\"value\";s:31:\"Please enter your email address\";}s:10:\"sDelivery1\";a:1:{s:5:\"value\";s:47:\"Ready for shipment,<br/>\nShipping time 1-3 days\";}s:17:\"sErrorLoginActive\";a:1:{s:5:\"value\";s:84:\"Your account has been disabled, to clarify please get in contact with us personally!\";}s:27:\"sAccountACommentisdeposited\";a:1:{s:5:\"value\";s:20:\"A Comment is leaved!\";}s:15:\"sAccountArticle\";a:1:{s:5:\"value\";s:7:\"Article\";}s:22:\"sAccountBillingAddress\";a:1:{s:5:\"value\";s:15:\"Billing Address\";}s:15:\"sAccountComment\";a:1:{s:5:\"value\";s:11:\"Annotation:\";}s:16:\"sAccountcompany \";a:1:{s:5:\"value\";s:7:\"Company\";}s:16:\"sAccountDownload\";a:1:{s:5:\"value\";s:8:\"Download\";}s:19:\"sAccountDownloadNow\";a:1:{s:5:\"value\";s:12:\"Download now\";}s:29:\"sAccountDownloadssortedbydate\";a:1:{s:5:\"value\";s:29:\"Your downloads sorted by date\";}s:24:\"sAccountErrorhasoccurred\";a:1:{s:5:\"value\";s:22:\"An Error has occurred!\";}s:12:\"sAccountFree\";a:1:{s:5:\"value\";s:4:\"FREE\";}s:12:\"sAccountfrom\";a:1:{s:5:\"value\";s:5:\"From:\";}s:18:\"sAccountgrandtotal\";a:1:{s:5:\"value\";s:12:\"Grand total:\";}s:18:\"sAccountIwanttoget\";a:1:{s:5:\"value\";s:31:\"Yes, I want to receive the free\";}s:23:\"sAccountmethodofpayment\";a:1:{s:5:\"value\";s:15:\"Choosen Payment\";}s:14:\"sAccountmodify\";a:1:{s:5:\"value\";s:6:\"Modify\";}s:10:\"sAccountMr\";a:1:{s:5:\"value\";s:2:\"Mr\";}s:10:\"sAccountMs\";a:1:{s:5:\"value\";s:2:\"Ms\";}s:19:\"sAccountNewPassword\";a:1:{s:5:\"value\";s:14:\"New password*:\";}s:26:\"sAccountnewslettersettings\";a:1:{s:5:\"value\";s:24:\"Your Newsletter settings\";}s:14:\"sAccountNumber\";a:1:{s:5:\"value\";s:8:\"Quantity\";}s:21:\"sAccountOrdercanceled\";a:1:{s:5:\"value\";s:19:\"Order was cancelled\";}s:27:\"sAccountOrderhasbeenshipped\";a:1:{s:5:\"value\";s:22:\"Order has been shipped\";}s:23:\"sAccountOrderinprogress\";a:1:{s:5:\"value\";s:17:\"Order in progress\";}s:28:\"sAccountOrdernotvetprocessed\";a:1:{s:5:\"value\";s:32:\"Order has not been processed yet\";}s:19:\"sAccountOrdernumber\";a:1:{s:5:\"value\";s:12:\"Ordernumber:\";}s:29:\"sAccountOrderpartiallyshipped\";a:1:{s:5:\"value\";s:27:\"Order was partially shipped\";}s:26:\"sAccountOrderssortedbydate\";a:1:{s:5:\"value\";s:21:\"Orders sorted by date\";}s:18:\"sAccountOrderTotal\";a:1:{s:5:\"value\";s:12:\"Order total:\";}s:23:\"sAccountPackagetracking\";a:1:{s:5:\"value\";s:17:\"Package tracking:\";}s:12:\"sAccountplus\";a:1:{s:5:\"value\";s:4:\"plus\";}s:22:\"sAccountRepeatpassword\";a:1:{s:5:\"value\";s:17:\"Repeat password*:\";}s:16:\"sAccountShipping\";a:1:{s:5:\"value\";s:15:\"Shipping costs:\";}s:23:\"sAccountshippingaddress\";a:1:{s:5:\"value\";s:16:\"Shipping address\";}s:21:\"sAccountthenewsletter\";a:1:{s:5:\"value\";s:11:\"Newsletter!\";}s:13:\"sAccountTotal\";a:1:{s:5:\"value\";s:5:\"Total\";}s:17:\"sAccountUnitprice\";a:1:{s:5:\"value\";s:10:\"Unit price\";}s:22:\"sAccountYouraccessdata\";a:1:{s:5:\"value\";s:16:\"Your access data\";}s:24:\"sAccountYouremailaddress\";a:1:{s:5:\"value\";s:20:\"Your email address*:\";}s:24:\"sAccountyourSerialnumber\";a:1:{s:5:\"value\";s:19:\"Your Serial Number:\";}s:26:\"sAccountyourSerialnumberto\";a:1:{s:5:\"value\";s:21:\"Your Serial Number to\";}s:19:\"sAjaxcomparearticle\";a:1:{s:5:\"value\";s:16:\"Compared Article\";}s:18:\"sAjaxdeletecompare\";a:1:{s:5:\"value\";s:14:\"Delete Compare\";}s:17:\"sAjaxstartcompare\";a:1:{s:5:\"value\";s:13:\"Start Compare\";}s:9:\"sArticle1\";a:1:{s:5:\"value\";s:12:\"1 (very bad)\";}s:10:\"sArticle10\";a:1:{s:5:\"value\";s:14:\"10 (excellent)\";}s:9:\"sArticle2\";a:1:{s:5:\"value\";s:1:\"2\";}s:9:\"sArticle3\";a:1:{s:5:\"value\";s:1:\"3\";}s:9:\"sArticle4\";a:1:{s:5:\"value\";s:1:\"4\";}s:9:\"sArticle5\";a:1:{s:5:\"value\";s:1:\"5\";}s:9:\"sArticle6\";a:1:{s:5:\"value\";s:1:\"6\";}s:9:\"sArticle7\";a:1:{s:5:\"value\";s:1:\"7\";}s:9:\"sArticle8\";a:1:{s:5:\"value\";s:1:\"8\";}s:9:\"sArticle9\";a:1:{s:5:\"value\";s:1:\"9\";}s:19:\"sArticleaccessories\";a:1:{s:5:\"value\";s:11:\"Accessories\";}s:19:\"sArticleaddtobasked\";a:1:{s:5:\"value\";s:11:\"add to cart\";}s:20:\"sArticleaddtonotepad\";a:1:{s:5:\"value\";s:16:\"Add to favorites\";}s:21:\"sArticleafterageckeck\";a:1:{s:5:\"value\";s:52:\"Attention! Delivery only after successful age check!\";}s:24:\"sArticleallmanufacturers\";a:1:{s:5:\"value\";s:22:\"Show all manufacturers\";}s:14:\"sArticleamount\";a:1:{s:5:\"value\";s:9:\"Quantity:\";}s:11:\"sArticleand\";a:1:{s:5:\"value\";s:3:\"and\";}s:22:\"sArticlearticleperpage\";a:1:{s:5:\"value\";s:16:\"Article per page\";}s:21:\"sArticleavailableasan\";a:1:{s:5:\"value\";s:34:\"Available as an immediate download\";}s:26:\"sArticleavailabledownloads\";a:1:{s:5:\"value\";s:20:\"Available downloads:\";}s:21:\"sArticleAvailablefrom\";a:1:{s:5:\"value\";s:12:\"Available as\";}s:26:\"sArticleavailableimmediate\";a:1:{s:5:\"value\";s:34:\"Available as an immediate download\";}s:12:\"sArticleback\";a:1:{s:5:\"value\";s:4:\"Back\";}s:20:\"sArticleblockpricing\";a:1:{s:5:\"value\";s:13:\"Block pricing\";}s:10:\"sArticleby\";a:1:{s:5:\"value\";s:3:\"By:\";}s:24:\"sArticlechoosefirstexecu\";a:1:{s:5:\"value\";s:32:\"Attention! Choose version first!\";}s:22:\"sArticlecollectvoucher\";a:1:{s:5:\"value\";s:34:\"Tell a friend and catch a voucher!\";}s:15:\"sArticleCompare\";a:1:{s:5:\"value\";s:7:\"Compare\";}s:23:\"sArticlecustomerreviews\";a:1:{s:5:\"value\";s:20:\"Customer reviews for\";}s:17:\"sArticledatasheet\";a:1:{s:5:\"value\";s:9:\"Datasheet\";}s:12:\"sArticledays\";a:1:{s:5:\"value\";s:4:\"Days\";}s:24:\"sArticledaysshippingfree\";a:1:{s:5:\"value\";s:14:\"Shipping free!\";}s:20:\"sArticledeliverytime\";a:1:{s:5:\"value\";s:13:\"Shipping time\";}s:19:\"sArticledescription\";a:1:{s:5:\"value\";s:11:\"Description\";}s:16:\"sArticledownload\";a:1:{s:5:\"value\";s:8:\"Download\";}s:19:\"sArticleeightpoints\";a:1:{s:5:\"value\";s:8:\"8 Points\";}s:23:\"sArticleenterthenumbers\";a:1:{s:5:\"value\";s:50:\"Please enter the numbers in the following text box\";}s:27:\"sArticlefilloutallredfields\";a:1:{s:5:\"value\";s:34:\"Please fill in all required fields\";}s:18:\"sArticlefivepoints\";a:1:{s:5:\"value\";s:8:\"5 Points\";}s:18:\"sArticlefourpoints\";a:1:{s:5:\"value\";s:8:\"4 Points\";}s:20:\"sArticlefreeshipping\";a:1:{s:5:\"value\";s:14:\"Shipping Free!\";}s:12:\"sArticlefrom\";a:1:{s:5:\"value\";s:4:\"from\";}s:26:\"sArticlefurtherinformation\";a:1:{s:5:\"value\";s:19:\"further information\";}s:19:\"sArticlegetavoucher\";a:1:{s:5:\"value\";s:16:\"is your voucher*\";}s:20:\"sArticlehighestprice\";a:1:{s:5:\"value\";s:13:\"Highest Price\";}s:12:\"sArticleincl\";a:1:{s:5:\"value\";s:5:\"incl.\";}s:19:\"sArticleinthebasket\";a:1:{s:5:\"value\";s:24:\"add to you shopping cart\";}s:17:\"sArticleitemtitle\";a:1:{s:5:\"value\";s:19:\"Article description\";}s:16:\"sArticlelanguage\";a:1:{s:5:\"value\";s:9:\"Language:\";}s:13:\"sArticlelegal\";a:1:{s:5:\"value\";s:5:\"legal\";}s:14:\"sArticlelooked\";a:1:{s:5:\"value\";s:11:\"Last viewed\";}s:19:\"sArticlelowestprice\";a:1:{s:5:\"value\";s:12:\"Lowest Price\";}s:19:\"sArticlemainarticle\";a:1:{s:5:\"value\";s:12:\"Main article\";}s:21:\"sArticlematchingitems\";a:1:{s:5:\"value\";s:27:\"Frequently Bought Together:\";}s:23:\"sArticleMoreinformation\";a:1:{s:5:\"value\";s:20:\"Get more information\";}s:28:\"sArticlemoreinformationabout\";a:1:{s:5:\"value\";s:26:\"Get more information about\";}s:11:\"sArticlenew\";a:1:{s:5:\"value\";s:3:\"NEW\";}s:12:\"sArticlenext\";a:1:{s:5:\"value\";s:4:\"Next\";}s:18:\"sArticleninepoints\";a:1:{s:5:\"value\";s:8:\"9 Points\";}s:17:\"sArticlenoPicture\";a:1:{s:5:\"value\";s:20:\"No picture available\";}s:10:\"sArticleof\";a:1:{s:5:\"value\";s:2:\"by\";}s:16:\"sArticleonepoint\";a:1:{s:5:\"value\";s:7:\"1 Point\";}s:19:\"sArticleonesiteback\";a:1:{s:5:\"value\";s:13:\"One Site back\";}s:22:\"sArticleonesiteforward\";a:1:{s:5:\"value\";s:16:\"One Site forward\";}s:20:\"sArticleonthenotepad\";a:1:{s:5:\"value\";s:16:\"add to favorites\";}s:19:\"sArticleordernumber\";a:1:{s:5:\"value\";s:10:\"Order No.:\";}s:23:\"sArticleotherarticlesof\";a:1:{s:5:\"value\";s:22:\"Other articles made by\";}s:20:\"sArticleourcommenton\";a:1:{s:5:\"value\";s:13:\"Our review to\";}s:11:\"sArticleout\";a:1:{s:5:\"value\";s:3:\"out\";}s:16:\"sArticleoverview\";a:1:{s:5:\"value\";s:8:\"Overview\";}s:20:\"sArticlepleasechoose\";a:1:{s:5:\"value\";s:16:\"Please choose...\";}s:25:\"sArticlepleasecompleteall\";a:1:{s:5:\"value\";s:34:\"Please fill in all required fields\";}s:20:\"sArticlepleaseselect\";a:1:{s:5:\"value\";s:16:\"Please choose...\";}s:18:\"sArticlepopularity\";a:1:{s:5:\"value\";s:11:\"Bestselling\";}s:14:\"sArticleprices\";a:1:{s:5:\"value\";s:6:\"Prices\";}s:18:\"sArticleproductsof\";a:1:{s:5:\"value\";s:16:\"Products made by\";}s:29:\"sArticlequestionsaboutarticle\";a:1:{s:5:\"value\";s:22:\"Questions for article?\";}s:22:\"sArticlerecipientemail\";a:1:{s:5:\"value\";s:22:\"Receiver email address\";}s:17:\"sArticlerecommend\";a:1:{s:5:\"value\";s:36:\": tell a friend and catch a voucher!\";}s:27:\"sArticlerecommendandvoucher\";a:1:{s:5:\"value\";s:32:\"Tell a friend and get a voucher!\";}s:16:\"sArticlereleased\";a:1:{s:5:\"value\";s:19:\"unrated (universal)\";}s:30:\"sArticlereleasedafterverificat\";a:1:{s:5:\"value\";s:44:\"Reviews will be released after verification.\";}s:19:\"sArticlereleasedate\";a:1:{s:5:\"value\";s:12:\"Release Date\";}s:27:\"sArticlereleasedfrom12years\";a:1:{s:5:\"value\";s:20:\"Restricted 12 years+\";}s:27:\"sArticlereleasedfrom16years\";a:1:{s:5:\"value\";s:20:\"Restricted 16 years+\";}s:27:\"sArticlereleasedfrom18years\";a:1:{s:5:\"value\";s:20:\"Restricted 18 years+\";}s:26:\"sArticlereleasedfrom6years\";a:1:{s:5:\"value\";s:24:\"Restricted from 6 years+\";}s:14:\"sArticleReview\";a:1:{s:5:\"value\";s:16:\"Costumer Review:\";}s:15:\"sArticlereview1\";a:1:{s:5:\"value\";s:16:\"Costumer Review:\";}s:15:\"sArticlereviews\";a:1:{s:5:\"value\";s:7:\"Reviews\";}s:12:\"sArticlesave\";a:1:{s:5:\"value\";s:5:\"saved\";}s:14:\"sArticlescroll\";a:1:{s:5:\"value\";s:6:\"Scroll\";}s:19:\"sArticlesevenpoints\";a:1:{s:5:\"value\";s:8:\"7 Points\";}s:16:\"sArticleshipping\";a:1:{s:5:\"value\";s:110:\"<a href=\"{$sBasefile}?sViewport=custom&cCUSTOM=28\" title=\"Shipping rates & policies\">Shipping rates & policies\";}s:27:\"sArticleshippinginformation\";a:1:{s:5:\"value\";s:33:\"See our shipping rates & policies\";}s:15:\"sArticleshowall\";a:1:{s:5:\"value\";s:8:\"Show all\";}s:28:\"sArticleshowallmanufacturers\";a:1:{s:5:\"value\";s:22:\"Show all manufacturers\";}s:23:\"sArticlesimilararticles\";a:1:{s:5:\"value\";s:15:\"Suggested Items\";}s:17:\"sArticlesixpoints\";a:1:{s:5:\"value\";s:8:\"6 Points\";}s:12:\"sArticlesort\";a:1:{s:5:\"value\";s:5:\"Sort:\";}s:15:\"sArticlesummary\";a:1:{s:5:\"value\";s:7:\"Summary\";}s:17:\"sArticlesurcharge\";a:1:{s:5:\"value\";s:17:\"Additional charge\";}s:26:\"sArticlesystemrequirements\";a:1:{s:5:\"value\";s:21:\"Systemrequirement for\";}s:15:\"sArticletaxplus\";a:1:{s:5:\"value\";s:8:\"VAT plus\";}s:16:\"sArticletaxplus1\";a:1:{s:5:\"value\";s:5:\"VAT +\";}s:17:\"sArticletenpoints\";a:1:{s:5:\"value\";s:9:\"10 Points\";}s:24:\"sArticlethankyouverymuch\";a:1:{s:5:\"value\";s:62:\"Thank you very much. The recommendation was successfully sent.\";}s:23:\"sArticlethefieldsmarked\";a:1:{s:5:\"value\";s:34:\"Please fill in all required fields\";}s:19:\"sArticlethreepoints\";a:1:{s:5:\"value\";s:8:\"3 Points\";}s:11:\"sArticletip\";a:1:{s:5:\"value\";s:4:\"TIP!\";}s:30:\"sArticletipavailableasanimmedi\";a:1:{s:5:\"value\";s:34:\"Available as an immediate download\";}s:26:\"sArticletipmoreinformation\";a:1:{s:5:\"value\";s:25:\"Further information about\";}s:29:\"sArticletipproductinformation\";a:1:{s:5:\"value\";s:19:\"Product information\";}s:11:\"sArticletop\";a:1:{s:5:\"value\";s:3:\"TOP\";}s:30:\"sArticletopaveragecustomerrevi\";a:1:{s:5:\"value\";s:17:\"Customer Reviews:\";}s:30:\"sArticletopImmediatelyavailabl\";a:1:{s:5:\"value\";s:8:\"In Stock\";}s:14:\"sArticletosave\";a:1:{s:5:\"value\";s:4:\"Save\";}s:25:\"sArticletoseeinthepicture\";a:1:{s:5:\"value\";s:16:\"On this picture:\";}s:17:\"sArticletwopoints\";a:1:{s:5:\"value\";s:8:\"2 Points\";}s:13:\"sArticleuntil\";a:1:{s:5:\"value\";s:5:\"until\";}s:17:\"sArticleupdatenow\";a:1:{s:5:\"value\";s:10:\"Update now\";}s:29:\"sArticlewithoutagerestriction\";a:1:{s:5:\"value\";s:23:\"Without age restriction\";}s:19:\"sArticleworkingdays\";a:1:{s:5:\"value\";s:10:\"Workingday\";}s:25:\"sArticlewriteanassessment\";a:1:{s:5:\"value\";s:15:\"Create a review\";}s:20:\"sArticlewriteareview\";a:1:{s:5:\"value\";s:15:\"Create a review\";}s:19:\"sArticlewritereview\";a:1:{s:5:\"value\";s:15:\"Create a review\";}s:19:\"sArticleyourcomment\";a:1:{s:5:\"value\";s:13:\"Your comment:\";}s:16:\"sArticleyourname\";a:1:{s:5:\"value\";s:9:\"Your Name\";}s:19:\"sArticleyouropinion\";a:1:{s:5:\"value\";s:13:\"Your comment:\";}s:18:\"sArticlezeropoints\";a:1:{s:5:\"value\";s:8:\"0 Points\";}s:23:\"sBasketaddedtothebasket\";a:1:{s:5:\"value\";s:32:\"was added to your shopping cart!\";}s:13:\"sBasketamount\";a:1:{s:5:\"value\";s:9:\"Quantity:\";}s:14:\"sBasketArticle\";a:1:{s:5:\"value\";s:7:\"Article\";}s:30:\"sBasketarticlefromourcatalogue\";a:1:{s:5:\"value\";s:29:\"Add articles from our catalog\";}s:22:\"sBasketarticlenotfound\";a:1:{s:5:\"value\";s:17:\"Article not found\";}s:20:\"sBasketasanimmediate\";a:1:{s:5:\"value\";s:34:\"Available as an immediate download\";}s:23:\"sBasketasasmallthankyou\";a:1:{s:5:\"value\";s:63:\"As a small thank-you, you receive this article free in addition\";}s:19:\"sBasketavailability\";a:1:{s:5:\"value\";s:8:\"In Stock\";}s:20:\"sBasketavailablefrom\";a:1:{s:5:\"value\";s:20:\"Available from stock\";}s:21:\"sBasketbacktomainpage\";a:1:{s:5:\"value\";s:17:\"Back to Mainpage!\";}s:21:\"sBasketbasketdiscount\";a:1:{s:5:\"value\";s:13:\"Cart-discount\";}s:30:\"sBasketbetweenfollowingpremium\";a:1:{s:5:\"value\";s:44:\"Please choose between the following premiums\";}s:15:\"sBasketcheckout\";a:1:{s:5:\"value\";s:8:\"Checkout\";}s:30:\"sBasketcheckoutcustomerswithyo\";a:1:{s:5:\"value\";s:45:\"Customers Who Bought This Item Also Bought\n  \";}s:23:\"sBasketcontinueshopping\";a:1:{s:5:\"value\";s:17:\"Continue shopping\";}s:30:\"sBasketcustomerswithyoursimila\";a:1:{s:5:\"value\";s:48:\"Customers Viewing This Page May Be Interested in\";}s:30:\"sBasketdeletethisitemfrombaske\";a:1:{s:5:\"value\";s:34:\"Erase this article from the basket\";}s:15:\"sBasketdelivery\";a:1:{s:5:\"value\";s:13:\"Shipping time\";}s:22:\"sBasketdeliverycountry\";a:1:{s:5:\"value\";s:16:\"Shipping country\";}s:24:\"sBasketdesignatedarticle\";a:1:{s:5:\"value\";s:50:\"Favorites - selected articles for a later purchase\";}s:15:\"sBasketdispatch\";a:1:{s:5:\"value\";s:16:\"Mode of shipment\";}s:23:\"sBasketerasefromnotepad\";a:1:{s:5:\"value\";s:37:\"Erase this article from the favorites\";}s:25:\"sBasketforwardingexpenses\";a:1:{s:5:\"value\";s:25:\"Shipping rates & policies\";}s:11:\"sBasketfree\";a:1:{s:5:\"value\";s:5:\"FREE!\";}s:12:\"sBasketfree1\";a:1:{s:5:\"value\";s:4:\"FREE\";}s:11:\"sBasketfrom\";a:1:{s:5:\"value\";s:4:\"from\";}s:18:\"sBasketinthebasket\";a:1:{s:5:\"value\";s:20:\"add to shopping cart\";}s:20:\"sBasketintothebasket\";a:1:{s:5:\"value\";s:20:\"Add to shopping cart\";}s:28:\"sBasketItautomaticallystores\";a:1:{s:5:\"value\";s:126:\"automatically stores your personal favorite-list.\nYou can comfortably retrieve your registered articles in a subsequent visit.\";}s:26:\"sBasketjustthedesireditems\";a:1:{s:5:\"value\";s:56:\"Put simply the desired articles on the favorite-list and\";}s:23:\"sBasketlastinyourbasket\";a:1:{s:5:\"value\";s:32:\"Last article added in your cart:\";}s:24:\"sBasketminimumordervalue\";a:1:{s:5:\"value\";s:37:\"Attention. The minimum order value of\";}s:13:\"sBasketmodify\";a:1:{s:5:\"value\";s:6:\"Modify\";}s:23:\"sBasketmoreinformations\";a:1:{s:5:\"value\";s:16:\"More information\";}s:27:\"sBasketnoitemsonyournotepad\";a:1:{s:5:\"value\";s:45:\"There are no articles on your favorites-list.\";}s:25:\"sBasketnopictureavailable\";a:1:{s:5:\"value\";s:20:\"No picture available\";}s:14:\"sBasketnotepad\";a:1:{s:5:\"value\";s:9:\"Favorites\";}s:20:\"sBasketnotreachedyet\";a:1:{s:5:\"value\";s:19:\"is not reached yet!\";}s:13:\"sBasketnumber\";a:1:{s:5:\"value\";s:8:\"Quantity\";}s:18:\"sBasketordernumber\";a:1:{s:5:\"value\";s:9:\"Order No.\";}s:14:\"sBasketpayment\";a:1:{s:5:\"value\";s:17:\"Method of Payment\";}s:19:\"sBasketpleasechoose\";a:1:{s:5:\"value\";s:16:\"Please choose...\";}s:23:\"sBasketrecalculateprice\";a:1:{s:5:\"value\";s:31:\"Recalculate price - update cart\";}s:26:\"sBasketsaveyourpersonalfav\";a:1:{s:5:\"value\";s:60:\"Save your personal favorites - until you visit us next time.\";}s:17:\"sBasketshowbasket\";a:1:{s:5:\"value\";s:18:\"Show shopping cart\";}s:18:\"sBasketstep1basket\";a:1:{s:5:\"value\";s:21:\"Step1 - Shopping Cart\";}s:15:\"sBasketsubtotal\";a:1:{s:5:\"value\";s:9:\"Subtotal:\";}s:10:\"sBasketsum\";a:1:{s:5:\"value\";s:5:\"Total\";}s:17:\"sBaskettocheckout\";a:1:{s:5:\"value\";s:9:\"Checkout!\";}s:15:\"sBaskettotalsum\";a:1:{s:5:\"value\";s:5:\"Total\";}s:16:\"sBasketunitprice\";a:1:{s:5:\"value\";s:10:\"Unit price\";}s:15:\"sBasketweekdays\";a:1:{s:5:\"value\";s:8:\"Workdays\";}s:17:\"sBasketyourbasket\";a:1:{s:5:\"value\";s:18:\"Your shopping cart\";}s:24:\"sBasketyourbasketisempty\";a:1:{s:5:\"value\";s:43:\"There are no articles in your shopping cart\";}s:21:\"sCategorymanufacturer\";a:1:{s:5:\"value\";s:12:\"Manufacturer\";}s:18:\"sCategorynopicture\";a:1:{s:5:\"value\";s:20:\"No picture available\";}s:26:\"sCategoryothermanufacturer\";a:1:{s:5:\"value\";s:19:\"Other manufacturers\";}s:16:\"sCategoryshowall\";a:1:{s:5:\"value\";s:8:\"Show all\";}s:18:\"sCategorytopseller\";a:1:{s:5:\"value\";s:9:\"Topseller\";}s:18:\"sContentattachment\";a:1:{s:5:\"value\";s:11:\"Attachment:\";}s:12:\"sContentback\";a:1:{s:5:\"value\";s:4:\"Back\";}s:14:\"sContentbrowse\";a:1:{s:5:\"value\";s:7:\"Browse:\";}s:21:\"sContentbrowseforward\";a:1:{s:5:\"value\";s:14:\"Browse forward\";}s:26:\"sContentcurrentlynoentries\";a:1:{s:5:\"value\";s:30:\"Currently no entries available\";}s:16:\"sContentdownload\";a:1:{s:5:\"value\";s:8:\"Download\";}s:21:\"sContententrynotfound\";a:1:{s:5:\"value\";s:14:\"No entry found\";}s:21:\"sContentgobackonepage\";a:1:{s:5:\"value\";s:16:\"Browse backward \";}s:12:\"sContentmore\";a:1:{s:5:\"value\";s:6:\"[more]\";}s:24:\"sContentmoreinformations\";a:1:{s:5:\"value\";s:17:\"More information:\";}s:21:\"sContentonthispicture\";a:1:{s:5:\"value\";s:16:\"On this picture:\";}s:20:\"sCustomdirectcontact\";a:1:{s:5:\"value\";s:14:\"Direct contact\";}s:19:\"sCustomsitenotfound\";a:1:{s:5:\"value\";s:14:\"Page not found\";}s:19:\"sErrorBillingAdress\";a:1:{s:5:\"value\";s:40:\"Please fill out all fields marked in red\";}s:14:\"sErrorcheckout\";a:1:{s:5:\"value\";s:8:\"Checkout\";}s:21:\"sErrorCookiesDisabled\";a:1:{s:5:\"value\";s:66:\"To use this feature, you must have cookies enabled in your browser\";}s:11:\"sErrorEmail\";a:1:{s:5:\"value\";s:34:\"Please enter a valid email address\";}s:19:\"sErrorEmailForgiven\";a:1:{s:5:\"value\";s:40:\"This email address is already registered\";}s:19:\"sErrorEmailNotFound\";a:1:{s:5:\"value\";s:32:\"This email address was not found\";}s:11:\"sErrorerror\";a:1:{s:5:\"value\";s:21:\"An error has occurred\";}s:23:\"sErrorForgotMailUnknown\";a:1:{s:5:\"value\";s:28:\"This mail address is unknown\";}s:10:\"sErrorhome\";a:1:{s:5:\"value\";s:4:\"Home\";}s:11:\"sErrorLogin\";a:1:{s:5:\"value\";s:50:\"Your access data could not be assigned to any user\";}s:23:\"sErrorMerchantNotActive\";a:1:{s:5:\"value\";s:73:\"You are not registered as a reseller or your account has not approved yet\";}s:29:\"sErrormoreinterestingarticles\";a:1:{s:5:\"value\";s:17:\"You may also like\";}s:22:\"sErrororderwascanceled\";a:1:{s:5:\"value\";s:22:\"The order was canceled\";}s:14:\"sErrorPassword\";a:1:{s:5:\"value\";s:57:\"Please choose a password consisting at least 6 characters\";}s:21:\"sErrorShippingAddress\";a:1:{s:5:\"value\";s:40:\"Please fill out all fields marked in red\";}s:27:\"sErrorthisarticleisnolonger\";a:1:{s:5:\"value\";s:34:\"The product has been discontinued!\";}s:12:\"sErrorUnknow\";a:1:{s:5:\"value\";s:29:\"An unknown error has occurred\";}s:16:\"sErrorValidEmail\";a:1:{s:5:\"value\";s:34:\"Please enter a valid email address\";}s:13:\"sIndexaccount\";a:1:{s:5:\"value\";s:10:\"My Account\";}s:16:\"sIndexactivation\";a:1:{s:5:\"value\";s:284:\"3. Activation: As soon as both satisfactory forms are given to us and provided that your signatures match, we switch you for plays from 18 freely. Afterwards we immediately send you a confirmation email. Then you can quite simply order the USK 18 title comfortably about the web shop.\";}s:25:\"sIndexallpricesexcludevat\";a:1:{s:5:\"value\";s:28:\"* All prices exclude VAT and\";}s:25:\"sIndexandpossibledelivery\";a:1:{s:5:\"value\";s:50:\"and possibly shipping fees unless otherwise stated\";}s:12:\"sIndexappear\";a:1:{s:5:\"value\";s:9:\"Released:\";}s:13:\"sIndexarticle\";a:1:{s:5:\"value\";s:10:\"article(s)\";}s:19:\"sIndexarticlesfound\";a:1:{s:5:\"value\";s:18:\" article(s) found!\";}s:24:\"sIndexavailabledownloads\";a:1:{s:5:\"value\";s:20:\"Available downloads:\";}s:16:\"sIndexbacktohome\";a:1:{s:5:\"value\";s:12:\"back to home\";}s:12:\"sIndexbasket\";a:1:{s:5:\"value\";s:16:\"My shopping cart\";}s:25:\"sIndexcertifiedonlineshop\";a:1:{s:5:\"value\";s:113:\"Trusted Shops certified online shop with money-back guarantee. Click on the seal in order to verify the validity.\";}s:26:\"sIndexchangebillingaddress\";a:1:{s:5:\"value\";s:22:\"Change billing address\";}s:27:\"sIndexchangedeliveryaddress\";a:1:{s:5:\"value\";s:23:\"Change delivery address\";}s:19:\"sIndexchangepayment\";a:1:{s:5:\"value\";s:24:\"Change method of payment\";}s:19:\"sIndexclientaccount\";a:1:{s:5:\"value\";s:16:\"Customer account\";}s:26:\"sIndexcompareupto5articles\";a:1:{s:5:\"value\";s:42:\"You can compare up to 5 items in one step!\";}s:15:\"sIndexcopyright\";a:1:{s:5:\"value\";s:51:\"Copyright © 2008 shopware.ag - All rights reserved.\";}s:11:\"sIndexcover\";a:1:{s:5:\"value\";s:6:\"Cover:\";}s:14:\"sIndexcurrency\";a:1:{s:5:\"value\";s:9:\"Currency:\";}s:14:\"sIndexdownload\";a:1:{s:5:\"value\";s:8:\"Download\";}s:13:\"sIndexenglish\";a:1:{s:5:\"value\";s:7:\"English\";}s:11:\"sIndexextra\";a:1:{s:5:\"value\";s:7:\"Extras:\";}s:28:\"sIndexforreasonofinformation\";a:1:{s:5:\"value\";s:477:\"For reasons of information we display in our online shop also games which own no gift suitable for young people. However, there is a way for customers, who have already completed the eighteenth year,  to purchase these games. Now you can order with us also quite simply USK 18 games above the postal dispatch way. To fulfil the requirements of the protection of children and young people-sedate you must be personalised in addition simply by Postident. The way is quite simply:\";}s:12:\"sIndexfrench\";a:1:{s:5:\"value\";s:6:\"French\";}s:10:\"sIndexfrom\";a:1:{s:5:\"value\";s:4:\"from\";}s:12:\"sIndexgerman\";a:1:{s:5:\"value\";s:6:\"German\";}s:11:\"sIndexhello\";a:1:{s:5:\"value\";s:5:\"Hello\";}s:10:\"sIndexhome\";a:1:{s:5:\"value\";s:4:\"Home\";}s:20:\"sIndexhowcaniacquire\";a:1:{s:5:\"value\";s:68:\"How can i acquire the games which are restricted only from 18 years?\";}s:14:\"sIndexlanguage\";a:1:{s:5:\"value\";s:9:\"Language:\";}s:12:\"sIndexlogout\";a:1:{s:5:\"value\";s:6:\"Logout\";}s:14:\"sIndexmybasket\";a:1:{s:5:\"value\";s:12:\"Show my cart\";}s:24:\"sIndexmyinstantdownloads\";a:1:{s:5:\"value\";s:20:\"My instant downloads\";}s:14:\"sIndexmyorders\";a:1:{s:5:\"value\";s:9:\"My orders\";}s:22:\"sIndexnoagerestriction\";a:1:{s:5:\"value\";s:23:\"Without age restriction\";}s:13:\"sIndexnotepad\";a:1:{s:5:\"value\";s:9:\"Favorites\";}s:18:\"sIndexonthepicture\";a:1:{s:5:\"value\";s:16:\"On this picture:\";}s:17:\"sIndexordernumber\";a:1:{s:5:\"value\";s:10:\"Order no.:\";}s:18:\"sIndexourcommentto\";a:1:{s:5:\"value\";s:13:\"Our review on\";}s:14:\"sIndexoverview\";a:1:{s:5:\"value\";s:8:\"Overview\";}s:16:\"sIndexpagenumber\";a:1:{s:5:\"value\";s:11:\"Pagenumber:\";}s:26:\"sIndexpossiblydeliveryfees\";a:1:{s:5:\"value\";s:50:\"and possibly shipping fees unless otherwise stated\";}s:15:\"sIndexpostident\";a:1:{s:5:\"value\";s:171:\"2. POSTIDENT: The German post provides a POSTIDENT form in the confirmation of your majority. Please, sign this also. Then the German post sends both signed documents to .\";}s:19:\"sIndexpricesinclvat\";a:1:{s:5:\"value\";s:27:\"* All prices incl. VAT plus\";}s:14:\"sIndexprinting\";a:1:{s:5:\"value\";s:6:\"Print:\";}s:25:\"sIndexproductinformations\";a:1:{s:5:\"value\";s:19:\"Product information\";}s:18:\"sIndexrealizedwith\";a:1:{s:5:\"value\";s:13:\"realised with\";}s:30:\"sIndexrealizedwiththeshopsyste\";a:1:{s:5:\"value\";s:57:\"realized by shopware ag an the webshop-software Shopware \";}s:14:\"sIndexreleased\";a:1:{s:5:\"value\";s:19:\"unrated (universal)\";}s:25:\"sIndexreleasedfrom12years\";a:1:{s:5:\"value\";s:20:\"Restricted 12 years+\";}s:25:\"sIndexreleasedfrom16years\";a:1:{s:5:\"value\";s:20:\"Restricted 16 years+\";}s:25:\"sIndexreleasedfrom18years\";a:1:{s:5:\"value\";s:20:\"Restricted 18 years+\";}s:24:\"sIndexreleasedfrom6years\";a:1:{s:5:\"value\";s:19:\"Restricted 6 years+\";}s:12:\"sIndexsearch\";a:1:{s:5:\"value\";s:0:\"\";}s:14:\"sIndexshipping\";a:1:{s:5:\"value\";s:14:\"Shipping rates\";}s:14:\"sIndexshopware\";a:1:{s:5:\"value\";s:8:\"Shopware\";}s:17:\"sIndexshownotepad\";a:1:{s:5:\"value\";s:14:\"Show favorites\";}s:21:\"sIndexsimilararticles\";a:1:{s:5:\"value\";s:15:\"Suggested Items\";}s:10:\"sIndexsite\";a:1:{s:5:\"value\";s:4:\"Page\";}s:22:\"sIndexsuitablearticles\";a:1:{s:5:\"value\";s:16:\"Suggested Items:\";}s:27:\"sIndexsystemrequirementsfor\";a:1:{s:5:\"value\";s:22:\"System requirement for\";}s:8:\"sIndexto\";a:1:{s:5:\"value\";s:2:\"To\";}s:23:\"sIndextrustedshopslabel\";a:1:{s:5:\"value\";s:61:\"Trusted shops stamp of quality - request validity check here!\";}s:19:\"sIndexviewmyaccount\";a:1:{s:5:\"value\";s:16:\"Visit my account\";}s:19:\"sIndexwelcometoyour\";a:1:{s:5:\"value\";s:28:\"and welcome to your personal\";}s:10:\"sIndexwere\";a:1:{s:5:\"value\";s:4:\"were\";}s:16:\"sIndexyouarehere\";a:1:{s:5:\"value\";s:13:\"You are here:\";}s:19:\"sIndexyouloadthepdf\";a:1:{s:5:\"value\";s:222:\"1. Load the PDF registration form in your customer area and print it out. Please, present this form together with your identity card or passport in a branch of the German post. Mark the appropriate field and sign the form.\";}s:26:\"sInfoEmailAlreadyRegiested\";a:1:{s:5:\"value\";s:34:\"You already receive our newsletter\";}s:26:\"sLoginalreadyhaveanaccount\";a:1:{s:5:\"value\";s:25:\"I am a returning customer\";}s:15:\"sLoginareyounew\";a:1:{s:5:\"value\";s:27:\"New customer? Start here at\";}s:10:\"sLoginback\";a:1:{s:5:\"value\";s:4:\"Back\";}s:18:\"sLogindealeraccess\";a:1:{s:5:\"value\";s:16:\"Reseller account\";}s:11:\"sLoginerror\";a:1:{s:5:\"value\";s:22:\"An error has occurred!\";}s:24:\"sLoginloginwithyouremail\";a:1:{s:5:\"value\";s:50:\"Please login using your eMail address and password\";}s:18:\"sLoginlostpassword\";a:1:{s:5:\"value\";s:21:\"Forgot your password?\";}s:28:\"sLoginlostpasswordhereyoucan\";a:1:{s:5:\"value\";s:57:\"Forgot your password? Here you can request a new password\";}s:17:\"sLoginnewcustomer\";a:1:{s:5:\"value\";s:12:\"New customer\";}s:28:\"sLoginnewpasswordhasbeensent\";a:1:{s:5:\"value\";s:38:\"Your new password has been sent to you\";}s:15:\"sLoginnoproblem\";a:1:{s:5:\"value\";s:91:\"No problem, ordering from us is easy and secure. The registration takes only a few moments.\";}s:14:\"sLoginpassword\";a:1:{s:5:\"value\";s:14:\"Your password:\";}s:17:\"sLoginregisternow\";a:1:{s:5:\"value\";s:12:\"Register now\";}s:16:\"sLoginstep1login\";a:1:{s:5:\"value\";s:26:\"Step1 - Login/Registration\";}s:27:\"sLoginwewillsendyouanewpass\";a:1:{s:5:\"value\";s:94:\"We will send you a new, randomly generated password. This can be changed in the customer area.\";}s:21:\"sLoginyouremailadress\";a:1:{s:5:\"value\";s:19:\"Your email address:\";}s:27:\"sOrderprocessacceptourterms\";a:1:{s:5:\"value\";s:46:\"Please accept our general terms and conditions\";}s:19:\"sOrderprocessamount\";a:1:{s:5:\"value\";s:8:\"Quantity\";}s:20:\"sOrderprocessarticle\";a:1:{s:5:\"value\";s:7:\"Article\";}s:26:\"sOrderprocessbillingadress\";a:1:{s:5:\"value\";s:72:\"You can change billing address, shipping address and payment method now.\";}s:27:\"sOrderprocessbillingadress1\";a:1:{s:5:\"value\";s:15:\"Billing address\";}s:19:\"sOrderprocesschange\";a:1:{s:5:\"value\";s:6:\"Change\";}s:25:\"sOrderprocesschangebasket\";a:1:{s:5:\"value\";s:20:\"Change shopping cart\";}s:30:\"sOrderprocesschangeyourpayment\";a:1:{s:5:\"value\";s:122:\"Please change your payment method. The purchase of instant downloads is currently not possible with your selected payment!\";}s:22:\"sOrderprocessclickhere\";a:1:{s:5:\"value\";s:44:\"Trusted Shops stamp of quality - click here.\";}s:20:\"sOrderprocesscomment\";a:1:{s:5:\"value\";s:11:\"Annotation:\";}s:20:\"sOrderprocesscompany\";a:1:{s:5:\"value\";s:7:\"Company\";}s:28:\"sOrderprocessdeliveryaddress\";a:1:{s:5:\"value\";s:16:\"Shipping address\";}s:21:\"sOrderprocessdispatch\";a:1:{s:5:\"value\";s:16:\"Shipping method:\";}s:25:\"sOrderprocessdoesnotreach\";a:1:{s:5:\"value\";s:16:\"not reached yet!\";}s:28:\"sOrderprocessenteradditional\";a:1:{s:5:\"value\";s:57:\"Please, give here additional information about your order\";}s:30:\"sOrderprocessforwardingexpense\";a:1:{s:5:\"value\";s:15:\"Shipping costs:\";}s:25:\"sOrderprocessforyourorder\";a:1:{s:5:\"value\";s:28:\"Thank you for your order at \";}s:17:\"sOrderprocessfree\";a:1:{s:5:\"value\";s:4:\"FREE\";}s:26:\"sOrderprocessimportantinfo\";a:1:{s:5:\"value\";s:45:\"Important information to the shipping country\";}s:30:\"sOrderprocessinformationsabout\";a:1:{s:5:\"value\";s:30:\"Informations about your order:\";}s:27:\"sOrderprocessmakethepayment\";a:1:{s:5:\"value\";s:15:\"Please pay now:\";}s:30:\"sOrderprocessminimumordervalue\";a:1:{s:5:\"value\";s:46:\"Attention. You have the minimum order value of\";}s:15:\"sOrderprocessmr\";a:1:{s:5:\"value\";s:2:\"Mr\";}s:15:\"sOrderprocessms\";a:1:{s:5:\"value\";s:2:\"Ms\";}s:21:\"sOrderprocessnettotal\";a:1:{s:5:\"value\";s:10:\"Net total:\";}s:24:\"sOrderprocessordernumber\";a:1:{s:5:\"value\";s:13:\"Order number:\";}s:30:\"sOrderprocessperorderonevouche\";a:1:{s:5:\"value\";s:41:\"Per order max. one voucher can be cashed.\";}s:24:\"sOrderprocesspleasecheck\";a:1:{s:5:\"value\";s:50:\"Please, check your order again, before sending it.\";}s:18:\"sOrderprocessprice\";a:1:{s:5:\"value\";s:5:\"Price\";}s:18:\"sOrderprocessprint\";a:1:{s:5:\"value\";s:5:\"Print\";}s:27:\"sOrderprocessprintorderconf\";a:1:{s:5:\"value\";s:33:\"Print out order confirmation now!\";}s:29:\"sOrderprocessrecommendtoprint\";a:1:{s:5:\"value\";s:55:\"We recommend to print out the order confirmation below.\";}s:23:\"sOrderprocessrevocation\";a:1:{s:5:\"value\";s:18:\"Right of withdrawl\";}s:26:\"sOrderprocesssameappliesto\";a:1:{s:5:\"value\";s:42:\"The same applies to the selected articles.\";}s:28:\"sOrderprocessselectedpayment\";a:1:{s:5:\"value\";s:22:\"Choosen payment method\";}s:30:\"sOrderprocessspecifythetransfe\";a:1:{s:5:\"value\";s:60:\"Please, give by the referral the following intended purpose:\";}s:25:\"sOrderprocesstotalinclvat\";a:1:{s:5:\"value\";s:16:\"Total incl. VAT:\";}s:23:\"sOrderprocesstotalprice\";a:1:{s:5:\"value\";s:5:\"Total\";}s:29:\"sOrderprocesstransactionumber\";a:1:{s:5:\"value\";s:19:\"Transaction number:\";}s:30:\"sOrderprocesstrustedshopmember\";a:1:{s:5:\"value\";s:155:\"As a member of Trusted Shops, we offer a\n     additional money-back guarantee. We take all\n     Cost of this warranty, you only need to be\n     registered.\";}s:26:\"sOrderprocessvouchernumber\";a:1:{s:5:\"value\";s:15:\"Voucher number:\";}s:27:\"sOrderprocesswehaveprovided\";a:1:{s:5:\"value\";s:48:\"We have sent you an order confirmation by eMail.\";}s:28:\"sOrderprocessyourvouchercode\";a:1:{s:5:\"value\";s:62:\"Please, enter your voucher code here and click on the \"arrow\".\";}s:21:\"sPaymentaccountnumber\";a:1:{s:5:\"value\";s:16:\"Account number*:\";}s:22:\"sPaymentbankcodenumber\";a:1:{s:5:\"value\";s:17:\"Bank code number:\";}s:28:\"sPaymentchooseyourcreditcard\";a:1:{s:5:\"value\";s:26:\"Choose your credit card *:\";}s:24:\"sPaymentcreditcardnumber\";a:1:{s:5:\"value\";s:26:\"Your credit card number *:\";}s:25:\"sPaymentcurrentlyselected\";a:1:{s:5:\"value\";s:18:\"Currently selected\";}s:26:\"sPaymentcurrentlyselected1\";a:1:{s:5:\"value\";s:18:\"Currently Selected\";}s:11:\"sPaymentEsd\";a:1:{s:5:\"value\";s:14:\"online banking\";}s:23:\"sPaymentmarkedfieldsare\";a:1:{s:5:\"value\";s:43:\"Please fill in all required address fields.\";}s:13:\"sPaymentmonth\";a:1:{s:5:\"value\";s:5:\"Month\";}s:24:\"sPaymentnameofcardholder\";a:1:{s:5:\"value\";s:20:\"Name of cardholder*:\";}s:16:\"sPaymentshipping\";a:1:{s:5:\"value\";s:25:\"Shipping rates & policies\";}s:18:\"sPaymentvaliduntil\";a:1:{s:5:\"value\";s:14:\"Valid until *:\";}s:12:\"sPaymentyear\";a:1:{s:5:\"value\";s:4:\"Year\";}s:16:\"sPaymentyourbank\";a:1:{s:5:\"value\";s:11:\"Your Bank*:\";}s:22:\"sPaymentyourcreditcard\";a:1:{s:5:\"value\";s:15:\"Your creditcard\";}s:19:\"sRegisteraccessdata\";a:1:{s:5:\"value\";s:10:\"Your Login\";}s:25:\"sRegisterafterregistering\";a:1:{s:5:\"value\";s:79:\"Once your account is approved, you will see your reseller prices in this shop.\n\";}s:30:\"sRegisteralreadyhaveatraderacc\";a:1:{s:5:\"value\";s:36:\"You have already a reseller account?\";}s:13:\"sRegisterback\";a:1:{s:5:\"value\";s:4:\"Back\";}s:18:\"sRegisterbirthdate\";a:1:{s:5:\"value\";s:10:\"Birthdate:\";}s:19:\"sRegistercharacters\";a:1:{s:5:\"value\";s:11:\"Characters.\";}s:19:\"sRegistercityandzip\";a:1:{s:5:\"value\";s:22:\"Postal Code and City*:\";}s:25:\"sRegisterclickheretologin\";a:1:{s:5:\"value\";s:20:\"Click here to log in\";}s:16:\"sRegistercompany\";a:1:{s:5:\"value\";s:8:\"Company:\";}s:22:\"sRegisterconsiderupper\";a:1:{s:5:\"value\";s:31:\"Consider upper and lower case. \";}s:16:\"sRegistercountry\";a:1:{s:5:\"value\";s:9:\"Country*:\";}s:19:\"sRegisterdepartment\";a:1:{s:5:\"value\";s:11:\"Department:\";}s:29:\"sRegisterenterdeliveryaddress\";a:1:{s:5:\"value\";s:29:\"Enter a delivery address here\";}s:22:\"sRegistererroroccurred\";a:1:{s:5:\"value\";s:22:\"An error has occurred!\";}s:12:\"sRegisterfax\";a:1:{s:5:\"value\";s:4:\"Fax:\";}s:21:\"sRegisterfieldsmarked\";a:1:{s:5:\"value\";s:18:\"* required fields.\";}s:18:\"sRegisterfirstname\";a:1:{s:5:\"value\";s:13:\"First name *:\";}s:22:\"sRegisterforavatexempt\";a:1:{s:5:\"value\";s:89:\"Enter a VAT number to remove tax for orders being delivered to a country outside the EU. \";}s:23:\"sRegisterfreetextfields\";a:1:{s:5:\"value\";s:44:\"Additional Info: (for example: mobile phone)\";}s:20:\"sRegisterinthefuture\";a:1:{s:5:\"value\";s:59:\"Please SET up your account so that you can see your orders.\";}s:17:\"sRegisterlastname\";a:1:{s:5:\"value\";s:11:\"Last name*:\";}s:11:\"sRegistermr\";a:1:{s:5:\"value\";s:3:\"Mr.\";}s:11:\"sRegisterms\";a:1:{s:5:\"value\";s:3:\"Ms.\";}s:13:\"sRegisternext\";a:1:{s:5:\"value\";s:4:\"Next\";}s:26:\"sRegisternocustomeraccount\";a:1:{s:5:\"value\";s:30:\"Do not open a customer account\";}s:29:\"sRegisteronthisfollowingpages\";a:1:{s:5:\"value\";s:0:\"\";}s:14:\"sRegisterphone\";a:1:{s:5:\"value\";s:7:\"Phone*:\";}s:21:\"sRegisterpleasechoose\";a:1:{s:5:\"value\";s:14:\"Please choose:\";}s:21:\"sRegisterpleaseselect\";a:1:{s:5:\"value\";s:17:\"Please choose...\n\";}s:27:\"sRegisterrepeatyourpassword\";a:1:{s:5:\"value\";s:22:\"Repeat your password*:\";}s:19:\"sRegisterrevocation\";a:1:{s:5:\"value\";s:18:\"Right of withdrawl\";}s:13:\"sRegistersave\";a:1:{s:5:\"value\";s:4:\"Save\";}s:22:\"sRegisterselectpayment\";a:1:{s:5:\"value\";s:43:\"Please choose your preferred payment method\";}s:29:\"sRegistersendusyourtradeproof\";a:1:{s:5:\"value\";s:28:\"Fax your VAT number to us at\";}s:30:\"sRegistersendusyourtradeproofb\";a:1:{s:5:\"value\";s:151:\"Send your VAT number by fax to +49 2555 99 75 0 99.\nIf you are already a registered re-seller, you can skip this part. You don´t have to send it again.\";}s:25:\"sRegisterseperatedelivery\";a:1:{s:5:\"value\";s:50:\"I would like to enter a different delivery address\";}s:30:\"sRegistershippingaddressdiffer\";a:1:{s:5:\"value\";s:56:\"Your shipping address differs from your billing address.\";}s:24:\"sRegisterstreetandnumber\";a:1:{s:5:\"value\";s:16:\"Street and No.*:\";}s:28:\"sRegistersubscribenewsletter\";a:1:{s:5:\"value\";s:26:\"Sign up for our newsletter\";}s:14:\"sRegistertitle\";a:1:{s:5:\"value\";s:7:\"Title*:\";}s:27:\"sRegistertraderregistration\";a:1:{s:5:\"value\";s:21:\"Reseller Registration\";}s:14:\"sRegistervatid\";a:1:{s:5:\"value\";s:11:\"VAT number:\";}s:16:\"sRegisterwecheck\";a:1:{s:5:\"value\";s:49:\"After verification your account will be approved.\";}s:27:\"sRegisterwecheckyouastrader\";a:1:{s:5:\"value\";s:212:\"After verification your account will be approved. After clearing you get informations per eMail.\nFrom now on, you´ll see your special reseller prices directly, displayed on the product-detail- and overview-pages.\";}s:24:\"sRegisteryouraccountdata\";a:1:{s:5:\"value\";s:17:\"Your billing data\";}s:18:\"sRegisteryouremail\";a:1:{s:5:\"value\";s:20:\"Your eMail-address*:\";}s:21:\"sRegisteryourpassword\";a:1:{s:5:\"value\";s:15:\"Your password*:\";}s:27:\"sRegisteryourpasswordatlast\";a:1:{s:5:\"value\";s:33:\"Your password needs a minimum of \";}s:19:\"sSearchafterfilters\";a:1:{s:5:\"value\";s:9:\"by filter\";}s:20:\"sSearchallcategories\";a:1:{s:5:\"value\";s:19:\"Show all categories\";}s:17:\"sSearchallfilters\";a:1:{s:5:\"value\";s:11:\"All filters\";}s:22:\"sSearchallmanufacturer\";a:1:{s:5:\"value\";s:17:\"All Manufacturers\";}s:16:\"sSearchallprices\";a:1:{s:5:\"value\";s:10:\"All Prices\";}s:20:\"sSearcharticlesfound\";a:1:{s:5:\"value\";s:18:\" article(s) found!\";}s:22:\"sSearcharticlesperpage\";a:1:{s:5:\"value\";s:18:\"Articles per page:\";}s:13:\"sSearchbrowse\";a:1:{s:5:\"value\";s:7:\"Browse:\";}s:21:\"sSearchbymanufacturer\";a:1:{s:5:\"value\";s:15:\"by manufacturer\";}s:14:\"sSearchbyprice\";a:1:{s:5:\"value\";s:8:\"by price\";}s:14:\"sSearchelected\";a:1:{s:5:\"value\";s:8:\"Choosen:\";}s:19:\"sSearchhighestprice\";a:1:{s:5:\"value\";s:13:\"Highest price\";}s:16:\"sSearchitemtitle\";a:1:{s:5:\"value\";s:19:\"Article description\";}s:18:\"sSearchlowestprice\";a:1:{s:5:\"value\";s:12:\"Lowest price\";}s:15:\"sSearchnextpage\";a:1:{s:5:\"value\";s:9:\"Next page\";}s:22:\"sSearchnoarticlesfound\";a:1:{s:5:\"value\";s:42:\"Your search did not match to any articles!\";}s:18:\"sSearchonepageback\";a:1:{s:5:\"value\";s:13:\"One page back\";}s:25:\"sSearchothermanufacturers\";a:1:{s:5:\"value\";s:20:\"Other manufacturers:\";}s:17:\"sSearchpopularity\";a:1:{s:5:\"value\";s:11:\"Bestselling\";}s:18:\"sSearchreleasedate\";a:1:{s:5:\"value\";s:12:\"Release date\";}s:16:\"sSearchrelevance\";a:1:{s:5:\"value\";s:9:\"Relevance\";}s:23:\"sSearchsearchcategories\";a:1:{s:5:\"value\";s:20:\"Search by categories\";}s:19:\"sSearchsearchresult\";a:1:{s:5:\"value\";s:16:\"Search result(s)\";}s:25:\"sSearchsearchtermtooshort\";a:1:{s:5:\"value\";s:37:\"The entered search term is too short.\";}s:14:\"sSearchshowall\";a:1:{s:5:\"value\";s:8:\"Show all\";}s:11:\"sSearchsort\";a:1:{s:5:\"value\";s:5:\"Sort:\";}s:9:\"sSearchto\";a:1:{s:5:\"value\";s:2:\"to\";}s:29:\"sSearchunfortunatelytherewere\";a:1:{s:5:\"value\";s:38:\"unfortunately no entries were found to\";}s:11:\"sSearchwere\";a:1:{s:5:\"value\";s:4:\"were\";}s:24:\"sSupportallmanufacturers\";a:1:{s:5:\"value\";s:22:\"List all manufacturers\";}s:22:\"sSupportarticleperpage\";a:1:{s:5:\"value\";s:18:\"Articles per page:\";}s:12:\"sSupportback\";a:1:{s:5:\"value\";s:4:\"Back\";}s:14:\"sSupportbrowse\";a:1:{s:5:\"value\";s:7:\"Browse:\";}s:23:\"sSupportenterthenumbers\";a:1:{s:5:\"value\";s:52:\"Please enter the numbers into the following text box\";}s:21:\"sSupportentrynotfound\";a:1:{s:5:\"value\";s:15:\"No Entry found.\";}s:24:\"sSupportfieldsmarketwith\";a:1:{s:5:\"value\";s:43:\"Please fill in all required address fields.\";}s:20:\"sSupporthighestprice\";a:1:{s:5:\"value\";s:13:\"Highest price\";}s:17:\"sSupportitemtitle\";a:1:{s:5:\"value\";s:19:\"Article description\";}s:19:\"sSupportlowestprice\";a:1:{s:5:\"value\";s:12:\"Lowest price\";}s:16:\"sSupportnextpage\";a:1:{s:5:\"value\";s:16:\"One page forward\";}s:19:\"sSupportonepageback\";a:1:{s:5:\"value\";s:13:\"One page back\";}s:18:\"sSupportpopularity\";a:1:{s:5:\"value\";s:11:\"Bestselling\";}s:19:\"sSupportreleasedate\";a:1:{s:5:\"value\";s:12:\"Release date\";}s:12:\"sSupportsend\";a:1:{s:5:\"value\";s:4:\"Send\";}s:12:\"sSupportsort\";a:1:{s:5:\"value\";s:8:\"sort by:\";}s:21:\"sVoucherAlreadyCashed\";a:1:{s:5:\"value\";s:53:\"This voucher was already cashed with a previous order\";}s:23:\"sVoucherBoundToSupplier\";a:1:{s:5:\"value\";s:56:\"This voucher is valid only for products from {sSupplier}\";}s:21:\"sVoucherMinimumCharge\";a:1:{s:5:\"value\";s:64:\"The minimum turnover for this voucher amounts {sMinimumCharge} ?\";}s:16:\"sVoucherNotFound\";a:1:{s:5:\"value\";s:51:\"Voucher could not be found or is not valid any more\";}s:23:\"sVoucherOnlyOnePerOrder\";a:1:{s:5:\"value\";s:40:\"Per order only one voucher can be cashed\";}s:26:\"sVoucherWrongCustomergroup\";a:1:{s:5:\"value\";s:52:\"This coupon is not available for your customer group\";}s:25:\"sArticleinformationsabout\";a:1:{s:5:\"value\";s:47:\"Information about restricted 18 years+-articles\";}s:27:\"sArticlethevoucherautomatic\";a:1:{s:5:\"value\";s:209:\"* The voucher will be delivered automatically to you by eMail after registration and the first order of your friend. You have to be registered with the choosen email address in the shop to receive the voucher.\";}s:18:\"sBasketrecalculate\";a:1:{s:5:\"value\";s:11:\"Recalculate\";}s:11:\"sLoginlogin\";a:1:{s:5:\"value\";s:5:\"Login\";}s:25:\"sOrderprocesssendordernow\";a:1:{s:5:\"value\";s:14:\"Send order now\";}s:28:\"sOrderprocessforthemoneyback\";a:1:{s:5:\"value\";s:41:\"Registration for the money-back guarantee\";}s:17:\"sSearchcategories\";a:1:{s:5:\"value\";s:11:\"Categories:\";}s:19:\"sSearchmanufacturer\";a:1:{s:5:\"value\";s:13:\"Manufacturer:\";}s:21:\"sSearchshowallresults\";a:1:{s:5:\"value\";s:16:\"Show all results\";}s:21:\"sSearchnosearchengine\";a:1:{s:5:\"value\";s:24:\"No search engine support\";}s:27:\"sSupportfilloutallredfields\";a:1:{s:5:\"value\";s:38:\"Please fill out all red marked fields.\";}s:12:\"sArticlesend\";a:1:{s:5:\"value\";s:4:\"Send\";}s:14:\"sContact_right\";a:1:{s:5:\"value\";s:72:\"<strong>Demoshop<br />\n</strong><br />\nAdd your contact information here\";}s:12:\"sBankContact\";a:1:{s:5:\"value\";s:71:\"<strong>\nOur bank:\n</strong>\nVolksbank Musterstadt\nBIN:\nAccount number:\";}s:11:\"sArticleof1\";a:1:{s:5:\"value\";s:2:\"of\";}s:25:\"sBasketshippingdifference\";a:1:{s:5:\"value\";s:49:\"Order #1 #2 to get the whole order shipping free!\";}s:19:\"sRegister_advantage\";a:1:{s:5:\"value\";s:218:\"<h2>My advantages</h2>\n<ul>\n<li>faster shopping</li>\n<li>Save your user data and settings</li>\n<li>Have a look at your orders including shipping information</li>\n<li>Administrate your newsletter subscription</li>\n</ul>\";}s:20:\"sArticlePricePerUnit\";a:1:{s:5:\"value\";s:14:\"Price per unit\";}s:18:\"sArticleLastViewed\";a:1:{s:5:\"value\";s:11:\"Last viewed\";}s:16:\"sBasketLessStock\";a:1:{s:5:\"value\";s:57:\"Unfortunately there are not enough articles left in stock\";}s:20:\"sBasketLessStockRest\";a:1:{s:5:\"value\";s:76:\"Unfortunately there are not enough articles left in stock (x of y selctable)\";}s:24:\"sBasketPremiumDifference\";a:1:{s:5:\"value\";s:36:\"You almost reached this premium! Add\";}s:19:\"sAGBTextPaymentform\";a:1:{s:5:\"value\";s:42:\"I read the general terms and conditions...\";}s:14:\"sBasketInquiry\";a:1:{s:5:\"value\";s:19:\"Solicit a quotation\";}s:21:\"sArticleCompareDetail\";a:1:{s:5:\"value\";s:15:\"Compare article\";}}',1,'en'),(60,'config_mails','a:2:{s:7:\"subject\";s:22:\"Order shipped in parts\";s:7:\"content\";s:334:\"Dear{if $sUser.billing_salutation eq \"mr\"}Mr{elseif $sUser.billing_salutation eq \"ms\"}Mrs{/if} {$sUser.billing_firstname} {$sUser.billing_lastname},\n\nThe status of your order with order number {$sOrder.ordernumber} of {$sOrder.ordertime|date_format:\" %d-%m-%Y\"} has changed. The new status is as follows: {$sOrder.status_description}.\";}',23,'2'),(61,'config_mails','a:4:{s:8:\"fromMail\";s:16:\"{$sConfig.sMAIL}\";s:8:\"fromName\";s:20:\"{$sConfig.sSHOPNAME}\";s:7:\"subject\";s:38:\"Your order with {config name=shopName}\";s:7:\"content\";s:334:\"Dear{if $sUser.billing_salutation eq \"mr\"}Mr{elseif $sUser.billing_salutation eq \"ms\"}Mrs{/if} {$sUser.billing_firstname} {$sUser.billing_lastname},\n\nThe status of your order with order number {$sOrder.ordernumber} of {$sOrder.ordertime|date_format:\" %d-%m-%Y\"} has changed. The new status is as follows: {$sOrder.status_description}.\";}',14,'2'),(62,'config_mails','a:2:{s:7:\"subject\";s:38:\"Your order with {config name=shopName}\";s:7:\"content\";s:553:\"Hello {if $sUser.billing_salutation eq \"mr\"}Mr{elseif $sUser.billing_salutation eq \"ms\"}Mrs{/if} {$sUser.billing_firstname} {$sUser.billing_lastname},\n \nThe status of your order {$sOrder.ordernumber} has changed!\nThe current status of your order is as follows: {$sOrder.status_description}.\n\nYou can check the current status of your order on our website under \"My account\" - \"My orders\" anytime. But in case you have purchased without a registration or a customer account, you do not have this option.\n \nBest regards,\nYour team of {config name=shopName}\";}',30,'2'),(63,'config_mails','a:2:{s:7:\"subject\";s:36:\"Your order at {config name=shopName}\";s:7:\"content\";s:332:\"Dear{if $sUser.billing_salutation eq \"mr\"}Mr{elseif $sUser.billing_salutation eq \"ms\"}Mrs{/if} {$sUser.billing_firstname} {$sUser.billing_lastname},\n\nThe status of your order with order number{$sOrder.ordernumber} of {$sOrder.ordertime|date_format:\" %d-%m-%Y\"} has changed. The new status is as follows {$sOrder.status_description}.\";}',15,'2'),(64,'config_mails','a:2:{s:7:\"subject\";s:38:\"Your order with {config name=shopName}\";s:7:\"content\";s:551:\"Hello {if $sUser.billing_salutation eq \"mr\"}Mr{elseif $sUser.billing_salutation eq \"ms\"}Mrs{/if} {$sUser.billing_firstname} {$sUser.billing_lastname},\n \nThe order status of your order {$sOrder.ordernumber} has changed!\nThe order now has the following status: {$sOrder.status_description}.\n\nYou can check the current status of your order on our website under \"My account\" - \"My orders\" anytime. But in case you have purchased without a registration or a customer account, you do not have this option.\n \nBest regards,\nYour team of {config name=shopName}\";}',33,'2'),(65,'config_mails','a:2:{s:7:\"subject\";s:13:\"Status change\";s:7:\"content\";s:923:\"Dear {if $sUser.billing_salutation eq \"mr\"}Mr{elseif $sUser.billing_salutation eq \"ms\"} Mrs{/if} {$sUser.billing_firstname} {$sUser.billing_lastname},\n \nThe status of your order {$sOrder.ordernumber} of {$sOrder.ordertime|date_format:\" %d.%m.%Y\"} \nhas changed. The new status is as follows: \"{$sOrder.status_description}\".\n \n \nInformation on your order:\n================================== \n{foreach item=details key=position from=$sOrderDetails}\n{$position+1|fill:3} {$details.articleordernumber|fill:10:\" \":\"...\"} {$details.name|fill:30} {$details.quantity} x {$details.price|string_format:\"%.2f\"} {$sConfig.sCURRENCY}\n{/foreach}\n \nShipping costs: {$sOrder.invoice_shipping} {$sConfig.sCURRENCY}\nNet total: {$sOrder.invoice_amount_net|string_format:\"%.2f\"} {$sConfig.sCURRENCY}\nTotal amount incl. VAT: {$sOrder.invoice_amount|string_format:\"%.2f\"} {$sConfig.sCURRENCY}\n \nBest regards,\nYour team of {config name=shopName}\n\n\";}',31,'2'),(66,'config_mails','a:2:{s:7:\"subject\";s:38:\"Your order with {config name=shopName}\";s:7:\"content\";s:552:\"Hello {if $sUser.billing_salutation eq \"mr\"}Mr{elseif $sUser.billing_salutation eq \"ms\"}Mrs{/if} {$sUser.billing_firstname} {$sUser.billing_lastname},\n \nThe order status of your order {$sOrder.ordernumber} has changed!\nYour order now has the following status: {$sOrder.status_description}.\n\nYou can check the current status of your order on our website under \"My account\" - \"My orders\" anytime. But in case you have purchased without a registration or a customer account, you do not have this option.\n \nBest regards,\nYour team of {config name=shopName}\";}',34,'2'),(67,'config_mails','a:2:{s:7:\"subject\";s:38:\"Your order with {config name=shopName}\";s:7:\"content\";s:389:\"Dear{if $sUser.billing_salutation eq \"mr\"}Mr{elseif $sUser.billing_salutation eq \"ms\"}Mrs{/if} \n{$sUser.billing_firstname} {$sUser.billing_lastname},\n \nThe status of your order with order number {$sOrder.ordernumber} of {$sOrder.ordertime|date_format:\" %d.%m.%Y\"} \nhas changed. The new status is as follows: {$sOrder.status_description}.\n \nBest regards,\nYour team of {config name=shopName}\";}',29,'2'),(68,'config_mails','a:2:{s:7:\"subject\";s:18:\"Your voucher order\";s:7:\"content\";s:230:\"Hello {$sUser.billing_firstname}{$sUser.billing_lastname},\n \nThank you for your order. (Number: {$sOrder.ordernumber}).\n\nPlease find your voucher code attached to this email.\n\n{$EventResult.code}\n\nBest regards,\n\nYour Shopware team\";}',47,'2'),(69,'config_mails','a:2:{s:7:\"subject\";s:55:\"Voucher order - No sufficient number of codes available\";s:7:\"content\";s:201:\"Hello,\n\nThere\'s no sufficient number of codes available for the order {$Ordernumber}! \n\nPlease check if a code has been assigned to this order and, if not, send the customer a voucher code manually.  \n\";}',48,'2'),(70,'config_mails','a:3:{s:7:\"subject\";s:37:\"Your registration has been successful\";s:7:\"content\";s:291:\"Hello {salutation} {firstname} {lastname},\n \nThank you for your registration with our Shop.\n \nYou will gain access via the email address {sMAIL}\nand the password you have chosen.\n \nYou can have your password sent to you by email anytime. \n \nBest regards\n \nYour team of {config name=shopName}\";s:11:\"contentHtml\";s:354:\"<div>\nHello {salutation} {firstname} {lastname},<br/><br/>\n \nThank you for your registration with our Shop.<br/><br/>\n \nYou will gain access via the email address {sMAIL} and the password you have chosen.<br/><br/>\n \nYou can have your password sent to you by email anytime. <br/><br/>\n \nBest regards<br/><br/>\n \nYour team of {config name=shopName}\n</div>\";}',1,'2'),(71,'config_mails','a:3:{s:7:\"subject\";s:28:\"Your order with the demoshop\";s:7:\"content\";s:1802:\"Hello {$billingaddress.firstname} {$billingaddress.lastname},\n \nThank you for your order at {config name=shopName} (Number: {$sOrderNumber}) on {$sOrderDay} at {$sOrderTime}.\nInformation on your order:\n \nPos. Art.No.              Quantities         Price        Total\n{foreach item=details key=position from=$sOrderDetails}\n{$position+1|fill:4} {$details.ordernumber|fill:20} {$details.quantity|fill:6} {$details.price|padding:8} EUR {$details.amount|padding:8} EUR\n{$details.articlename|wordwrap:49|indent:5}\n{/foreach}\n \nShipping costs: {$sShippingCosts}\nTotal net: {$sAmountNet}\n{if !$sNet}\nTotal gross: {$sAmount}\n{/if}\n \nSelected payment type: {$additional.payment.description}\n{$additional.payment.additionaldescription}\n{if $additional.payment.name == \"debit\"}\nYour bank connection:\nAccount number: {$sPaymentTable.account}\nBIN:{$sPaymentTable.bankcode}\nWe will withdraw the money from your bank account within the next days.\n{/if}\n{if $additional.payment.name == \"prepayment\"}\n \nOur bank connection:\nAccount: ###\nBIN: ###\n{/if}\n \n{if $sComment}\nYour comment:\n{$sComment}\n{/if}\n \nBilling address:\n{$billingaddress.company}\n{$billingaddress.firstname} {$billingaddress.lastname}\n{$billingaddress.street} {$billingaddress.streetnumber}\n{$billingaddress.zipcode} {$billingaddress.city}\n{$billingaddress.phone}\n{$additional.country.countryname}\n \nShipping address:\n{$shippingaddress.company}\n{$shippingaddress.firstname} {$shippingaddress.lastname}\n{$shippingaddress.street} {$shippingaddress.streetnumber}\n{$shippingaddress.zipcode} {$shippingaddress.city}\n{$additional.country.countryname}\n \n{if $billingaddress.ustid}\nYour VAT-ID: {$billingaddress.ustid}\nIn case of a successful order and if you are based in one of the EU countries, you will receive your goods exempt from turnover tax. \n{/if}\n \";s:11:\"contentHtml\";s:3556:\"<div style=\"font-family:arial; font-size:12px;\">\n \n<p>Hello {$billingaddress.firstname} {$billingaddress.lastname},<br/><br/>\n \nThank you for your order with {config name=shopName} (Nummer: {$sOrderNumber}) on {$sOrderDay} at {$sOrderTime}.\n<br/>\n<br/>\n<strong>Information on your order:</strong></p>\n  <table width=\"80%\" border=\"0\" style=\"font-family:Arial, Helvetica, sans-serif; font-size:10px;\">\n    <tr>\n      <td bgcolor=\"#F7F7F2\" style=\"border-bottom:1px solid #cccccc;\"><strong>Art.No.</strong></td>\n      <td bgcolor=\"#F7F7F2\" style=\"border-bottom:1px solid #cccccc;\"><strong>Pos.</strong></td>\n      <td bgcolor=\"#F7F7F2\" style=\"border-bottom:1px solid #cccccc;\"><strong>Art-Nr.</strong></td>\n      <td bgcolor=\"#F7F7F2\" style=\"border-bottom:1px solid #cccccc;\"><strong>Quantities</strong></td>\n      <td bgcolor=\"#F7F7F2\" style=\"border-bottom:1px solid #cccccc;\"><strong>Price</strong></td>\n      <td bgcolor=\"#F7F7F2\" style=\"border-bottom:1px solid #cccccc;\"><strong>Total</strong></td>\n    </tr>\n \n    {foreach item=details key=position from=$sOrderDetails}\n    <tr>\n      <td rowspan=\"2\" style=\"border-bottom:1px solid #cccccc;\">{if $details.image.src.1}<img src=\"{$details.image.src.1}\" alt=\"{$details.articlename}\" />{else} {/if}</td>\n      <td>{$position+1|fill:4} </td>\n      <td>{$details.ordernumber|fill:20}</td>\n      <td>{$details.quantity|fill:6}</td>\n      <td>{$details.price|padding:8}{$sCurrency}</td>\n      <td>{$details.amount|padding:8} {$sCurrency}</td>\n    </tr>\n    <tr>\n      <td colspan=\"5\" style=\"border-bottom:1px solid #cccccc;\">{$details.articlename|wordwrap:80|indent:4}</td>\n    </tr>\n    {/foreach}\n \n  </table>\n \n<p>\n  <br/>\n  <br/>\n    Shipping costs:: {$sShippingCosts}<br/>\n    Total net: {$sAmountNet}<br/>\n    {if !$sNet}\n    Total gross: {$sAmount}<br/>\n    {/if}\n  <br/>\n  <br/>\n    <strong>Selected payment type:</strong> {$additional.payment.description}<br/>\n    {$additional.payment.additionaldescription}\n    {if $additional.payment.name == \"debit\"}\n    Your bank connection:<br/>\n    Account number: {$sPaymentTable.account}<br/>\n    BIN:{$sPaymentTable.bankcode}<br/>\n    We will withdraw the money from your bank account within the next days.<br/>\n    {/if}\n  <br/>\n  <br/>\n    {if $additional.payment.name == \"prepayment\"}\n    Our bank connection:<br/>\n    {config name=bankAccount}\n    {/if} \n  <br/>\n  <br/>\n    <strong>Selected dispatch:</strong> {$sDispatch.name}<br/>{$sDispatch.description}\n</p>\n<p>\n  {if $sComment}\n    <strong>Your comment:</strong><br/>\n    {$sComment}<br/>\n  {/if} \n  <br/>\n  <br/>\n    <strong>Billing address:</strong><br/>\n    {$billingaddress.company}<br/>\n    {$billingaddress.firstname} {$billingaddress.lastname}<br/>\n    {$billingaddress.street} {$billingaddress.streetnumber}<br/>\n    {$billingaddress.zipcode} {$billingaddress.city}<br/>\n    {$billingaddress.phone}<br/>\n    {$additional.country.countryname}<br/>\n  <br/>\n  <br/>\n    <strong>Shipping address:</strong><br/>\n    {$shippingaddress.company}<br/>\n    {$shippingaddress.firstname} {$shippingaddress.lastname}<br/>\n    {$shippingaddress.street} {$shippingaddress.streetnumber}<br/>\n    {$shippingaddress.zipcode} {$shippingaddress.city}<br/>\n    {$additional.countryShipping.countryname}<br/>\n  <br/>\n    {if $billingaddress.ustid}\n    Your VAT-ID: {$billingaddress.ustid}<br/>\n    In case of a successful order and if you are based in one of the EU countries, you will receive your goods exempt from turnover tax. \n    {/if}\n  <br/>\n  <br/>\n\n    Your Team of {config name=shopName}<br/>\n</p>\n</div>\";}',2,'2'),(72,'config_mails','a:2:{s:7:\"subject\";s:33:\"{sName} recommends you {sArticle}\";s:7:\"content\";s:189:\"Hello,\n\n{sName} has found an interesting product for you on {sShop} that you should have a look at:\n\n{sArticle}\n{sLink}\n\n{sComment}\n\nBest regards and see you next time\n\nYour contact details\";}',3,'2'),(73,'config_mails','a:2:{s:7:\"subject\";s:46:\"Forgot password - Your access data for {sShop}\";s:7:\"content\";s:127:\"Hello,\n\nYour access data for {sShopURL} is as follows:\nUser: {sMail}\nPassword: {sPassword}\n\nBest regards\n\n{config name=address}\";}',4,'2'),(74,'config_mails','a:2:{s:7:\"subject\";s:53:\"Attention - no free serial numbers for {sArticleName}\";s:7:\"content\";s:269:\"Hello,\n\nThere is no additional free serial numbers available for the article {sArticleName}. Please provide new serial numbers immediately or deactivate the article. Please assign a serial number to the customer {sMail} manually.\n\nBest regards,\n\n{config name=shopName}\n\";}',5,'2'),(75,'config_mails','a:2:{s:7:\"subject\";s:12:\"Your voucher\";s:7:\"content\";s:268:\"Hello {customer},\n\n{user} has followed your recommendation and just ordered at {config name=shopName}.\nThis is why we give you a X € voucher, which you can redeem with your next order.\n			\nYour voucher code is as follows: XXX\n			\nBest regards,\n{config name=shopName}\";}',7,'2'),(76,'config_mails','a:2:{s:7:\"subject\";s:39:\"Your merchant account has been unlocked\";s:7:\"content\";s:186:\"Hello,\n\nYour merchant account {config name=shopName} has been unlocked.\n  \nFrom now on, we will charge you the net purchase price. \n  \nBest regards\n  \nYour team of {config name=shopName}\";}',12,'2'),(77,'config_mails','a:2:{s:7:\"subject\";s:41:\"Your trader account has not been accepted\";s:7:\"content\";s:307:\"Dear customer,\n\nThank you for your interest in our trade prices. Unfortunately, we do not have a trading license yet so that we cannot accept you as a trader. \n\nIn case of further questions please do not hesitate to contact us via telephone, fax or email. \n\nBest regards\n\nYour Team of {config name=shopName}\";}',13,'2'),(78,'config_mails','a:2:{s:7:\"subject\";s:69:\"Your aborted order process - Send us your feedback and get a voucher!\";s:7:\"content\";s:378:\"Dear customer,\n \nYou have recently aborted an order process on Demoshop.de - we are always working to make shopping with our shop as pleasant as possible. Therefore we would like to know why your order has failed.\n \nPlease tell us the reason why you have aborted your order. We will reward your additional effort by sending you a 5,00 €-voucher. \n \nThank you for your feedback\";}',19,'2'),(79,'config_mails','a:2:{s:7:\"subject\";s:50:\"Your aborted order process - Voucher code enclosed\";s:7:\"content\";s:351:\"Dear customer,\n \nYou have recently aborted an order process on Demoshop.de - today, we would like to give you a 5,00 Euro-voucher - and therefore make it easier for you to decide for an order with Demoshop.de.\n \nYour voucher is valid for two months and can be redeemed by entering the code \"{$sVouchercode}\".\n\nWe would be pleased to accept your order!\";}',20,'2'),(80,'config_mails','a:2:{s:7:\"subject\";s:40:\"Happy Birthday from {$sConfig.sSHOPNAME}\";s:7:\"content\";s:174:\"Hello {if $sUser.salutation eq \"mr\"}Mr{elseif $sUser.billing_salutation eq \"ms\"}Mrs{/if} {$sUser.firstname} {$sUser.lastname},\n\nBest regards\nYour team of {$sConfig.sSHOPNAME}\";}',39,'2'),(81,'config_mails','a:2:{s:7:\"subject\";s:83:\"Stock level of {$sData.count} article{if $sData.count>1}s{/if} under minimum stock \";s:7:\"content\";s:260:\"Hello,\nThe following articles have undershot the minimum stock:\nOrder number Name of article Stock/Minimum stock \n{foreach from=$sJob.articles item=sArticle key=key}\n{$sArticle.ordernumber} {$sArticle.name} {$sArticle.instock}/{$sArticle.stockmin} \n{/foreach}\n\";}',40,'2'),(82,'config_mails','a:2:{s:7:\"subject\";s:42:\"Thank you for your newsletter subscription\";s:7:\"content\";s:78:\"Hello,\n\nThank you for your newsletter subscription at {config name=shopName}\n\n\";}',41,'2'),(83,'config_mails','a:2:{s:7:\"subject\";s:43:\"Please confirm your newsletter subscription\";s:7:\"content\";s:208:\"Hello, \n\nThank you for signing up for our regularly published newsletter. \n\nPlease confirm your subscription by clicking the following link: {$sConfirmLink} \n\nBest regards\n\nYour Team of {config name=shopName}\";}',42,'2'),(84,'config_mails','a:2:{s:7:\"subject\";s:38:\"Please confirm your article evaluation\";s:7:\"content\";s:164:\"Hello, \n\nThank you for evaluating the article{$sArticle.articleName}. \n\nPlease confirm the evaluation by clicking the following link: {$sConfirmLink} \n\nBest regards\";}',43,'2'),(85,'config_mails','a:2:{s:7:\"subject\";s:31:\"Your article is available again\";s:7:\"content\";s:148:\"Hello, \n\nYour article with the order number {$sOrdernumber} is available again. \n\n{$sArticleLink} \n\nBest regards\nYour Team of {config name=shopName}\";}',44,'2'),(86,'config_mails','a:2:{s:7:\"subject\";s:39:\"Please confirm your e-mail notification\";s:7:\"content\";s:240:\"Hello, \n\nThank you for signing up for the automatical e-Mail notification for the article {$sArticleName}. \nPlease confirm the notification by clicking the following link:\n\n{$sConfirmLink} \n\nBest regards\n\nYour Team of {config name=shopName}\";}',45,'2'),(87,'config_mails','a:2:{s:7:\"subject\";s:16:\"Evaluate article\";s:7:\"content\";s:948:\"<p>Hello {if $sUser.salutation eq \"mr\"}Mr{elseif $sUser.billing_salutation eq \"ms\"}Mrs{/if} {$sUser.billing_firstname} {$sUser.billing_lastname},\n</p>\nYou have recently purchased articles from {config name=shopName}. We would be pleased if you could evaluate these items. Doing so, you can help us improve our services, and you have the opportunity to tell other customers your opinion. \nBy the way: You do not necessarily have to comment on the articles you have bought. You can select the ones you like best. We would welcome any feedback that you have. \nHere you can find the links to the evaluations of your purchased articles.\n<p>\n</p>\n<table>\n {foreach from=$sArticles item=sArticle key=key}\n{if !$sArticle.modus}\n <tr>\n  <td>{$sArticle.articleordernumber}</td>\n  <td>{$sArticle.name}</td>\n  <td>\n  <a href=\"{$sArticle.link}\">link</a>\n  </td>\n </tr>\n{/if}\n {/foreach}\n</table>\n\n<p>\nBest regards,<br />\nYour team of {config name=shopName}\n</p>\";}',46,'2'),(116,'config_payment','a:5:{i:4;a:2:{s:11:\"description\";s:7:\"Invoice\";s:21:\"additionalDescription\";s:141:\"Payment by invoice. Shopware provides automatic invoicing for all customers on orders after the first, in order to avoid defaults on payment.\";}i:2;a:2:{s:11:\"description\";s:5:\"Debit\";s:21:\"additionalDescription\";s:15:\"Additional text\";}i:3;a:2:{s:11:\"description\";s:16:\"Cash on delivery\";s:21:\"additionalDescription\";s:25:\"(including 2.00 Euro VAT)\";}i:5;a:2:{s:11:\"description\";s:15:\"Paid in advance\";s:21:\"additionalDescription\";s:57:\"The goods are delivered directly upon receipt of payment.\";}i:6;a:1:{s:21:\"additionalDescription\";s:17:\"SEPA direct debit\";}}',1,'2'),(117,'config_mails','a:3:{s:7:\"subject\";s:25:\"SEPA direct debit mandate\";s:7:\"content\";s:275:\"Hello {$paymentInstance.firstName} {$paymentInstance.lastName},Attached you will find the direct debit mandate form for your order {$paymentInstance.orderNumber}. Please return the completely filled out document by fax or email. Best regards. The {config name=shopName} team.\";s:11:\"contentHtml\";s:311:\"<div>Hello {$paymentInstance.firstName} {$paymentInstance.lastName},<br><br>Attached you will find the direct debit mandate form for your order {$paymentInstance.orderNumber}. Please return the completely filled out document by fax or email.<br/><br/>Best regards,<br/><br/>The {config name=shopName} team</div>\";}',51,'2');
/*!40000 ALTER TABLE `s_core_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_units`
--

DROP TABLE IF EXISTS `s_core_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_units`
--

LOCK TABLES `s_core_units` WRITE;
/*!40000 ALTER TABLE `s_core_units` DISABLE KEYS */;
INSERT INTO `s_core_units` VALUES (1,'l','Liter'),(2,'g','Gramm'),(5,'lfm','lfm'),(6,'kg','Kilogramm'),(8,'Paket(e)','Paket(e)'),(9,'Stck.','Stück');
/*!40000 ALTER TABLE `s_core_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_widget_views`
--

DROP TABLE IF EXISTS `s_core_widget_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_widget_views` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` int(11) unsigned NOT NULL,
  `auth_id` int(11) unsigned NOT NULL,
  `column` int(11) unsigned NOT NULL,
  `position` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `widget_id` (`widget_id`,`auth_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_widget_views`
--

LOCK TABLES `s_core_widget_views` WRITE;
/*!40000 ALTER TABLE `s_core_widget_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_core_widget_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_core_widgets`
--

DROP TABLE IF EXISTS `s_core_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_core_widgets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_core_widgets`
--

LOCK TABLES `s_core_widgets` WRITE;
/*!40000 ALTER TABLE `s_core_widgets` DISABLE KEYS */;
INSERT INTO `s_core_widgets` VALUES (1,'swag-sales-widget','Umsatz Heute und Gestern',NULL),(2,'swag-upload-widget','Drag and Drop Upload',NULL),(3,'swag-visitors-customers-widget','Besucher online',NULL),(4,'swag-last-orders-widget','Letzte Bestellungen',NULL),(5,'swag-notice-widget','Notizzettel',NULL),(6,'swag-merchant-widget','Händlerfreischaltung',NULL);
/*!40000 ALTER TABLE `s_core_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_crontab`
--

DROP TABLE IF EXISTS `s_crontab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_crontab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `elementID` int(11) DEFAULT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `next` datetime DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `interval` int(11) NOT NULL,
  `active` int(1) NOT NULL,
  `end` datetime DEFAULT NULL,
  `inform_template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `inform_mail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pluginID` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `action` (`action`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_crontab`
--

LOCK TABLES `s_crontab` WRITE;
/*!40000 ALTER TABLE `s_crontab` DISABLE KEYS */;
INSERT INTO `s_crontab` VALUES (1,'Geburtstagsgruß','birthday',NULL,'','2010-10-16 23:42:58','2010-10-16 12:26:44',86400,1,'2010-10-16 12:26:44','','',NULL),(2,'Aufräumen','clearing',NULL,'','2010-10-16 12:34:38','2010-10-16 12:34:32',86400,1,'2010-10-16 12:34:32','','',NULL),(3,'Lagerbestand Warnung','article_stock',NULL,'','2010-10-16 12:34:33','2010-10-16 12:34:31',86400,1,'2010-10-16 12:34:32','sARTICLESTOCK','{$sConfig.sMAIL}',NULL),(5,'Suche','search',NULL,'','2010-10-16 12:34:38','2010-10-16 12:34:32',86400,1,'2010-10-16 12:34:32','','',NULL),(6,'eMail-Benachrichtigung','notification',NULL,'','2010-10-17 00:20:28','2010-10-16 12:26:44',86400,1,'2010-10-16 12:26:44','','',NULL),(7,'Artikelbewertung per eMail','article_comment',NULL,'','2010-10-16 12:35:18','2010-10-16 12:34:32',86400,1,'2010-10-16 12:34:32','','',NULL),(8,'Topseller Refresh','RefreshTopSeller',NULL,'','2013-05-21 14:29:44',NULL,86400,1,'2013-05-21 14:29:44','','',50),(9,'Similar shown article refresh','RefreshSimilarShown',NULL,'','2013-05-21 14:29:44',NULL,86400,1,'2013-05-21 14:29:44','','',50),(10,'Refresh seo index','RefreshSeoIndex',NULL,'','2013-05-21 13:28:04',NULL,86400,1,'2013-05-21 13:28:04','','',51),(11,'Refresh search index','RefreshSearchIndex',NULL,'','2013-05-21 13:28:04',NULL,86400,1,'2013-05-21 13:28:04','','',51),(12,'HTTP Cache löschen','ClearHttpCache',NULL,'','2014-09-25 03:00:00',NULL,86400,1,'2014-09-25 03:00:00','','',52);
/*!40000 ALTER TABLE `s_crontab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emarketing_banners`
--

DROP TABLE IF EXISTS `s_emarketing_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emarketing_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `valid_from` datetime DEFAULT '0000-00-00 00:00:00',
  `valid_to` datetime DEFAULT '0000-00-00 00:00:00',
  `img` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link_target` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categoryID` int(11) NOT NULL DEFAULT '0',
  `extension` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `liveshoppingID` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emarketing_banners`
--

LOCK TABLES `s_emarketing_banners` WRITE;
/*!40000 ALTER TABLE `s_emarketing_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emarketing_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emarketing_banners_attributes`
--

DROP TABLE IF EXISTS `s_emarketing_banners_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emarketing_banners_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bannerID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bannerID` (`bannerID`),
  CONSTRAINT `s_emarketing_banners_attributes_ibfk_1` FOREIGN KEY (`bannerID`) REFERENCES `s_emarketing_banners` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emarketing_banners_attributes`
--

LOCK TABLES `s_emarketing_banners_attributes` WRITE;
/*!40000 ALTER TABLE `s_emarketing_banners_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emarketing_banners_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emarketing_banners_statistics`
--

DROP TABLE IF EXISTS `s_emarketing_banners_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emarketing_banners_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bannerID` int(11) NOT NULL,
  `display_date` date NOT NULL,
  `clicks` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `display_date` (`bannerID`,`display_date`),
  KEY `bannerID` (`bannerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emarketing_banners_statistics`
--

LOCK TABLES `s_emarketing_banners_statistics` WRITE;
/*!40000 ALTER TABLE `s_emarketing_banners_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emarketing_banners_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emarketing_lastarticles`
--

DROP TABLE IF EXISTS `s_emarketing_lastarticles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emarketing_lastarticles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `articleID` int(11) unsigned NOT NULL,
  `sessionID` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userID` int(11) unsigned NOT NULL,
  `shopID` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `articleID` (`articleID`,`sessionID`,`shopID`),
  KEY `userID` (`userID`),
  KEY `time` (`time`),
  KEY `sessionID` (`sessionID`),
  KEY `get_last_articles` (`sessionID`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emarketing_lastarticles`
--

LOCK TABLES `s_emarketing_lastarticles` WRITE;
/*!40000 ALTER TABLE `s_emarketing_lastarticles` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emarketing_lastarticles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emarketing_partner`
--

DROP TABLE IF EXISTS `s_emarketing_partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emarketing_partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datum` date NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `streetnumber` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `web` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profil` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `fix` double NOT NULL DEFAULT '0',
  `percent` double NOT NULL DEFAULT '0',
  `cookielifetime` int(11) NOT NULL DEFAULT '0',
  `active` int(1) NOT NULL DEFAULT '0',
  `userID` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emarketing_partner`
--

LOCK TABLES `s_emarketing_partner` WRITE;
/*!40000 ALTER TABLE `s_emarketing_partner` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emarketing_partner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emarketing_promotion_articles`
--

DROP TABLE IF EXISTS `s_emarketing_promotion_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emarketing_promotion_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentID` int(11) NOT NULL DEFAULT '0',
  `articleordernumber` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emarketing_promotion_articles`
--

LOCK TABLES `s_emarketing_promotion_articles` WRITE;
/*!40000 ALTER TABLE `s_emarketing_promotion_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emarketing_promotion_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emarketing_promotion_banner`
--

DROP TABLE IF EXISTS `s_emarketing_promotion_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emarketing_promotion_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentID` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkTarget` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emarketing_promotion_banner`
--

LOCK TABLES `s_emarketing_promotion_banner` WRITE;
/*!40000 ALTER TABLE `s_emarketing_promotion_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emarketing_promotion_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emarketing_promotion_containers`
--

DROP TABLE IF EXISTS `s_emarketing_promotion_containers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emarketing_promotion_containers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotionID` int(11) NOT NULL DEFAULT '0',
  `container` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emarketing_promotion_containers`
--

LOCK TABLES `s_emarketing_promotion_containers` WRITE;
/*!40000 ALTER TABLE `s_emarketing_promotion_containers` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emarketing_promotion_containers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emarketing_promotion_html`
--

DROP TABLE IF EXISTS `s_emarketing_promotion_html`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emarketing_promotion_html` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentID` int(11) NOT NULL DEFAULT '0',
  `headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `html` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emarketing_promotion_html`
--

LOCK TABLES `s_emarketing_promotion_html` WRITE;
/*!40000 ALTER TABLE `s_emarketing_promotion_html` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emarketing_promotion_html` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emarketing_promotion_links`
--

DROP TABLE IF EXISTS `s_emarketing_promotion_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emarketing_promotion_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentID` int(11) NOT NULL DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emarketing_promotion_links`
--

LOCK TABLES `s_emarketing_promotion_links` WRITE;
/*!40000 ALTER TABLE `s_emarketing_promotion_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emarketing_promotion_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emarketing_promotion_main`
--

DROP TABLE IF EXISTS `s_emarketing_promotion_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emarketing_promotion_main` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentID` int(11) NOT NULL,
  `positionGroup` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `datum` date NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linktarget` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(1) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentID` (`parentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emarketing_promotion_main`
--

LOCK TABLES `s_emarketing_promotion_main` WRITE;
/*!40000 ALTER TABLE `s_emarketing_promotion_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emarketing_promotion_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emarketing_promotion_positions`
--

DROP TABLE IF EXISTS `s_emarketing_promotion_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emarketing_promotion_positions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotionID` int(11) NOT NULL DEFAULT '0',
  `containerID` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emarketing_promotion_positions`
--

LOCK TABLES `s_emarketing_promotion_positions` WRITE;
/*!40000 ALTER TABLE `s_emarketing_promotion_positions` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emarketing_promotion_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emarketing_promotions`
--

DROP TABLE IF EXISTS `s_emarketing_promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emarketing_promotions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT '0',
  `mode` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ordernumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link_target` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `valid_from` date NOT NULL DEFAULT '0000-00-00',
  `valid_to` date NOT NULL DEFAULT '0000-00-00',
  `position` int(11) NOT NULL DEFAULT '0',
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `liveshoppingID` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emarketing_promotions`
--

LOCK TABLES `s_emarketing_promotions` WRITE;
/*!40000 ALTER TABLE `s_emarketing_promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emarketing_promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emarketing_referer`
--

DROP TABLE IF EXISTS `s_emarketing_referer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emarketing_referer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `referer` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emarketing_referer`
--

LOCK TABLES `s_emarketing_referer` WRITE;
/*!40000 ALTER TABLE `s_emarketing_referer` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emarketing_referer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emarketing_tellafriend`
--

DROP TABLE IF EXISTS `s_emarketing_tellafriend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emarketing_tellafriend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datum` date NOT NULL DEFAULT '0000-00-00',
  `recipient` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sender` int(11) NOT NULL DEFAULT '0',
  `confirmed` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emarketing_tellafriend`
--

LOCK TABLES `s_emarketing_tellafriend` WRITE;
/*!40000 ALTER TABLE `s_emarketing_tellafriend` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emarketing_tellafriend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emarketing_voucher_codes`
--

DROP TABLE IF EXISTS `s_emarketing_voucher_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emarketing_voucher_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucherID` int(11) NOT NULL DEFAULT '0',
  `userID` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cashed` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emarketing_voucher_codes`
--

LOCK TABLES `s_emarketing_voucher_codes` WRITE;
/*!40000 ALTER TABLE `s_emarketing_voucher_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emarketing_voucher_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emarketing_vouchers`
--

DROP TABLE IF EXISTS `s_emarketing_vouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emarketing_vouchers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vouchercode` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `numberofunits` int(11) NOT NULL DEFAULT '0',
  `value` double NOT NULL DEFAULT '0',
  `minimumcharge` double NOT NULL DEFAULT '0',
  `shippingfree` int(1) NOT NULL DEFAULT '0',
  `bindtosupplier` int(11) DEFAULT NULL,
  `valid_from` date DEFAULT NULL,
  `valid_to` date DEFAULT NULL,
  `ordercode` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `modus` int(1) NOT NULL DEFAULT '0',
  `percental` int(1) NOT NULL,
  `numorder` int(11) NOT NULL,
  `customergroup` int(11) DEFAULT NULL,
  `restrictarticles` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `strict` int(1) NOT NULL,
  `subshopID` int(1) DEFAULT NULL,
  `taxconfig` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emarketing_vouchers`
--

LOCK TABLES `s_emarketing_vouchers` WRITE;
/*!40000 ALTER TABLE `s_emarketing_vouchers` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emarketing_vouchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emarketing_vouchers_attributes`
--

DROP TABLE IF EXISTS `s_emarketing_vouchers_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emarketing_vouchers_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voucherID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `voucherID` (`voucherID`),
  CONSTRAINT `s_emarketing_vouchers_attributes_ibfk_1` FOREIGN KEY (`voucherID`) REFERENCES `s_emarketing_vouchers` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emarketing_vouchers_attributes`
--

LOCK TABLES `s_emarketing_vouchers_attributes` WRITE;
/*!40000 ALTER TABLE `s_emarketing_vouchers_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emarketing_vouchers_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emarketing_vouchers_cashed`
--

DROP TABLE IF EXISTS `s_emarketing_vouchers_cashed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emarketing_vouchers_cashed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL DEFAULT '0',
  `voucherID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emarketing_vouchers_cashed`
--

LOCK TABLES `s_emarketing_vouchers_cashed` WRITE;
/*!40000 ALTER TABLE `s_emarketing_vouchers_cashed` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emarketing_vouchers_cashed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emotion`
--

DROP TABLE IF EXISTS `s_emotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(1) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cols` int(11) DEFAULT NULL,
  `cell_height` int(11) NOT NULL,
  `article_height` int(11) NOT NULL,
  `container_width` int(11) NOT NULL,
  `rows` int(11) NOT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_to` datetime DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `show_listing` int(1) NOT NULL,
  `is_landingpage` int(1) NOT NULL,
  `landingpage_block` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `landingpage_teaser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_description` text COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `grid_id` int(11) NOT NULL,
  `template_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emotion`
--

LOCK TABLES `s_emotion` WRITE;
/*!40000 ALTER TABLE `s_emotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emotion_attributes`
--

DROP TABLE IF EXISTS `s_emotion_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emotion_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emotionID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emotionID` (`emotionID`),
  CONSTRAINT `s_emotion_attributes_ibfk_1` FOREIGN KEY (`emotionID`) REFERENCES `s_emotion` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emotion_attributes`
--

LOCK TABLES `s_emotion_attributes` WRITE;
/*!40000 ALTER TABLE `s_emotion_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emotion_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emotion_categories`
--

DROP TABLE IF EXISTS `s_emotion_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emotion_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emotion_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emotion_categories`
--

LOCK TABLES `s_emotion_categories` WRITE;
/*!40000 ALTER TABLE `s_emotion_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emotion_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emotion_element`
--

DROP TABLE IF EXISTS `s_emotion_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emotion_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emotionID` int(11) NOT NULL,
  `componentID` int(11) NOT NULL,
  `start_row` int(11) NOT NULL,
  `start_col` int(11) NOT NULL,
  `end_row` int(11) NOT NULL,
  `end_col` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `get_emotion_elements` (`emotionID`,`start_row`,`start_col`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emotion_element`
--

LOCK TABLES `s_emotion_element` WRITE;
/*!40000 ALTER TABLE `s_emotion_element` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emotion_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emotion_element_value`
--

DROP TABLE IF EXISTS `s_emotion_element_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emotion_element_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emotionID` int(11) NOT NULL,
  `elementID` int(11) NOT NULL,
  `componentID` int(11) NOT NULL,
  `fieldID` int(11) NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `emotionID` (`elementID`),
  KEY `fieldID` (`fieldID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emotion_element_value`
--

LOCK TABLES `s_emotion_element_value` WRITE;
/*!40000 ALTER TABLE `s_emotion_element_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_emotion_element_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emotion_grid`
--

DROP TABLE IF EXISTS `s_emotion_grid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emotion_grid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cols` int(11) NOT NULL,
  `rows` int(11) NOT NULL,
  `cell_height` int(11) NOT NULL,
  `article_height` int(11) NOT NULL,
  `gutter` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emotion_grid`
--

LOCK TABLES `s_emotion_grid` WRITE;
/*!40000 ALTER TABLE `s_emotion_grid` DISABLE KEYS */;
INSERT INTO `s_emotion_grid` VALUES (1,'3-Spaltig',3,20,185,2,10),(2,'4-Spaltig',4,20,185,2,10);
/*!40000 ALTER TABLE `s_emotion_grid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_emotion_templates`
--

DROP TABLE IF EXISTS `s_emotion_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_emotion_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_emotion_templates`
--

LOCK TABLES `s_emotion_templates` WRITE;
/*!40000 ALTER TABLE `s_emotion_templates` DISABLE KEYS */;
INSERT INTO `s_emotion_templates` VALUES (1,'Standard','index.tpl');
/*!40000 ALTER TABLE `s_emotion_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_export`
--

DROP TABLE IF EXISTS `s_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_export` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_export` datetime NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `show` int(1) NOT NULL DEFAULT '1',
  `count_articles` int(11) NOT NULL,
  `expiry` datetime NOT NULL,
  `interval` int(11) NOT NULL,
  `formatID` int(11) NOT NULL DEFAULT '1',
  `last_change` datetime NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `encodingID` int(11) NOT NULL DEFAULT '1',
  `categoryID` int(11) DEFAULT NULL,
  `currencyID` int(11) DEFAULT NULL,
  `customergroupID` int(11) DEFAULT NULL,
  `partnerID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languageID` int(11) DEFAULT NULL,
  `active_filter` int(1) NOT NULL DEFAULT '1',
  `image_filter` int(1) NOT NULL DEFAULT '0',
  `stockmin_filter` int(1) NOT NULL DEFAULT '0',
  `instock_filter` int(11) NOT NULL,
  `price_filter` double NOT NULL,
  `own_filter` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `header` longtext COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `footer` longtext COLLATE utf8_unicode_ci NOT NULL,
  `count_filter` int(11) NOT NULL,
  `multishopID` int(11) DEFAULT NULL,
  `variant_export` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_refreshed` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_export`
--

LOCK TABLES `s_export` WRITE;
/*!40000 ALTER TABLE `s_export` DISABLE KEYS */;
INSERT INTO `s_export` VALUES (1,'Google Produktsuche','2000-01-01 00:00:00',0,'4ebfa063359a73c356913df45b3fbe7f',1,0,'2000-01-01 00:00:00',0,2,'0000-00-00 00:00:00','export.txt',1,NULL,1,1,'',NULL,0,0,0,0,0,'','{strip}\nid{#S#}\ntitel{#S#}\nbeschreibung{#S#}\nlink{#S#}\nbild_url{#S#}\nean{#S#}\ngewicht{#S#}\nmarke{#S#}\nmpn{#S#}\nzustand{#S#}\nproduktart{#S#}\npreis{#S#}\nversand{#S#}\nstandort{#S#}\nwährung\n{/strip}{#L#}','{strip}\n{$sArticle.ordernumber|escape}{#S#}\n{$sArticle.name|strip_tags|strip|truncate:80:\"...\":true|escape|htmlentities}{#S#}\n{$sArticle.description_long|strip_tags|html_entity_decode|trim|regex_replace:\"#[^\\wöäüÖÄÜß\\.%&-+ ]#i\":\"\"|strip|truncate:500:\"...\":true|htmlentities|escape}{#S#}\n{$sArticle.articleID|link:$sArticle.name|escape}{#S#}\n{$sArticle.image|image:4}{#S#}\n{$sArticle.ean|escape}{#S#}\n{if $sArticle.weight}{$sArticle.weight|escape:\"number\"}{\" kg\"}{/if}{#S#}\n{$sArticle.supplier|escape}{#S#}\n{$sArticle.suppliernumber|escape}{#S#}\nNeu{#S#}\n{$sArticle.articleID|category:\" > \"|escape}{#S#}\n{$sArticle.price|escape:\"number\"}{#S#}\nDE::DHL:{$sArticle|@shippingcost:\"prepayment\":\"de\"}{#S#}\n{#S#}\n{$sCurrency.currency}\n{/strip}{#L#}','',0,1,1,NULL),(2,'Kelkoo','2000-01-01 00:00:00',0,'f2d27fbba2dabc03789f0ac25f82d93f',1,0,'2000-01-01 00:00:00',0,1,'0000-00-00 00:00:00','kelkoo.csv',1,NULL,1,1,'',NULL,0,0,0,0,0,'','{strip}\nurl{#S#}\ntitle{#S#}\ndescription{#S#}\nprice{#S#}\nofferid{#S#}\nimage{#S#}\navailability{#S#}\ndeliverycost\n{/strip}{#L#}','{strip}\n{$sArticle.articleID|link:$sArticle.name|escape}{#S#}\n{$sArticle.name|escape|truncate:70}{#S#}\n{$sArticle.description_long|strip_tags|strip|trim|truncate:150:\"...\":true|html_entity_decode|escape}{#S#}\n{$sArticle.price|escape:\"number\"}{#S#}\n{$sArticle.ordernumber}{#S#}\n{$sArticle.image|image:5|escape}{#S#}\n{if $sArticle.instock}001{else}002{/if}{#S#}\n{$sArticle|@shippingcost:\"prepayment\":\"de\":\"Deutsche Post Standard\"|escape:\"number\"}\n{/strip}{#L#}','',0,1,1,NULL),(3,'billiger.de','2000-01-01 00:00:00',0,'9ca7fd14bc772898bf01d9904d72c1ea',1,0,'2000-01-01 00:00:00',0,1,'0000-00-00 00:00:00','billiger.csv',1,NULL,1,1,'',NULL,0,0,0,0,0,'','{strip}\naid{#S#}\nbrand{#S#}\nmpnr{#S#}\nean{#S#}\nname{#S#}\ndesc{#S#}\nshop_cat{#S#}\nprice{#S#}\nppu{#S#}\nlink{#S#}\nimage{#S#}\ndlv_time{#S#}\ndlv_cost{#S#}\npzn\n{/strip}{#L#}','{strip}\n{$sArticle.ordernumber}{#S#}\n{$sArticle.supplier|escape}{#S#}\n{$sArticle.suppliernumber|escape}{#S#}\n{$sArticle.ean|escape}{#S#}\n{$sArticle.name|strip_tags|strip|truncate:80:\"...\":true|escape}{#S#}\n{$sArticle.description_long|strip_tags|strip|trim|truncate:900:\"...\":true|html_entity_decode|escape}{#S#}\n{$sArticle.articleID|category:\">\"|escape}{#S#}\n{$sArticle.price|escape:number}{#S#}\n{if $sArticle.purchaseunit}{$sArticle.price/$sArticle.purchaseunit*$sArticle.referenceunit|escape:number} {\"\\x80\"} / {$sArticle.referenceunit} {$sArticle.unit}{/if}{#S#}\n{$sArticle.articleID|link:$sArticle.name|escape}{#S#}\n{$sArticle.image|image:5}{#S#}\n{if $sArticle.instock}2 Tage{elseif $sArticle.shippingtime}{$sArticle.shippingtime} Tage{else}10 Tage{/if}{#S#}\n{$sArticle|@shippingcost:\"prepayment\":\"de\"|escape:number}{#S#}\n\n{/strip}{#L#}','',0,1,1,NULL),(4,'Idealo','2000-01-01 00:00:00',0,'2648057f0020fbeb7e69c238036b25e8',1,0,'2000-01-01 00:00:00',0,1,'0000-00-00 00:00:00','idealo.csv',1,NULL,1,1,'',NULL,0,0,0,0,0,'','{strip}\nKategorie{#S#}\nHersteller{#S#}\nProduktbezeichnung{#S#}\nPreis{#S#}\nHersteller-Artikelnummer{#S#}\nEAN{#S#}\nPZN{#S#}\nISBN{#S#}\nVersandkosten Nachnahme{#S#}\nVersandkosten Vorkasse{#S#}\nVersandkosten Bankeinzug{#S#}\nDeeplink{#S#}\nLieferzeit{#S#}\nArtikelnummer{#S#}\nLink Produktbild{#S#}\nProdukt Kurztext\n{/strip}{#L#}','{strip}\n{$sArticle.articleID|category:\">\"|escape|replace:\"|\":\"\"}{#S#}\n{$sArticle.supplier|replace:\"|\":\"\"}{#S#}\n{$sArticle.name|strip_tags|strip|trim|html_entity_decode|escape}{#S#}\n{$sArticle.price|escape:\"number\"}{#S#}\n{#S#}\n{#S#}\n{#S#}\n{#S#}\n{$sArticle|@shippingcost:\"cash\":\"de\":\"Deutsche Post Standard\"|escape:\"number\"}{#S#}\n{$sArticle|@shippingcost:\"prepayment\":\"de\":\"Deutsche Post Standard\"|escape:\"number\"}{#S#}\n{$sArticle|@shippingcost:\"debit\":\"de\":\"Deutsche Post Standard\"|escape:\"number\"}{#S#}\n{$sArticle.articleID|link:$sArticle.name|replace:\"|\":\"\"}{#S#}\n{if $sArticle.instock}2 Tage{elseif $sArticle.shippingtime}{$sArticle.shippingtime|escape} Tage{else}10 Tage{/if}{#S#}\n{$sArticle.ordernumber|escape}{#S#}\n{$sArticle.image|image:5}{#S#}\n{$sArticle.description_long|strip_tags|strip|trim|truncate:300:\"...\":true|escape}\n{/strip}{#L#}','',0,1,1,NULL),(5,'Yatego','2000-01-01 00:00:00',0,'75838aee39eab65375b5241544035f42',1,0,'2000-01-01 00:00:00',0,1,'0000-00-00 00:00:00','yatego.csv',1,NULL,1,1,'',NULL,0,0,0,0,0,'','{strip}foreign_id{#S#}\narticle_nr{#S#}\ntitle{#S#}\ntax{#S#}\ncategories{#S#}\nunits{#S#}\nshort_desc{#S#}\nlong_desc{#S#}\npicture{#S#}\nurl{#S#}\nprice{#S#}\nprice_uvp{#S#}\ndelivery_date{#S#}\ntop_offer{#S#}\nstock{#S#}\npackage_size{#S#}\nquantity_unit{#S#}\nmpn{#S#}\nmanufacturer{#S#}\nstatus{#S#}\nvariants\n{/strip}{#L#}','{strip}\n{$sArticle.articleID|escape}{#S#}\n{$sArticle.ordernumber|escape}{#S#}\n{$sArticle.name|strip_tags|strip|truncate:80:\"...\":true|replace:\"|\":\"\"} {#S#}\n{$sArticle.tax}{#S#}\n{$sArticle.articleID|category:\">\"|escape},{$sArticle.supplier}{#S#}\n{$sArticle.weight}{#S#}\n{$sArticle.description|strip_tags|strip|trim|truncate:900:\"...\":true|html_entity_decode|replace:\"|\":\"\"|escape}{#S#}\n\"{$sArticle.description_long|trim|html_entity_decode|replace:\"|\":\"|\"|replace:\'\"\':\'\"\"\'}<p>{$sArticle.attr1|regex_replace:\"/^(\\d)$/\":\"\"|regex_replace:\"/^0000-00-00$/\":\"\"|strip}<p>{$sArticle.attr2|regex_replace:\"/^(\\d)$/\":\"\"|regex_replace:\"/^0000-00-00$/\":\"\"|strip}<p>{$sArticle.attr3|regex_replace:\"/^(\\d)$/\":\"\"|regex_replace:\"/^0000-00-00$/\":\"\"|strip}<p>{$sArticle.attr4|regex_replace:\"/^(\\d)$/\":\"\"|regex_replace:\"/^0000-00-00$/\":\"\"|strip}<p>{$sArticle.attr5|regex_replace:\"/^(\\d)$/\":\"\"|regex_replace:\"/^0000-00-00$/\":\"\"|strip}<p>{$sArticle.attr6|regex_replace:\"/^(\\d)$/\":\"\"|regex_replace:\"/^0000-00-00$/\":\"\"|strip}<p>{$sArticle.attr7|regex_replace:\"/^(\\d)$/\":\"\"|regex_replace:\"/^0000-00-00$/\":\"\"|strip}<p>{$sArticle.attr8|regex_replace:\"/^(\\d)$/\":\"\"|regex_replace:\"/^0000-00-00$/\":\"\"|strip}<p>{$sArticle.attr9|regex_replace:\"/^(\\d)$/\":\"\"|regex_replace:\"/^0000-00-00$/\":\"\"|strip}<p>{$sArticle.attr10|regex_replace:\"/^(\\d)$/\":\"\"|regex_replace:\"/^0000-00-00$/\":\"\"|strip}<p>{$sArticle.attr11|regex_replace:\"/^(\\d)$/\":\"\"|regex_replace:\"/^0000-00-00$/\":\"\"|strip}<p>{$sArticle.attr12|regex_replace:\"/^(\\d)$/\":\"\"|regex_replace:\"/^0000-00-00$/\":\"\"|strip}<p>{$sArticle.attr13|regex_replace:\"/^(\\d)$/\":\"\"|regex_replace:\"/^0000-00-00$/\":\"\"|strip}<p>{$sArticle.attr14|regex_replace:\"/^(\\d)$/\":\"\"|regex_replace:\"/^0000-00-00$/\":\"\"|strip}<p>{$sArticle.attr15|regex_replace:\"/^(\\d)$/\":\"\"|regex_replace:\"/^0000-00-00$/\":\"\"|strip}<p>{$sArticle.attr16|regex_replace:\"/^(\\d)$/\":\"\"|regex_replace:\"/^0000-00-00$/\":\"\"|strip}<p>{$sArticle.attr17|regex_replace:\"/^(\\d)$/\":\"\"|regex_replace:\"/^0000-00-00$/\":\"\"|strip}<p>{$sArticle.attr18|regex_replace:\"/^(\\d)$/\":\"\"|regex_replace:\"/^0000-00-00$/\":\"\"|strip}<p>{$sArticle.attr19|regex_replace:\"/^(\\d)$/\":\"\"|regex_replace:\"/^0000-00-00$/\":\"\"|strip}<p>{$sArticle.attr20|regex_replace:\"/^(\\d)$/\":\"\"|regex_replace:\"/^0000-00-00$/\":\"\"|strip}\"{#S#}\n{$sArticle.image|image:5}{#S#}\n{$sArticle.articleID|link:$sArticle.name|replace:\"|\":\"\"}{#S#}\n{if $sArticle.configurator}0{else}{$sArticle.price|escape:\"number\"|escape}{/if}{#S#}\n{$sArticle.pseudoprice|escape}{#S#}\nLieferzeit in Tagen: {$sArticle.shippingtime|replace:\"0\":\"sofort\"}{#S#}\n{$sArticle.topseller}{#S#}\n{if $sArticle.configurator}\"-1\"{else}{$sArticle.instock}{/if}{#S#}\n{$sArticle.purchaseunit}{#S#}\n{$sArticle.unit_description}{#S#}\n{$sArticle.suppliernumber}{#S#}\n{$sArticle.supplier}{#S#}\n{$sArticle.active}{#S#}\n{if $sArticle.configurator}{$sArticle.articleID|escape}{else}{/if}\n{/strip}{#L#}','',0,1,1,NULL),(6,'schottenland.de','2000-01-01 00:00:00',0,'ad16704bf9e58f1f66f99cca7864e63d',1,0,'2000-01-01 00:00:00',0,1,'0000-00-00 00:00:00','schottenland.csv',1,NULL,1,1,'',NULL,0,0,0,0,0,'','{strip}\nHersteller|\nProduktbezeichnung|\nProduktbeschreibung|\nPreis|\nVerfügbarkeit|\nEAN|\nHersteller AN|\nDeeplink|\nArtikelnummer|\nDAN_Ingram|\nVersandkosten Nachnahme|\nVersandkosten Vorkasse|\nVersandkosten Kreditkarte|\nVersandkosten Bankeinzug\n{/strip}{#L#}','{strip}\n{$sArticle.supplier|replace:\"|\":\"\"}|\n{$sArticle.name|strip_tags|strip|truncate:80:\"...\":true|replace:\"|\":\"\"}|\n{$sArticle.description_long|strip_tags|strip|trim|truncate:900:\"...\":true|html_entity_decode|replace:\"|\":\"\"}|\n{$sArticle.price|escape:\"number\"}|\n{if $sArticle.instock}2 Tage{elseif $sArticle.shippingtime}{$sArticle.shippingtime} Tage{else}10 Tage{/if}|\n{$sArticle.ean|replace:\"|\":\"\"}|\n{$sArticle.suppliernumber|replace:\"|\":\"\"}|\n{$sArticle.articleID|link:$sArticle.name|replace:\"|\":\"\"}|\n{$sArticle.ordernumber|replace:\"|\":\"\"}|\n|\n{$sArticle|@shippingcost:\"cash\":\"de\":\"Deutsche Post Standard\"|escape:\"number\"}|\n{$sArticle|@shippingcost:\"prepayment\":\"de\":\"Deutsche Post Standard\"|escape:\"number\"}|\n{$sArticle|@shippingcost:\"credituos\":\"de\":\"Deutsche Post Standard\"|escape:\"number\"}|\n{$sArticle|@shippingcost:\"debit\":\"de\":\"Deutsche Post Standard\"|escape:\"number\"}|\n{/strip}{#L#}','',0,1,1,NULL),(7,'guenstiger.de','2000-01-01 00:00:00',0,'5428e68f168eae36c3882b4cf29730bb',1,0,'2000-01-01 00:00:00',0,1,'0000-00-00 00:00:00','guenstiger.csv',1,NULL,1,1,'',NULL,0,0,0,0,0,'','{strip}\nBestellnummer|\nHersteller|\nBezeichnung|\nPreis|\nLieferzeit|\nProduktLink|\nFotoLink|\nBeschreibung|\nVersandNachnahme|\nVersandKreditkarte|\nVersandLastschrift|\nVersandBankeinzug|\nVersandRechnung|\nVersandVorkasse|\nEANCode|\nGewicht\n{/strip}{#L#}','{strip}\n{$sArticle.ordernumber|replace:\"|\":\"\"}|\n{$sArticle.supplier|replace:\"|\":\"\"}|\n{$sArticle.name|strip_tags|strip|truncate:80:\"...\":true|replace:\"|\":\"\"}|\n{$sArticle.price|escape:\"number\"}|\n{if $sArticle.instock}2 Tage{elseif $sArticle.shippingtime}{$sArticle.shippingtime} Tage{else}10 Tage{/if}|\n{$sArticle.articleID|link:$sArticle.name|replace:\"|\":\"\"}|\n{$sArticle.image|image:2}|\n{$sArticle.description_long|strip_tags|strip|trim|truncate:900:\"...\":true|html_entity_decode|replace:\"|\":\"\"}|\n{$sArticle|@shippingcost:\"cash\":\"de\":\"Deutsche Post Standard\"|escape:\"number\"}|\n|\n{$sArticle|@shippingcost:\"debit\":\"de\":\"Deutsche Post Standard\"|escape:\"number\"}|\n|\n{$sArticle|@shippingcost:\"invoice\":\"de\":\"Deutsche Post Standard\"|escape:\"number\"}|\n{$sArticle|@shippingcost:\"prepayment\":\"de\":\"Deutsche Post Standard\"|escape:\"number\"}|\n{$sArticle.ean|replace:\"|\":\"\"}|\n{$sArticle.weight|replace:\"|\":\"\"}\n{/strip}{#L#}','',0,1,1,NULL),(8,'geizhals.at','2000-01-01 00:00:00',0,'0102715b70fa7d60d61c15c8e025824a',1,0,'2000-01-01 00:00:00',0,1,'0000-00-00 00:00:00','geizhals.csv',1,NULL,1,1,'',NULL,0,0,0,0,0,'','{strip}\nID{#S#}\nHersteller{#S#}\nArtikelbezeichnung{#S#}\nKategorie{#S#}\nBeschreibungsfeld{#S#}\nBild{#S#}\nUrl{#S#}\nLagerstandl{#S#}\nVersandkosten{#S#}\nVersandkostenNachname{#S#}\nPreis{#S#}\nEAN{#S#}\n{/strip}{#L#}','{strip}\n{$sArticle.ordernumber|escape}{#S#}\n{$sArticle.supplier|escape}{#S#}\n{$sArticle.name|escape}{#S#}\n{$sArticle.articleID|category:\">\"|escape}{#S#}\n{$sArticle.description_long|strip_tags|strip|trim|truncate:900:\"...\":true|html_entity_decode|escape}{#S#}\n{$sArticle.image|image:3}{#S#}\n{$sArticle.articleID|link:$sArticle.name|escape}{#S#}\n{if $sArticle.instock}2 Tage{elseif $sArticle.shippingtime}{$sArticle.shippingtime} Tage{else}10 Tage{/if}{#S#}\n{$sArticle|@shippingcost:\"prepayment\":\"de\":\"Deutsche Post Standard\"|escape:\"number\"}{#S#}\n{$sArticle|@shippingcost:\"cash\":\"de\":\"Deutsche Post Standard\"|escape:\"number\"}{#S#}\n{$sArticle.price|escape:\"number\"}{#S#}\n{$sArticle.ean|escape}{#S#}\n{/strip}{#L#}','',0,1,1,NULL),(9,'Ciao','2000-01-01 00:00:00',0,'b8728935bc62480971c0dfdf74eabf6f',1,0,'2000-01-01 00:00:00',0,1,'0000-00-00 00:00:00','ciao.csv',1,NULL,1,1,'',NULL,0,1,0,0,0,'','{strip}\nOffer ID{#S#}\nBrand{#S#}\nProduct Name{#S#}\nCategory{#S#}\nDescription{#S#}\nImage URL{#S#}\nProduct URL{#S#}\nDelivery{#S#}\nShippingCost{#S#}\nPrice{#S#}\nProduct ID{#S#}\n{/strip}{#L#}','{strip}\n{$sArticle.ordernumber|escape}{#S#}\n{$sArticle.supplier|escape}{#S#}\n{$sArticle.name|strip_tags|strip|truncate:80:\"...\":true|escape}{#S#}\n{$sArticle.articleID|category:\">\"|escape}{#S#}\n{$sArticle.description_long|strip_tags|strip|trim|truncate:900:\"...\":true|html_entity_decode|escape}{#S#}\n{$sArticle.image|image:3}{#S#}\n{$sArticle.articleID|link:$sArticle.name|escape}{#S#}\n{if $sArticle.instock}2 Tage{elseif $sArticle.shippingtime}{$sArticle.shippingtime} Tage{else}10 Tage{/if}{#S#}\n{$sArticle|@shippingcost:\"prepayment\":\"de\"|escape:\"number\"}{#S#}\n{$sArticle.price|escape:\"number\"}{#S#}\n{#S#}\n{/strip}{#L#}','',0,1,1,NULL),(10,'Pangora','2000-01-01 00:00:00',0,'162a610b4a85c13fd448f9f5e2290fd5',1,0,'2000-01-01 00:00:00',0,1,'0000-00-00 00:00:00','pangora.csv',1,NULL,1,1,'',NULL,0,0,0,0,0,'','{strip}\noffer-id{#S#}\nmfname{#S#}\nlabel{#S#}\nmerchant-category{#S#}\ndescription{#S#}\nimage-url{#S#}\noffer-url{#S#}\nships-in{#S#}\nrelease-date{#S#}\ndelivery-charge{#S#}\nprices	old-prices{#S#}\nproduct-id{#S#}\n{/strip}{#L#}','{strip}\n{$sArticle.ordernumber|escape}{#S#}\n{$sArticle.supplier|escape}{#S#}\n{$sArticle.name|strip_tags|strip|truncate:80:\"...\":true|escape}{#S#}\n{$sArticle.articleID|category:\">\"|escape}{#S#}\n{$sArticle.description_long|strip_tags|strip|trim|truncate:900:\"...\":true|html_entity_decode|escape}{#S#}\n{$sArticle.image|image:3|escape}{#S#}\n{$sArticle.articleID|link:$sArticle.name|escape}{#S#}\n{if $sArticle.instock}2 Tage{elseif $sArticle.shippingtime}{$sArticle.shippingtime} Tage{else}10 Tage{/if}{#S#}\n{$sArticle.releasedate|escape}{#S#}\n{$sArticle|@shippingcost:\"prepayment\":\"de\":\"Deutsche Post Standard\"|escape:\"number\"}{#S#}\n{$sArticle.price|escape:\"number\"}{#S#}\n{#S#}\n{/strip}{#L#}\n\n','',0,1,1,NULL),(11,'Shopping.com','2000-01-01 00:00:00',0,'cb29f40e760f11b9071d081b8ca8039c',1,0,'2000-01-01 00:00:00',0,1,'0000-00-00 00:00:00','shopping.csv',1,NULL,1,1,'',NULL,0,0,0,0,0,'','{strip}\nMPN|\nEAN|\nHersteller|\nProduktname|\nProduktbeschreibung|\nPreis|\nProdukt-URL|\nProduktbild-URL|\nKategorie|\nVerfügbar|\nVerfügbarkeitsdetails|\nVersandkosten\n{/strip}{#L#}','{strip}\n|\n{$sArticle.ean}|\n{$sArticle.supplier}|\n{$sArticle.name|strip_tags|strip|truncate:80:\"...\":true}|\n{$sArticle.description_long|strip_tags|strip|trim|truncate:900:\"...\":true|html_entity_decode}|\n{$sArticle.price|escape:\"number\"}|\n{$sArticle.articleID|link:$sArticle.name}|\n{$sArticle.image|image:4}|\n{$sArticle.articleID|category:\">\"}|\n{if $sArticle.instock}Ja{else}Nein{/if}|\n{if $sArticle.instock}1-3 Werktage{elseif $sArticle.shippingtime}{$sArticle.shippingtime} Tage{else}10 Tage{/if}|\n{$sArticle|@shippingcost:\"prepayment\":\"de\":\"Deutsche Post Standard\"|escape:\"number\"}\n{/strip}{#L#}','',0,1,1,NULL),(12,'Hitmeister','2000-01-01 00:00:00',0,'76de62d0fd5ec76b483aa6529d36ee45',1,0,'2000-01-01 00:00:00',0,1,'0000-00-00 00:00:00','hitmeister.csv',1,NULL,1,1,'',NULL,0,0,0,0,0,'','{strip}\nean{#S#}\ncondition{#S#}\nprice{#S#}\ncomment{#S#}\noffer_id{#S#}\nlocation{#S#}\ncount{#S#}\ndelivery_time{#S#}\n{/strip}{#L#}','{strip}\n{$sArticle.ean|escape}{#S#}\n100{#S#}\n{$sArticle.price*100}{#S#}\n{#S#}\n{$sArticle.ordernumber|escape}{#S#}\n{#S#}\n{#S#}\n{if $sArticle.instock}b{else}d{/if}{#S#}\n{/strip}{#L#}','',0,1,1,NULL),(13,'evendi.de','2000-01-01 00:00:00',0,'5ac98a759a6f392ea0065a500acf82e6',1,0,'2000-01-01 00:00:00',0,1,'0000-00-00 00:00:00','evendi.csv',1,NULL,1,1,'',NULL,0,0,0,0,0,'','{strip}\nEindeutige Händler-Artikelnummer{#S#}\nPreis in Euro{#S#}\nKategorie{#S#}\nProduktbezeichnung{#S#}\nProduktbeschreibung{#S#}\nLink auf Detailseite{#S#}\nLieferzeit{#S#}\nEAN-Nummer{#S#}\nHersteller-Artikelnummer{#S#}\nLink auf Produktbild{#S#}\nHersteller{#S#}\nVersandVorkasse{#S#}\nVersandNachnahme{#S#}\nVersandLastschrift{#S#}\nVersandKreditkarte{#S#}\nVersandRechnung{#S#}\nVersandPayPal\n{/strip}{#L#}','{strip}\n{$sArticle.ordernumber|escape}{#S#}\n{$sArticle.price|escape:\"number\"|escape}{#S#}\n{$sArticle.articleID|category:\">\"|escape}{#S#}\n{$sArticle.name|strip_tags|strip|truncate:80:\"...\":true|escape}{#S#}\n{$sArticle.description_long|strip_tags|strip|trim|truncate:900:\"...\":true|html_entity_decode|escape}{#S#}\n{$sArticle.articleID|link:$sArticle.name|escape}{#S#}\n{#F#}{if $sArticle.instock}1-3 Werktage{elseif $sArticle.shippingtime}{$sArticle.shippingtime} Tage{else}10 Tage{/if}{#F#}{#S#}\n{$sArticle.ean|escape}{#S#}\n{$sArticle.suppliernumber|escape}{#S#}\n{$sArticle.image|image:2|escape}{#S#}\n{$sArticle.supplier|escape}{#S#}\n{$sArticle|@shippingcost:\"prepayment\":\"de\"|escape:\"number\"|escape}{#S#}\n{$sArticle|@shippingcost:\"cash\":\"de\"|escape:\"number\"|escape}{#S#}\n{$sArticle|@shippingcost:\"debit\":\"de\"|escape:\"number\"|escape}{#S#}\n{\"\"|escape}{#S#}\n{$sArticle|@shippingcost:\"invoice\":\"de\"|escape:\"number\"|escape}{#S#}\n{$sArticle|@shippingcost:\"paypal\":\"de\"|escape:\"number\"|escape}{#S#}\n{/strip}{#L#}','',0,1,1,NULL),(14,'affili.net','2000-01-01 00:00:00',0,'bc960c18cbeea9038314d040e7dc92f5',1,0,'2000-01-01 00:00:00',0,1,'0000-00-00 00:00:00','affilinet.csv',1,NULL,1,1,'',NULL,0,0,0,0,0,'','{strip}\nart_number{#S#}\ncategory{#S#}\ntitle{#S#}\ndescription{#S#}\nprice{#S#}\nimg_url{#S#}\ndeeplink1{#S#}\n{/strip}{#L#}','{strip}\n{$sArticle.ordernumber}{#S#}\n{$sArticle.articleID|category:\">\"|escape}{#S#}\n{$sArticle.name|strip_tags|strip|truncate:80:\"...\":true|escape}{#S#}\n{$sArticle.description_long|strip_tags|strip|trim|truncate:900:\"...\":true|html_entity_decode|escape}{#S#}\n{$sArticle.price|escape:\"number\"}{#S#}\n{$sArticle.image|image:5|escape}{#S#}\n{$sArticle.articleID|link:$sArticle.name|escape}{#S#}\n{/strip}{#L#}','',0,1,1,NULL),(15,'Google Produktsuche XML','2000-01-01 00:00:00',0,'e8eca3b3bbbad77afddb67b8138900e1',1,0,'2000-01-01 00:00:00',0,3,'2008-09-27 09:52:17','export.xml',2,NULL,1,1,'',NULL,0,0,0,0,0,'','<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n<rss version=\"2.0\" xmlns:g=\"http://base.google.com/ns/1.0\" xmlns:atom=\"http://www.w3.org/2005/Atom\">\n<channel>\n	<atom:link href=\"http://{$sConfig.sBASEPATH}/engine/connectors/export/{$sSettings.id}/{$sSettings.hash}/{$sSettings.filename}\" rel=\"self\" type=\"application/rss+xml\" />\n	<title>{$sConfig.sSHOPNAME}</title>\n	<description>Beschreibung im Header hinterlegen</description>\n	<link>http://{$sConfig.sBASEPATH}</link>\n	<language>DE</language>\n	<image>\n		<url>http://{$sConfig.sBASEPATH}/templates/_default/frontend/_resources/images/logo.jpg</url>\n		<title>{$sConfig.sSHOPNAME}</title>\n		<link>http://{$sConfig.sBASEPATH}</link>\n	</image>','<item> \n    <g:id>{$sArticle.articleID|escape}</g:id>\n	<title>{$sArticle.name|strip_tags|strip|truncate:80:\"...\":true|escape}</title>\n	<description>{$sArticle.description_long|strip_tags|strip|truncate:900:\"...\"|escape}</description>\n	<g:google_product_category>Wählen Sie hier Ihre Google Produkt-Kategorie</g:google_product_category>\n	<g:product_type>{$sArticle.articleID|category:\" > \"|escape}</g:product_type>\n	<link>{$sArticle.articleID|link:$sArticle.name|escape}</link>\n	<g:image_link>{$sArticle.image|image:4}</g:image_link>\n	<g:condition>neu</g:condition>\n	<g:availability>{if $sArticle.esd}bestellbar{elseif $sArticle.instock>0}bestellbar{elseif $sArticle.releasedate && $sArticle.releasedate|strtotime > $smarty.now}vorbestellt{elseif $sArticle.shippingtime}bestellbar{else}nicht auf lager{/if}</g:availability>\n	<g:price>{$sArticle.price|format:\"number\"}</g:price>\n	<g:brand>{$sArticle.supplier|escape}</g:brand>\n	<g:gtin>{$sArticle.suppliernumber|replace:\"|\":\"\"}</g:gtin>\n	<g:mpn>{$sArticle.suppliernumber|escape}</g:mpn>\n	<g:shipping>\n       <g:country>DE</g:country>\n       <g:service>Standard</g:service>\n       <g:price>{$sArticle|@shippingcost:\"prepayment\":\"de\"|escape:number}</g:price>\n    </g:shipping>\n  {if $sArticle.changed}<pubDate>{$sArticle.changed|date_format:\"%a, %d %b %Y %T %Z\"}</pubDate>{/if}		\n</item>','</channel>\n</rss>',0,1,1,NULL),(16,'preissuchmaschine.de','2000-01-01 00:00:00',0,'67fbbab544165d9d4e5352f9a12054a0',1,0,'2000-01-01 00:00:00',0,1,'0000-00-00 00:00:00','preissuchmaschine.csv',1,NULL,1,1,'',NULL,0,0,0,0,0,'','{strip}\nBestellnummer|\nHersteller|\nBezeichnung|\nPreis|\nLieferzeit|\nProduktLink|\nFotoLink|\nBeschreibung|\nVersandNachnahme|\nVersandKreditkarte|\nVersandLastschrift|\nVersandBankeinzug|\nVersandRechnung|\nVersandVorkasse|\nEANCode|\nGewicht\n{/strip}{#L#}','{strip}\n{$sArticle.ordernumber|replace:\"|\":\"\"}|\n{$sArticle.supplier|replace:\"|\":\"\"}|\n{$sArticle.name|strip_tags|strip|truncate:80:\"...\":true|replace:\"|\":\"\"}|\n{$sArticle.price|escape:\"number\"}|\n{if $sArticle.instock}2 Tage{elseif $sArticle.shippingtime}{$sArticle.shippingtime} Tage{else}10 Tage{/if}|\n{$sArticle.articleID|link:$sArticle.name|replace:\"|\":\"\"}|\n{$sArticle.image|image:2}|\n{$sArticle.description_long|strip_tags|strip|trim|truncate:900:\"...\":true|html_entity_decode|replace:\"|\":\"\"}|\n{$sArticle|@shippingcost:\"cash\":\"de\":\"Deutsche Post Standard\"|escape:\"number\"}|\n|\n{$sArticle|@shippingcost:\"debit\":\"de\":\"Deutsche Post Standard\"|escape:\"number\"}|\n|\n{$sArticle|@shippingcost:\"invoice\":\"de\":\"Deutsche Post Standard\"|escape:\"number\"}|\n{$sArticle|@shippingcost:\"prepayment\":\"de\":\"Deutsche Post Standard\"|escape:\"number\"}|\n{$sArticle.ean|replace:\"|\":\"\"}|\n{$sArticle.weight|replace:\"|\":\"\"}\n{/strip}{#L#}','',0,1,1,NULL),(17,'RSS Feed-Template','2000-01-01 00:00:00',0,'3a6ff2a4f921a10d33d9b9ec25529a5d',1,0,'2000-01-01 00:00:00',0,3,'0000-00-00 00:00:00','export.xml',2,NULL,1,1,'',NULL,0,0,0,0,0,'','<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n<rss version=\"2.0\" xmlns:atom=\"http://www.w3.org/2005/Atom\">\n<channel>\n	<atom:link href=\"http://{$sConfig.sBASEPATH}/engine/connectors/export/{$sSettings.id}/{$sSettings.hash}/{$sSettings.filename}\" rel=\"self\" type=\"application/rss+xml\" />\n	<title>{$sConfig.sSHOPNAME}</title>\n	<description>Shopbeschreibung ...</description>\n	<link>http://{$sConfig.sBASEPATH}</link>\n	<language>{$sLanguage.isocode}-{$sLanguage.isocode}</language>\n	<image>\n		<url>http://{$sConfig.sBASEPATH}/templates/0/de/media/img/default/store/logo.gif</url>\n		<title>{$sConfig.sSHOPNAME}</title>\n		<link>http://{$sConfig.sBASEPATH}</link>\n	</image>{#L#}','<item> \n	<title>{$sArticle.name|strip_tags|htmlspecialchars_decode|strip|escape}</title>\n	<guid>{$sArticle.articleID|link:$sArticle.name|escape}</guid>\n	<link>{$sArticle.articleID|link:$sArticle.name}</link>\n	<description>{if $sArticle.image}\n		<a href=\"{$sArticle.articleID|link:$sArticle.name}\" style=\"border:0 none;\">\n			<img src=\"{$sArticle.image|image:3}\" align=\"right\" style=\"padding: 0pt 0pt 12px 12px; float: right;\" />\n		</a>\n{/if}\n		{$sArticle.description_long|strip_tags|regex_replace:\"/[^\\wöäüÖÄÜß .?!,&:%;\\-\\\"\']/i\":\"\"|trim|truncate:900:\"...\"|escape}\n	</description>\n	<category>{$sArticle.articleID|category:\">\"|htmlspecialchars_decode|escape}</category>\n{if $sArticle.changed} 	{assign var=\"sArticleChanged\" value=$sArticle.changed|strtotime}<pubDate>{\"r\"|date:$sArticleChanged}</pubDate>{\"rn\"}{/if}\n</item>{#L#}','</channel>\n</rss>',0,1,1,NULL);
/*!40000 ALTER TABLE `s_export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_export_articles`
--

DROP TABLE IF EXISTS `s_export_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_export_articles` (
  `feedID` int(11) NOT NULL,
  `articleID` int(11) NOT NULL,
  PRIMARY KEY (`feedID`,`articleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_export_articles`
--

LOCK TABLES `s_export_articles` WRITE;
/*!40000 ALTER TABLE `s_export_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_export_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_export_attributes`
--

DROP TABLE IF EXISTS `s_export_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_export_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exportID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `exportID` (`exportID`),
  CONSTRAINT `s_export_attributes_ibfk_1` FOREIGN KEY (`exportID`) REFERENCES `s_export` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_export_attributes`
--

LOCK TABLES `s_export_attributes` WRITE;
/*!40000 ALTER TABLE `s_export_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_export_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_export_categories`
--

DROP TABLE IF EXISTS `s_export_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_export_categories` (
  `feedID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  PRIMARY KEY (`feedID`,`categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_export_categories`
--

LOCK TABLES `s_export_categories` WRITE;
/*!40000 ALTER TABLE `s_export_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_export_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_export_suppliers`
--

DROP TABLE IF EXISTS `s_export_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_export_suppliers` (
  `feedID` int(11) NOT NULL,
  `supplierID` int(11) NOT NULL,
  PRIMARY KEY (`feedID`,`supplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_export_suppliers`
--

LOCK TABLES `s_export_suppliers` WRITE;
/*!40000 ALTER TABLE `s_export_suppliers` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_export_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_filter`
--

DROP TABLE IF EXISTS `s_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `comparable` int(1) NOT NULL,
  `sortmode` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `get_sets_query` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_filter`
--

LOCK TABLES `s_filter` WRITE;
/*!40000 ALTER TABLE `s_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_filter_articles`
--

DROP TABLE IF EXISTS `s_filter_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_filter_articles` (
  `articleID` int(10) unsigned NOT NULL,
  `valueID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`articleID`,`valueID`),
  KEY `valueID` (`valueID`),
  KEY `articleID` (`articleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_filter_articles`
--

LOCK TABLES `s_filter_articles` WRITE;
/*!40000 ALTER TABLE `s_filter_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_filter_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_filter_attributes`
--

DROP TABLE IF EXISTS `s_filter_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_filter_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filterID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filterID` (`filterID`),
  CONSTRAINT `s_filter_attributes_ibfk_1` FOREIGN KEY (`filterID`) REFERENCES `s_filter` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_filter_attributes`
--

LOCK TABLES `s_filter_attributes` WRITE;
/*!40000 ALTER TABLE `s_filter_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_filter_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_filter_options`
--

DROP TABLE IF EXISTS `s_filter_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_filter_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filterable` int(1) NOT NULL,
  `default` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `get_options_query` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_filter_options`
--

LOCK TABLES `s_filter_options` WRITE;
/*!40000 ALTER TABLE `s_filter_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_filter_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_filter_relations`
--

DROP TABLE IF EXISTS `s_filter_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_filter_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupID` int(11) NOT NULL,
  `optionID` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `groupID` (`groupID`,`optionID`),
  KEY `get_set_assigns_query` (`groupID`,`position`),
  KEY `groupID_2` (`groupID`),
  KEY `optionID` (`optionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_filter_relations`
--

LOCK TABLES `s_filter_relations` WRITE;
/*!40000 ALTER TABLE `s_filter_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_filter_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_filter_values`
--

DROP TABLE IF EXISTS `s_filter_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_filter_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `optionID` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `value_numeric` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `optionID` (`optionID`,`value`),
  KEY `get_property_value_by_option_id_query` (`optionID`,`position`),
  KEY `optionID_2` (`optionID`),
  KEY `filters_order_by_position` (`optionID`,`position`,`id`),
  KEY `filters_order_by_numeric` (`optionID`,`value_numeric`,`id`),
  KEY `filters_order_by_alphanumeric` (`optionID`,`value`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_filter_values`
--

LOCK TABLES `s_filter_values` WRITE;
/*!40000 ALTER TABLE `s_filter_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_filter_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_library_component`
--

DROP TABLE IF EXISTS `s_library_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_library_component` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `x_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `convert_function` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cls` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pluginID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_library_component`
--

LOCK TABLES `s_library_component` WRITE;
/*!40000 ALTER TABLE `s_library_component` DISABLE KEYS */;
INSERT INTO `s_library_component` VALUES (2,'HTML-Element','emotion-components-html-element',NULL,'','component_html','html-text-element',NULL),(3,'Banner','emotion-components-banner','getBannerMappingLinks','','component_banner','banner-element',NULL),(4,'Artikel','emotion-components-article','getArticle','','component_article','article-element',NULL),(5,'Kategorie-Teaser','emotion-components-category-teaser','getCategoryTeaser','','component_category_teaser','category-teaser-element',NULL),(6,'Blog-Artikel','emotion-components-blog','getBlogEntry','','component_blog','blog-element',NULL),(7,'Banner-Slider','emotion-components-banner-slider','getBannerSlider','','component_banner_slider','banner-slider-element',NULL),(8,'Youtube-Video','emotion-components-youtube',NULL,'','component_youtube','youtube-element',NULL),(9,'iFrame-Element','',NULL,'','component_iframe','iframe-element',NULL),(10,'Hersteller-Slider','emotion-components-manufacturer-slider','getManufacturerSlider','','component_manufacturer_slider','manufacturer-slider-element',NULL),(11,'Artikel-Slider','emotion-components-article-slider','getArticleSlider','','component_article_slider','article-slider-element',NULL);
/*!40000 ALTER TABLE `s_library_component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_library_component_field`
--

DROP TABLE IF EXISTS `s_library_component_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_library_component_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `componentID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `x_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `support_text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `help_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `help_text` text COLLATE utf8_unicode_ci NOT NULL,
  `store` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value_field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `default_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allow_blank` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_library_component_field`
--

LOCK TABLES `s_library_component_field` WRITE;
/*!40000 ALTER TABLE `s_library_component_field` DISABLE KEYS */;
INSERT INTO `s_library_component_field` VALUES (3,3,'file','mediaselectionfield','','Bild','','','','','','','',0),(4,2,'text','tinymce','','Text','Anzuzeigender Text','HTML-Text','Geben Sie hier den Text ein der im Element angezeigt werden soll.','','','','',0),(5,4,'article','emotion-components-fields-article','','Artikelsuche','Der anzuzeigende Artikel','Lorem ipsum dolor','Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam','','','','',0),(6,2,'cms_title','textfield','','Titel','','','','','','','',1),(7,3,'bannerMapping','hidden','json','','','','','','','','',0),(8,4,'article_type','emotion-components-fields-article-type','','Typ des Artikels','','','','','','','',0),(9,5,'image_type','emotion-components-fields-category-image-type','','Typ des Bildes','','','','','','','',0),(10,5,'image','mediaselectionfield','','Bild','','','','','','','',1),(11,5,'category_selection','emotion-components-fields-category-selection','','','','','','','','','',1),(12,6,'entry_amount','numberfield','','Anzahl','','','','','','','',0),(13,7,'banner_slider_title','textfield','','Überschrift','','','','','','','',1),(15,7,'banner_slider_arrows','checkbox','','Pfeile anzeigen','','','','','','','',0),(16,7,'banner_slider_numbers','checkbox','','Nummern ausgeben','','','','','','','',0),(17,7,'banner_slider_scrollspeed','numberfield','','Scroll-Geschwindigkeit','','','','','','','',0),(18,7,'banner_slider_rotation','checkbox','','Automatisch rotieren','','','','','','','',0),(19,7,'banner_slider_rotatespeed','numberfield','','Rotations Geschwindigkeit','','','','','','','5000',0),(20,7,'banner_slider','hidden','json','','','','','','','','',0),(22,8,'video_id','textfield','','Youtube-Video ID','','','','','','','',0),(23,8,'video_hd','checkbox','','HD-Video verwenden','','','','','','','',0),(24,9,'iframe_url','textfield','','URL','','','','','','','',0),(25,10,'manufacturer_type','emotion-components-fields-manufacturer-type','','','','','','','','','',0),(26,10,'manufacturer_category','emotion-components-fields-category-selection','','','','','','','','','',1),(27,10,'selected_manufacturers','hidden','json','','','','','','','','',0),(28,10,'manufacturer_slider_title','textfield','','Überschrift','','','','','','','',1),(30,10,'manufacturer_slider_arrows','checkbox','','Pfeile anzeigen','','','','','','','',0),(31,10,'manufacturer_slider_numbers','checkbox','','Nummern ausgeben','','','','','','','',0),(32,10,'manufacturer_slider_scrollspeed','numberfield','','Scroll-Geschwindigkeit','','','','','','','',0),(33,10,'manufacturer_slider_rotation','checkbox','','Automatisch rotieren','','','','','','','',0),(34,10,'manufacturer_slider_rotatespeed','numberfield','','Rotations Geschwindigkeit','','','','','','','5000',0),(36,11,'article_slider_type','emotion-components-fields-article-slider-type','','','','','','','','','',0),(37,11,'selected_articles','hidden','json','','','','','','','','',0),(38,11,'article_slider_max_number','numberfield','','max. Anzahl','','','','','','','',0),(39,11,'article_slider_title','textfield','','Überschrift','','','','','','','',1),(41,11,'article_slider_arrows','checkbox','','Pfeile anzeigen','','','','','','','',0),(42,11,'article_slider_numbers','checkbox','','Nummern ausgeben','','','','','','','',0),(43,11,'article_slider_scrollspeed','numberfield','','Scroll-Geschwindigkeit','','','','','','','',0),(44,11,'article_slider_rotation','checkbox','','Automatisch rotieren','','','','','','','',0),(45,11,'article_slider_rotatespeed','numberfield','','Rotations Geschwindigkeit','','','','','','','5000',0),(47,3,'link','textfield','','Link','','','','','','','',1),(48,5,'blog_category','checkboxfield','','Blog-Kategorie','Bei der ausgewählten Kategorie handelt es sich um eine Blog-Kategorie','','','','','','',0),(49,6,'thumbnail_size','textfield','','Thumbnail-Größe','Thumbnail-Nummer, die verwendet werden soll. Im Standard stehen Ihnen 0 bis 3 zur Verfügung.','','','','','','2',1);
/*!40000 ALTER TABLE `s_library_component_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_media`
--

DROP TABLE IF EXISTS `s_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `albumID` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(10) unsigned NOT NULL,
  `userID` int(11) NOT NULL,
  `created` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Album` (`albumID`),
  KEY `path` (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_media`
--

LOCK TABLES `s_media` WRITE;
/*!40000 ALTER TABLE `s_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_media_album`
--

DROP TABLE IF EXISTS `s_media_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_media_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parentID` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_media_album`
--

LOCK TABLES `s_media_album` WRITE;
/*!40000 ALTER TABLE `s_media_album` DISABLE KEYS */;
INSERT INTO `s_media_album` VALUES (-12,'Hersteller',NULL,12),(-11,'Blog',NULL,3),(-10,'Unsortiert',NULL,7),(-9,'Sonstiges',-6,3),(-8,'Musik',-6,2),(-7,'Video',-6,1),(-6,'Dateien',NULL,6),(-5,'Newsletter',NULL,4),(-4,'Aktionen',NULL,5),(-3,'Einkaufswelten',NULL,3),(-2,'Banner',NULL,1),(-1,'Artikel',NULL,2);
/*!40000 ALTER TABLE `s_media_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_media_album_settings`
--

DROP TABLE IF EXISTS `s_media_album_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_media_album_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `albumID` int(11) NOT NULL,
  `create_thumbnails` int(11) NOT NULL,
  `thumbnail_size` text COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `albumID` (`albumID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_media_album_settings`
--

LOCK TABLES `s_media_album_settings` WRITE;
/*!40000 ALTER TABLE `s_media_album_settings` DISABLE KEYS */;
INSERT INTO `s_media_album_settings` VALUES (1,-10,0,'','sprite-blue-folder'),(2,-9,0,'','sprite-blue-folder'),(3,-8,0,'','sprite-blue-folder'),(4,-7,0,'','sprite-blue-folder'),(5,-6,0,'','sprite-blue-folder'),(6,-5,0,'','sprite-blue-folder'),(7,-4,0,'','sprite-blue-folder'),(8,-3,0,'','sprite-blue-folder'),(9,-2,0,'','sprite-blue-folder'),(10,-1,1,'30x30;57x57;105x105;140x140;285x255;720x600','sprite-blue-folder'),(11,-11,1,'57x57;140x140;285x255;720x600','sprite-blue-folder'),(12,-12,0,'','sprite-blue-folder');
/*!40000 ALTER TABLE `s_media_album_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_media_association`
--

DROP TABLE IF EXISTS `s_media_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_media_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mediaID` int(11) NOT NULL,
  `targetType` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `targetID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Media` (`mediaID`),
  KEY `Target` (`targetID`,`targetType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_media_association`
--

LOCK TABLES `s_media_association` WRITE;
/*!40000 ALTER TABLE `s_media_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_media_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_media_attributes`
--

DROP TABLE IF EXISTS `s_media_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_media_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mediaID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mediaID` (`mediaID`),
  CONSTRAINT `s_media_attributes_ibfk_1` FOREIGN KEY (`mediaID`) REFERENCES `s_media` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_media_attributes`
--

LOCK TABLES `s_media_attributes` WRITE;
/*!40000 ALTER TABLE `s_media_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_media_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_order`
--

DROP TABLE IF EXISTS `s_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordernumber` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `invoice_amount` double NOT NULL DEFAULT '0',
  `invoice_amount_net` double NOT NULL,
  `invoice_shipping` double NOT NULL DEFAULT '0',
  `invoice_shipping_net` double NOT NULL,
  `ordertime` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `cleared` int(11) NOT NULL DEFAULT '0',
  `paymentID` int(11) NOT NULL DEFAULT '0',
  `transactionID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `customercomment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `internalcomment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `net` int(1) NOT NULL,
  `taxfree` int(11) NOT NULL,
  `partnerID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `temporaryID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `referer` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `cleareddate` datetime DEFAULT NULL,
  `trackingcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `dispatchID` int(11) NOT NULL,
  `currency` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `currencyFactor` double NOT NULL,
  `subshopID` int(11) NOT NULL,
  `remote_addr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `partnerID` (`partnerID`),
  KEY `userID` (`userID`),
  KEY `ordertime` (`ordertime`),
  KEY `cleared` (`cleared`),
  KEY `status` (`status`),
  KEY `paymentID` (`paymentID`),
  KEY `temporaryID` (`temporaryID`),
  KEY `ordernumber` (`ordernumber`),
  KEY `transactionID` (`transactionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_order`
--

LOCK TABLES `s_order` WRITE;
/*!40000 ALTER TABLE `s_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_order_attributes`
--

DROP TABLE IF EXISTS `s_order_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_order_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` int(11) DEFAULT NULL,
  `attribute1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderID` (`orderID`),
  CONSTRAINT `s_order_attributes_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `s_order` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_order_attributes`
--

LOCK TABLES `s_order_attributes` WRITE;
/*!40000 ALTER TABLE `s_order_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_order_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_order_basket`
--

DROP TABLE IF EXISTS `s_order_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_order_basket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionID` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userID` int(11) NOT NULL DEFAULT '0',
  `articlename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `articleID` int(11) NOT NULL DEFAULT '0',
  `ordernumber` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `shippingfree` int(1) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `netprice` double NOT NULL DEFAULT '0',
  `tax_rate` double NOT NULL,
  `datum` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modus` int(11) NOT NULL DEFAULT '0',
  `esdarticle` int(1) NOT NULL,
  `partnerID` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `lastviewport` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `useragent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `currencyFactor` double NOT NULL,
  `liveshoppingID` int(11) NOT NULL,
  `bundleID` int(11) unsigned NOT NULL,
  `bundle_join_ordernumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessionID` (`sessionID`),
  KEY `articleID` (`articleID`),
  KEY `datum` (`datum`),
  KEY `get_basket` (`sessionID`,`id`,`datum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_order_basket`
--

LOCK TABLES `s_order_basket` WRITE;
/*!40000 ALTER TABLE `s_order_basket` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_order_basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_order_basket_attributes`
--

DROP TABLE IF EXISTS `s_order_basket_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_order_basket_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `basketID` int(11) DEFAULT NULL,
  `attribute1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `basketID` (`basketID`),
  CONSTRAINT `s_order_basket_attributes_ibfk_2` FOREIGN KEY (`basketID`) REFERENCES `s_order_basket` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_order_basket_attributes`
--

LOCK TABLES `s_order_basket_attributes` WRITE;
/*!40000 ALTER TABLE `s_order_basket_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_order_basket_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_order_billingaddress`
--

DROP TABLE IF EXISTS `s_order_billingaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_order_billingaddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `orderID` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `salutation` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `customernumber` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `streetnumber` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `countryID` int(11) NOT NULL DEFAULT '0',
  `stateID` int(11) NOT NULL,
  `ustid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderID` (`orderID`),
  KEY `userid` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_order_billingaddress`
--

LOCK TABLES `s_order_billingaddress` WRITE;
/*!40000 ALTER TABLE `s_order_billingaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_order_billingaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_order_billingaddress_attributes`
--

DROP TABLE IF EXISTS `s_order_billingaddress_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_order_billingaddress_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `billingID` int(11) DEFAULT NULL,
  `text1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `billingID` (`billingID`),
  CONSTRAINT `s_order_billingaddress_attributes_ibfk_2` FOREIGN KEY (`billingID`) REFERENCES `s_order_billingaddress` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_order_billingaddress_attributes`
--

LOCK TABLES `s_order_billingaddress_attributes` WRITE;
/*!40000 ALTER TABLE `s_order_billingaddress_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_order_billingaddress_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_order_comparisons`
--

DROP TABLE IF EXISTS `s_order_comparisons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_order_comparisons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionID` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userID` int(11) NOT NULL DEFAULT '0',
  `articlename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `articleID` int(11) NOT NULL DEFAULT '0',
  `datum` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `articleID` (`articleID`),
  KEY `sessionID` (`sessionID`),
  KEY `datum` (`datum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_order_comparisons`
--

LOCK TABLES `s_order_comparisons` WRITE;
/*!40000 ALTER TABLE `s_order_comparisons` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_order_comparisons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_order_details`
--

DROP TABLE IF EXISTS `s_order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` int(11) NOT NULL DEFAULT '0',
  `ordernumber` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `articleID` int(11) NOT NULL DEFAULT '0',
  `articleordernumber` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `shipped` int(11) NOT NULL DEFAULT '0',
  `shippedgroup` int(11) NOT NULL DEFAULT '0',
  `releasedate` date DEFAULT NULL,
  `modus` int(11) NOT NULL,
  `esdarticle` int(1) NOT NULL,
  `taxID` int(11) DEFAULT NULL,
  `tax_rate` double NOT NULL,
  `config` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ean` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pack_unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orderID` (`orderID`),
  KEY `articleID` (`articleID`),
  KEY `ordernumber` (`ordernumber`),
  KEY `articleordernumber` (`articleordernumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_order_details`
--

LOCK TABLES `s_order_details` WRITE;
/*!40000 ALTER TABLE `s_order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_order_details_attributes`
--

DROP TABLE IF EXISTS `s_order_details_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_order_details_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detailID` int(11) DEFAULT NULL,
  `attribute1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `detailID` (`detailID`),
  CONSTRAINT `s_order_details_attributes_ibfk_1` FOREIGN KEY (`detailID`) REFERENCES `s_order_details` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_order_details_attributes`
--

LOCK TABLES `s_order_details_attributes` WRITE;
/*!40000 ALTER TABLE `s_order_details_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_order_details_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_order_documents`
--

DROP TABLE IF EXISTS `s_order_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_order_documents` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `type` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `orderID` int(11) unsigned NOT NULL,
  `amount` double NOT NULL,
  `docID` int(11) NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `orderID` (`orderID`),
  KEY `userID` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_order_documents`
--

LOCK TABLES `s_order_documents` WRITE;
/*!40000 ALTER TABLE `s_order_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_order_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_order_documents_attributes`
--

DROP TABLE IF EXISTS `s_order_documents_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_order_documents_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documentID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `documentID` (`documentID`),
  CONSTRAINT `s_order_documents_attributes_ibfk_1` FOREIGN KEY (`documentID`) REFERENCES `s_order_documents` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_order_documents_attributes`
--

LOCK TABLES `s_order_documents_attributes` WRITE;
/*!40000 ALTER TABLE `s_order_documents_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_order_documents_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_order_esd`
--

DROP TABLE IF EXISTS `s_order_esd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_order_esd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serialID` int(255) NOT NULL DEFAULT '0',
  `esdID` int(11) NOT NULL DEFAULT '0',
  `userID` int(11) NOT NULL DEFAULT '0',
  `orderID` int(11) NOT NULL DEFAULT '0',
  `orderdetailsID` int(11) NOT NULL DEFAULT '0',
  `datum` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_order_esd`
--

LOCK TABLES `s_order_esd` WRITE;
/*!40000 ALTER TABLE `s_order_esd` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_order_esd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_order_history`
--

DROP TABLE IF EXISTS `s_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_order_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `previous_order_status_id` int(11) DEFAULT NULL,
  `order_status_id` int(11) DEFAULT NULL,
  `previous_payment_status_id` int(11) DEFAULT NULL,
  `payment_status_id` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `change_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user` (`userID`),
  KEY `order` (`orderID`),
  KEY `current_payment_status` (`payment_status_id`),
  KEY `current_order_status` (`order_status_id`),
  KEY `previous_payment_status` (`previous_payment_status_id`),
  KEY `previous_order_status` (`previous_order_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_order_history`
--

LOCK TABLES `s_order_history` WRITE;
/*!40000 ALTER TABLE `s_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_order_notes`
--

DROP TABLE IF EXISTS `s_order_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_order_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sUniqueID` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `userID` int(11) NOT NULL DEFAULT '0',
  `articlename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `articleID` int(11) NOT NULL DEFAULT '0',
  `ordernumber` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `datum` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `basket_count_notes` (`sUniqueID`,`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_order_notes`
--

LOCK TABLES `s_order_notes` WRITE;
/*!40000 ALTER TABLE `s_order_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_order_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_order_number`
--

DROP TABLE IF EXISTS `s_order_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_order_number` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=929 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_order_number`
--

LOCK TABLES `s_order_number` WRITE;
/*!40000 ALTER TABLE `s_order_number` DISABLE KEYS */;
INSERT INTO `s_order_number` VALUES (1,20002,'user','Kunden'),(920,20000,'invoice','Bestellungen'),(921,20000,'doc_1','Lieferscheine'),(922,20000,'doc_2','Gutschriften'),(924,20000,'doc_0','Rechnungen'),(925,10000,'articleordernumber','Artikelbestellnummer  '),(926,10000,'sSERVICE1','Service - 1'),(927,10000,'sSERVICE2','Service - 2'),(928,110,'blogordernumber','Blog - ID');
/*!40000 ALTER TABLE `s_order_number` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_order_shippingaddress`
--

DROP TABLE IF EXISTS `s_order_shippingaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_order_shippingaddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  `orderID` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `salutation` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `streetnumber` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `countryID` int(11) NOT NULL,
  `stateID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderID` (`orderID`),
  KEY `userID` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_order_shippingaddress`
--

LOCK TABLES `s_order_shippingaddress` WRITE;
/*!40000 ALTER TABLE `s_order_shippingaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_order_shippingaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_order_shippingaddress_attributes`
--

DROP TABLE IF EXISTS `s_order_shippingaddress_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_order_shippingaddress_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shippingID` int(11) DEFAULT NULL,
  `text1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shippingID` (`shippingID`),
  CONSTRAINT `s_order_shippingaddress_attributes_ibfk_1` FOREIGN KEY (`shippingID`) REFERENCES `s_order_shippingaddress` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_order_shippingaddress_attributes`
--

LOCK TABLES `s_order_shippingaddress_attributes` WRITE;
/*!40000 ALTER TABLE `s_order_shippingaddress_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_order_shippingaddress_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_plugin_recommendations`
--

DROP TABLE IF EXISTS `s_plugin_recommendations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_plugin_recommendations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryID` int(11) NOT NULL,
  `banner_active` int(1) NOT NULL,
  `new_active` int(1) NOT NULL,
  `bought_active` int(1) NOT NULL,
  `supplier_active` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categoryID_2` (`categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_plugin_recommendations`
--

LOCK TABLES `s_plugin_recommendations` WRITE;
/*!40000 ALTER TABLE `s_plugin_recommendations` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_plugin_recommendations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_plugin_widgets_notes`
--

DROP TABLE IF EXISTS `s_plugin_widgets_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_plugin_widgets_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_plugin_widgets_notes`
--

LOCK TABLES `s_plugin_widgets_notes` WRITE;
/*!40000 ALTER TABLE `s_plugin_widgets_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_plugin_widgets_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_premium_dispatch`
--

DROP TABLE IF EXISTS `s_premium_dispatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_premium_dispatch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) unsigned NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(1) unsigned NOT NULL,
  `position` int(11) NOT NULL,
  `calculation` int(1) unsigned NOT NULL,
  `surcharge_calculation` int(1) unsigned NOT NULL,
  `tax_calculation` int(11) unsigned NOT NULL,
  `shippingfree` decimal(10,2) unsigned DEFAULT NULL,
  `multishopID` int(11) unsigned DEFAULT NULL,
  `customergroupID` int(11) unsigned DEFAULT NULL,
  `bind_shippingfree` int(1) unsigned NOT NULL,
  `bind_time_from` int(11) unsigned DEFAULT NULL,
  `bind_time_to` int(11) unsigned DEFAULT NULL,
  `bind_instock` int(1) unsigned DEFAULT NULL,
  `bind_laststock` int(1) unsigned NOT NULL,
  `bind_weekday_from` int(1) unsigned DEFAULT NULL,
  `bind_weekday_to` int(1) unsigned DEFAULT NULL,
  `bind_weight_from` decimal(10,3) DEFAULT NULL,
  `bind_weight_to` decimal(10,3) DEFAULT NULL,
  `bind_price_from` decimal(10,2) DEFAULT NULL,
  `bind_price_to` decimal(10,2) DEFAULT NULL,
  `bind_sql` mediumtext COLLATE utf8_unicode_ci,
  `status_link` mediumtext COLLATE utf8_unicode_ci,
  `calculation_sql` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_premium_dispatch`
--

LOCK TABLES `s_premium_dispatch` WRITE;
/*!40000 ALTER TABLE `s_premium_dispatch` DISABLE KEYS */;
INSERT INTO `s_premium_dispatch` VALUES (9,'Standard Versand',0,'','',1,0,0,3,0,NULL,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL);
/*!40000 ALTER TABLE `s_premium_dispatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_premium_dispatch_attributes`
--

DROP TABLE IF EXISTS `s_premium_dispatch_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_premium_dispatch_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dispatchID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dispatchID` (`dispatchID`),
  CONSTRAINT `s_premium_dispatch_attributes_ibfk_1` FOREIGN KEY (`dispatchID`) REFERENCES `s_premium_dispatch` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_premium_dispatch_attributes`
--

LOCK TABLES `s_premium_dispatch_attributes` WRITE;
/*!40000 ALTER TABLE `s_premium_dispatch_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_premium_dispatch_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_premium_dispatch_categories`
--

DROP TABLE IF EXISTS `s_premium_dispatch_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_premium_dispatch_categories` (
  `dispatchID` int(11) unsigned NOT NULL,
  `categoryID` int(11) unsigned NOT NULL,
  PRIMARY KEY (`dispatchID`,`categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_premium_dispatch_categories`
--

LOCK TABLES `s_premium_dispatch_categories` WRITE;
/*!40000 ALTER TABLE `s_premium_dispatch_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_premium_dispatch_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_premium_dispatch_countries`
--

DROP TABLE IF EXISTS `s_premium_dispatch_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_premium_dispatch_countries` (
  `dispatchID` int(11) NOT NULL,
  `countryID` int(11) NOT NULL,
  PRIMARY KEY (`dispatchID`,`countryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_premium_dispatch_countries`
--

LOCK TABLES `s_premium_dispatch_countries` WRITE;
/*!40000 ALTER TABLE `s_premium_dispatch_countries` DISABLE KEYS */;
INSERT INTO `s_premium_dispatch_countries` VALUES (9,2),(9,3),(9,4),(9,5),(9,7),(9,8),(9,9),(9,10),(9,11),(9,12),(9,13),(9,14),(9,15),(9,16),(9,18),(9,20),(9,21),(9,22),(9,23),(9,24),(9,25),(9,26),(9,27),(9,28),(9,29),(9,30),(9,31),(9,32),(9,33),(9,34),(9,35),(9,36),(9,37);
/*!40000 ALTER TABLE `s_premium_dispatch_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_premium_dispatch_holidays`
--

DROP TABLE IF EXISTS `s_premium_dispatch_holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_premium_dispatch_holidays` (
  `dispatchID` int(11) unsigned NOT NULL,
  `holidayID` int(11) unsigned NOT NULL,
  PRIMARY KEY (`dispatchID`,`holidayID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_premium_dispatch_holidays`
--

LOCK TABLES `s_premium_dispatch_holidays` WRITE;
/*!40000 ALTER TABLE `s_premium_dispatch_holidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_premium_dispatch_holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_premium_dispatch_paymentmeans`
--

DROP TABLE IF EXISTS `s_premium_dispatch_paymentmeans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_premium_dispatch_paymentmeans` (
  `dispatchID` int(11) NOT NULL,
  `paymentID` int(11) NOT NULL,
  PRIMARY KEY (`dispatchID`,`paymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_premium_dispatch_paymentmeans`
--

LOCK TABLES `s_premium_dispatch_paymentmeans` WRITE;
/*!40000 ALTER TABLE `s_premium_dispatch_paymentmeans` DISABLE KEYS */;
INSERT INTO `s_premium_dispatch_paymentmeans` VALUES (9,2),(9,3),(9,4),(9,5);
/*!40000 ALTER TABLE `s_premium_dispatch_paymentmeans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_premium_holidays`
--

DROP TABLE IF EXISTS `s_premium_holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_premium_holidays` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `calculation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_premium_holidays`
--

LOCK TABLES `s_premium_holidays` WRITE;
/*!40000 ALTER TABLE `s_premium_holidays` DISABLE KEYS */;
INSERT INTO `s_premium_holidays` VALUES (1,'Neujahr','DATE(\'01-01\')','2011-01-01'),(2,'Berchtoldstag','DATE(\'01/02\')','2011-01-02'),(3,'Heilige drei Könige','DATE(\'01-06\')','2011-01-06'),(4,'Rosenmontag','DATE_SUB(EASTERDATE(), INTERVAL 48 DAY)','2011-03-07'),(5,'Josefstag','DATE(\'03/19\')','2011-03-19'),(6,'Karfreitag','DATE_SUB(EASTERDATE(), INTERVAL 2 DAY)','2011-04-22'),(7,'Ostermontag','DATE_ADD(EASTERDATE(), INTERVAL 1 DAY)','2011-04-25'),(8,'Tag der Arbeit','DATE(\'05/01\')','2011-05-01'),(9,'Christi Himmelfahrt','DATE_ADD(EASTERDATE(), INTERVAL 39 DAY)','2011-06-02'),(10,'Pfingstmontag','DATE_ADD(EASTERDATE(), INTERVAL 50 DAY)','2011-06-13'),(11,'Fronleichnam','DATE_ADD(EASTERDATE(), INTERVAL 60 DAY)','2011-06-23'),(12,'Bundesfeier (Schweiz)','DATE(\'08-01\')','2011-08-01'),(13,'Mariä Himmelfahrt','DATE(\'08/15\')','2011-08-15'),(14,'Tag der Deutschen Einheit','DATE(\'10/03\')','2011-10-03'),(15,'Nationalfeiertag (Österreich)','DATE(\'10/26\')','2010-10-26'),(16,'Reformationstag','DATE(\'10/31\')','2010-10-31'),(17,'Allerheiligen','DATE(\'11/01\')','2010-11-01'),(18,'Buß- und Bettag','SUBDATE(DATE(\'11-23\'), DAYOFWEEK(DATE(\'11-23\'))+IF(DAYOFWEEK(DATE(\'11-23\'))>4,-4,3))','2010-11-17'),(19,'Mariä Empfängnis','DATE(\'12/8\')','2010-12-08'),(20,'Heiligabend','DATE(\'12/24\')','2010-12-24'),(21,'1. Weihnachtstag','DATE(\'12/25\')','2010-12-25'),(22,'2. Weihnachtstag (Stephanstag)','DATE(\'12/26\')','2010-12-26'),(23,'Sylvester','DATE(\'12/31\')','2010-12-31');
/*!40000 ALTER TABLE `s_premium_holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_premium_shippingcosts`
--

DROP TABLE IF EXISTS `s_premium_shippingcosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_premium_shippingcosts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `from` decimal(10,3) unsigned NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `factor` decimal(10,2) NOT NULL,
  `dispatchID` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `from` (`from`,`dispatchID`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_premium_shippingcosts`
--

LOCK TABLES `s_premium_shippingcosts` WRITE;
/*!40000 ALTER TABLE `s_premium_shippingcosts` DISABLE KEYS */;
INSERT INTO `s_premium_shippingcosts` VALUES (235,0.000,3.90,0.00,9);
/*!40000 ALTER TABLE `s_premium_shippingcosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_schema_version`
--

DROP TABLE IF EXISTS `s_schema_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_schema_version` (
  `version` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `complete_date` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `error_msg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_schema_version`
--

LOCK TABLES `s_schema_version` WRITE;
/*!40000 ALTER TABLE `s_schema_version` DISABLE KEYS */;
INSERT INTO `s_schema_version` VALUES (101,'2014-09-24 09:40:05','2014-09-24 09:40:05','add-extended-editor-field',NULL),(102,'2014-09-24 09:40:05','2014-09-24 09:40:05','add-new-emotions',NULL),(103,'2014-09-24 09:40:05','2014-09-24 09:40:05','add-field-blog-teaser',NULL),(104,'2014-09-24 09:40:05','2014-09-24 09:40:05','add-field-blog-thumbnail-size',NULL),(105,'2014-09-24 09:40:05','2014-09-24 09:40:05','s_core_sessions_backend',NULL),(106,'2014-09-24 09:40:05','2014-09-24 09:40:05','add-path-to-categories',NULL),(107,'2014-09-24 09:40:05','2014-09-24 09:40:05','remove-legacy-cache-config',NULL),(108,'2014-09-24 09:40:05','2014-09-24 09:40:05','add-category-listing-indexes',NULL),(109,'2014-09-24 09:40:05','2014-09-24 09:40:05','add-translations',NULL),(110,'2014-09-24 09:40:05','2014-09-24 09:40:05','add-disabled-cache-field',NULL),(111,'2014-09-24 09:40:05','2014-09-24 09:40:06','add-password-encoder',NULL),(112,'2014-09-24 09:40:06','2014-09-24 09:40:06','link-cache-menu-to-the-new-performance-module',NULL),(113,'2014-09-24 09:40:06','2014-09-24 09:40:06','adds-performance-sql',NULL),(114,'2014-09-24 09:40:06','2014-09-24 09:40:06','add-new-top-seller',NULL),(115,'2014-09-24 09:40:06','2014-09-24 09:40:06','add-denormalized-category-table',NULL),(116,'2014-09-24 09:40:06','2014-09-24 09:40:06','optimize-emotion-queries',NULL),(117,'2014-09-24 09:40:06','2014-09-24 09:40:06','add-article-detail-page-indexes',NULL),(118,'2014-09-24 09:40:06','2014-09-24 09:40:06','optimize-property-backend-queries',NULL),(119,'2014-09-24 09:40:06','2014-09-24 09:40:06','add-batchmode-option',NULL),(120,'2014-09-24 09:40:06','2014-09-24 09:40:06','add-cache-log',NULL),(121,'2014-09-24 09:40:06','2014-09-24 09:40:06','fix-cache-label',NULL),(122,'2014-09-24 09:40:06','2014-09-24 09:40:06','optimize-search-index-queries',NULL),(123,'2014-09-24 09:40:06','2014-09-24 09:40:06','add-dummy-plugins',NULL),(124,'2014-09-24 09:40:06','2014-09-24 09:40:06','remove-router-url-cache',NULL),(125,'2014-09-24 09:40:06','2014-09-24 09:40:06','adds-filter-performance-sql',NULL),(126,'2014-09-24 09:40:06','2014-09-24 09:40:06','update-cache-menu-items',NULL),(127,'2014-09-24 09:40:06','2014-09-24 09:40:06','install-http-plugin',NULL),(128,'2014-09-24 09:40:06','2014-09-24 09:40:06','adds-community-store-resource',NULL),(129,'2014-09-24 09:40:06','2014-09-24 09:40:06','fix-mailer-config-help-text-typo',NULL),(130,'2014-09-24 09:40:06','2014-09-24 09:40:06','fix-typo-in-no-script-notices-snippet',NULL),(131,'2014-09-24 09:40:06','2014-09-24 09:40:06','add-top-seller-index',NULL),(132,'2014-09-24 09:40:06','2014-09-24 09:40:06','remove-similar-shown-listener',NULL),(133,'2014-09-24 09:40:06','2014-09-24 09:40:06','add-esd-payment-status-config',NULL),(134,'2014-09-24 09:40:06','2014-09-24 09:40:06','add-http-cache-cleanup-cronjob',NULL),(135,'2014-09-24 09:40:06','2014-09-24 09:40:06','add-main-image-listing-config',NULL),(136,'2014-09-24 09:40:06','2014-09-24 09:40:06','add-send-order-mail-config',NULL),(137,'2014-09-24 09:40:06','2014-09-24 09:40:06','remove-lastarticles-save-time',NULL),(138,'2014-09-24 09:40:06','2014-09-24 09:40:06','fix-typo-last-articles-headline',NULL),(139,'2014-09-24 09:40:06','2014-09-24 09:40:06','remove-plugin-form-from-config',NULL),(140,'2014-09-24 09:40:06','2014-09-24 09:40:06','fix-emotion-grid-id',NULL),(141,'2014-09-24 09:40:06','2014-09-24 09:40:06','add-force-canonical-http-config',NULL),(142,'2014-09-24 09:40:06','2014-09-24 09:40:06','add-listing-description-config',NULL),(143,'2014-09-24 09:40:06','2014-09-24 09:40:06','deactivate-router-to-lower-scope',NULL),(144,'2014-09-24 09:40:06','2014-09-24 09:40:06','add-require-phone-field-config',NULL),(145,'2014-09-24 09:40:06','2014-09-24 09:40:06','fix-default-incorrect-translation',NULL),(146,'2014-09-24 09:40:06','2014-09-24 09:40:06','http-cache-events',NULL),(147,'2014-09-24 09:40:06','2014-09-24 09:40:06','translations',NULL),(148,'2014-09-24 09:40:06','2014-09-24 09:40:06','payment-method-refactor',NULL),(149,'2014-09-24 09:40:06','2014-09-24 09:40:06','add-sepa-database-items',NULL),(150,'2014-09-24 09:40:06','2014-09-24 09:40:06','add-checkout-payment-info-change-config',NULL),(151,'2014-09-24 09:40:06','2014-09-24 09:40:06','add-missing-emotion-field-types',NULL),(200,'2014-09-24 09:40:06','2014-09-24 09:40:06','drop-unused-factory-table',NULL),(201,'2014-09-24 09:40:06','2014-09-24 09:40:06','add-supplier-seo',NULL),(202,'2014-09-24 09:40:06','2014-09-24 09:40:06','unregister-routerold-dead-event',NULL),(203,'2014-09-24 09:40:06','2014-09-24 09:40:06','add-http-cache-clear-event',NULL),(204,'2014-09-24 09:40:06','2014-09-24 09:40:06','add-supplier-seo-template',NULL),(205,'2014-09-24 09:40:06','2014-09-24 09:40:06','date-time-picker-label-update',NULL),(206,'2014-09-24 09:40:06','2014-09-24 09:40:07','change-image-attributes',NULL),(207,'2014-09-24 09:40:07','2014-09-24 09:40:07','product-feed-export',NULL),(208,'2014-09-24 09:40:07','2014-09-24 09:40:07','snippet-handling-refactoring',NULL),(209,'2014-09-24 09:40:07','2014-09-24 09:40:07','add-meta-title',NULL),(210,'2014-09-24 09:40:07','2014-09-24 09:40:07','add-meta-title-to-blog',NULL),(211,'2014-09-24 09:40:07','2014-09-24 09:40:07','add-always-secure',NULL),(212,'2014-09-24 09:40:07','2014-09-24 09:40:07','product-feed-export',NULL),(213,'2014-09-24 09:40:07','2014-09-24 09:40:07','update-payment-methods-plugin',NULL),(214,'2014-09-24 09:40:07','2014-09-24 09:40:07','add-debit-fields-to-payment-data',NULL),(215,'2014-09-24 09:40:07','2014-09-24 09:40:07','enlarge-zipcode-and-streetnumber-user',NULL),(216,'2014-09-24 09:40:07','2014-09-24 09:40:07','enlarge-zipcode-and-streetnumber-billing',NULL),(217,'2014-09-24 09:40:07','2014-09-24 09:40:07','enlarge-zipcode-and-streetnumber-billing_shipping',NULL),(218,'2014-09-24 09:40:07','2014-09-24 09:40:07','remove-old-debug-plugins',NULL),(219,'2014-09-24 09:40:07','2014-09-24 09:40:07','customer-payment-data-editing-in-be',NULL),(220,'2014-09-24 09:40:07','2014-09-24 09:40:07','add-payment-data-restriction',NULL),(221,'2014-09-24 09:40:07','2014-09-24 09:40:07','remove-log-plugin',NULL),(222,'2014-09-24 09:40:07','2014-09-24 09:40:07','add-logmail-config',NULL),(223,'2014-09-24 09:40:07','2014-09-24 09:40:07','add-statistic-config',NULL),(224,'2014-09-24 09:40:07','2014-09-24 09:40:07','add-statistic-impression-table',NULL),(225,'2014-09-24 09:40:07','2014-09-24 09:40:07','fix-emotion-required-fields',NULL),(226,'2014-09-24 09:40:07','2014-09-24 09:40:07','add-tellafriend-remove-option',NULL),(227,'2014-09-24 09:40:07','2014-09-24 09:40:07','fix-canonical-force-http-translation',NULL),(228,'2014-09-24 09:40:07','2014-09-24 09:40:07','add-canonical-force-http-description',NULL),(229,'2014-09-24 09:40:07','2014-09-24 09:40:07','fix-last-articles-plugin-config-form',NULL),(230,'2014-09-24 09:40:07','2014-09-24 09:40:07','fix-emotion-mandatory-fields',NULL),(231,'2014-09-24 09:40:07','2014-09-24 09:40:07','update-redirectDownload-config-var',NULL),(301,'2014-09-24 09:40:07','2014-09-24 09:40:07','drop-unused-cms-content-table',NULL),(302,'2014-09-24 09:40:07','2014-09-24 09:40:07','add-secure-cron',NULL),(303,'2014-09-24 09:40:07','2014-09-24 09:40:07','add-seo-categories',NULL),(304,'2014-09-24 09:40:07','2014-09-24 09:40:08','widget-system-refactoring',NULL),(305,'2014-09-24 09:40:08','2014-09-24 09:40:08','add-product-feed-caching',NULL),(306,'2014-09-24 09:40:08','2014-09-24 09:40:08','update-secure-cron-description',NULL),(307,'2014-09-24 09:40:08','2014-09-24 09:40:08','install-swag-update',NULL),(308,'2014-09-24 09:40:08','2014-09-24 09:40:08','increase-session-id-fields',NULL),(309,'2014-09-24 09:40:08','2014-09-24 09:40:08','merchant-email-translation',NULL),(310,'2014-09-24 09:40:08','2014-09-24 09:40:08','swagupdate-translations',NULL),(311,'2014-09-24 09:40:08','2014-09-24 09:40:08','subshop-maintenance-support',NULL),(312,'2014-09-24 09:40:08','2014-09-24 09:40:08','update-search-form-translation',NULL),(313,'2014-09-24 09:40:08','2014-09-24 09:40:08','add-order-detail-fields',NULL),(314,'2014-09-24 09:40:08','2014-09-24 09:40:08','add-order-detail-pack-unit',NULL),(315,'2014-09-24 09:40:08','2014-09-24 09:40:08','update-shipping-address-country-field-labels',NULL);
/*!40000 ALTER TABLE `s_schema_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_search_fields`
--

DROP TABLE IF EXISTS `s_search_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_search_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `relevance` int(11) NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tableID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field` (`field`,`tableID`),
  KEY `tableID` (`tableID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_search_fields`
--

LOCK TABLES `s_search_fields` WRITE;
/*!40000 ALTER TABLE `s_search_fields` DISABLE KEYS */;
INSERT INTO `s_search_fields` VALUES (1,'Kategorie-Keywords',10,'metakeywords',2),(2,'Kategorie-Überschrift',70,'description',2),(3,'Artikel-Name',400,'name',1),(4,'Artikel-Keywords',10,'keywords',1),(5,'Artikel-Bestellnummer',50,'ordernumber',4),(6,'Hersteller-Name',45,'name',3),(7,'Artikel-Name Übersetzung',50,'name',5),(8,'Artikel-Keywords Übersetzung',10,'keywords',5);
/*!40000 ALTER TABLE `s_search_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_search_index`
--

DROP TABLE IF EXISTS `s_search_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_search_index` (
  `keywordID` int(11) NOT NULL,
  `fieldID` int(11) NOT NULL,
  `elementID` int(11) NOT NULL,
  PRIMARY KEY (`keywordID`,`fieldID`,`elementID`),
  KEY `clean_up_index` (`keywordID`,`fieldID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_search_index`
--

LOCK TABLES `s_search_index` WRITE;
/*!40000 ALTER TABLE `s_search_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_search_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_search_keywords`
--

DROP TABLE IF EXISTS `s_search_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_search_keywords` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `soundex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyword` (`keyword`),
  KEY `soundex` (`soundex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_search_keywords`
--

LOCK TABLES `s_search_keywords` WRITE;
/*!40000 ALTER TABLE `s_search_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_search_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_search_tables`
--

DROP TABLE IF EXISTS `s_search_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_search_tables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `referenz_table` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `where` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_search_tables`
--

LOCK TABLES `s_search_tables` WRITE;
/*!40000 ALTER TABLE `s_search_tables` DISABLE KEYS */;
INSERT INTO `s_search_tables` VALUES (1,'s_articles',NULL,NULL,NULL),(2,'s_categories','s_articles_categories','categoryID',NULL),(3,'s_articles_supplier',NULL,'supplierID',NULL),(4,'s_articles_details','s_articles_details','id',NULL),(5,'s_articles_translations',NULL,NULL,NULL);
/*!40000 ALTER TABLE `s_search_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_statistics_article_impression`
--

DROP TABLE IF EXISTS `s_statistics_article_impression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_statistics_article_impression` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `articleId` int(11) unsigned NOT NULL,
  `shopId` int(11) unsigned NOT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `impressions` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `articleId_2` (`articleId`,`shopId`,`date`),
  KEY `articleId` (`articleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_statistics_article_impression`
--

LOCK TABLES `s_statistics_article_impression` WRITE;
/*!40000 ALTER TABLE `s_statistics_article_impression` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_statistics_article_impression` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_statistics_currentusers`
--

DROP TABLE IF EXISTS `s_statistics_currentusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_statistics_currentusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `remoteaddr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime DEFAULT NULL,
  `userID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_statistics_currentusers`
--

LOCK TABLES `s_statistics_currentusers` WRITE;
/*!40000 ALTER TABLE `s_statistics_currentusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_statistics_currentusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_statistics_pool`
--

DROP TABLE IF EXISTS `s_statistics_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_statistics_pool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `remoteaddr` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `datum` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_statistics_pool`
--

LOCK TABLES `s_statistics_pool` WRITE;
/*!40000 ALTER TABLE `s_statistics_pool` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_statistics_pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_statistics_referer`
--

DROP TABLE IF EXISTS `s_statistics_referer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_statistics_referer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datum` date NOT NULL DEFAULT '0000-00-00',
  `referer` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_statistics_referer`
--

LOCK TABLES `s_statistics_referer` WRITE;
/*!40000 ALTER TABLE `s_statistics_referer` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_statistics_referer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_statistics_search`
--

DROP TABLE IF EXISTS `s_statistics_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_statistics_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datum` datetime NOT NULL,
  `searchterm` varchar(255) CHARACTER SET latin1 NOT NULL,
  `results` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `searchterm` (`searchterm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_statistics_search`
--

LOCK TABLES `s_statistics_search` WRITE;
/*!40000 ALTER TABLE `s_statistics_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_statistics_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_statistics_visitors`
--

DROP TABLE IF EXISTS `s_statistics_visitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_statistics_visitors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shopID` int(11) NOT NULL,
  `datum` date NOT NULL DEFAULT '0000-00-00',
  `pageimpressions` int(11) NOT NULL DEFAULT '0',
  `uniquevisits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `datum` (`datum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_statistics_visitors`
--

LOCK TABLES `s_statistics_visitors` WRITE;
/*!40000 ALTER TABLE `s_statistics_visitors` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_statistics_visitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_user`
--

DROP TABLE IF EXISTS `s_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `encoder` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'md5',
  `email` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `accountmode` int(11) NOT NULL,
  `confirmationkey` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `paymentID` int(11) NOT NULL DEFAULT '0',
  `firstlogin` date NOT NULL DEFAULT '0000-00-00',
  `lastlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sessionID` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newsletter` int(1) NOT NULL DEFAULT '0',
  `validation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `affiliate` int(10) NOT NULL DEFAULT '0',
  `customergroup` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `paymentpreset` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `subshopID` int(11) NOT NULL,
  `referer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pricegroupID` int(11) unsigned DEFAULT NULL,
  `internalcomment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `failedlogins` int(11) NOT NULL,
  `lockeduntil` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `sessionID` (`sessionID`),
  KEY `firstlogin` (`firstlogin`),
  KEY `lastlogin` (`lastlogin`),
  KEY `pricegroupID` (`pricegroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_user`
--

LOCK TABLES `s_user` WRITE;
/*!40000 ALTER TABLE `s_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_user_attributes`
--

DROP TABLE IF EXISTS `s_user_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userID` (`userID`),
  CONSTRAINT `s_user_attributes_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `s_user` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_user_attributes`
--

LOCK TABLES `s_user_attributes` WRITE;
/*!40000 ALTER TABLE `s_user_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_user_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_user_billingaddress`
--

DROP TABLE IF EXISTS `s_user_billingaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user_billingaddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL DEFAULT '0',
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `salutation` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `customernumber` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `streetnumber` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `countryID` int(11) NOT NULL DEFAULT '0',
  `stateID` int(11) DEFAULT NULL,
  `ustid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userID` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_user_billingaddress`
--

LOCK TABLES `s_user_billingaddress` WRITE;
/*!40000 ALTER TABLE `s_user_billingaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_user_billingaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_user_billingaddress_attributes`
--

DROP TABLE IF EXISTS `s_user_billingaddress_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user_billingaddress_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `billingID` int(11) DEFAULT NULL,
  `text1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `billingID` (`billingID`),
  CONSTRAINT `s_user_billingaddress_attributes_ibfk_1` FOREIGN KEY (`billingID`) REFERENCES `s_user_billingaddress` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_user_billingaddress_attributes`
--

LOCK TABLES `s_user_billingaddress_attributes` WRITE;
/*!40000 ALTER TABLE `s_user_billingaddress_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_user_billingaddress_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_user_debit`
--

DROP TABLE IF EXISTS `s_user_debit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user_debit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL DEFAULT '0',
  `account` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `bankcode` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `bankname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bankholder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_user_debit`
--

LOCK TABLES `s_user_debit` WRITE;
/*!40000 ALTER TABLE `s_user_debit` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_user_debit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_user_shippingaddress`
--

DROP TABLE IF EXISTS `s_user_shippingaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user_shippingaddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL DEFAULT '0',
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `salutation` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `streetnumber` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `countryID` int(11) DEFAULT NULL,
  `stateID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userID` (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_user_shippingaddress`
--

LOCK TABLES `s_user_shippingaddress` WRITE;
/*!40000 ALTER TABLE `s_user_shippingaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_user_shippingaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `s_user_shippingaddress_attributes`
--

DROP TABLE IF EXISTS `s_user_shippingaddress_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `s_user_shippingaddress_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shippingID` int(11) DEFAULT NULL,
  `text1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shippingID` (`shippingID`),
  CONSTRAINT `s_user_shippingaddress_attributes_ibfk_1` FOREIGN KEY (`shippingID`) REFERENCES `s_user_shippingaddress` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `s_user_shippingaddress_attributes`
--

LOCK TABLES `s_user_shippingaddress_attributes` WRITE;
/*!40000 ALTER TABLE `s_user_shippingaddress_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `s_user_shippingaddress_attributes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-24 11:40:10
