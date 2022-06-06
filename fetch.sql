CREATE DATABASE  IF NOT EXISTS `fetch` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fetch`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: fetch
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `_id` text,
  `barcode` bigint DEFAULT NULL,
  `category` text,
  `categoryCode` text,
  `cpg` text,
  `name` text,
  `topBrand` double DEFAULT NULL,
  `brandCode` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `receiptitems`
--

DROP TABLE IF EXISTS `receiptitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receiptitems` (
  `barcode` text,
  `description` text,
  `finalPrice` text,
  `itemPrice` text,
  `needsFetchReview` text,
  `partnerItemId` int DEFAULT NULL,
  `preventTargetGapPoints` text,
  `quantityPurchased` text,
  `userFlaggedBarcode` text,
  `userFlaggedNewItem` text,
  `userFlaggedPrice` text,
  `userFlaggedQuantity` text,
  `receiptID` text,
  `needsFetchReviewReason` text,
  `pointsNotAwardedReason` text,
  `pointsPayerId` text,
  `rewardsGroup` text,
  `rewardsProductPartnerId` text,
  `userFlaggedDescription` text,
  `originalMetaBriteBarcode` text,
  `originalMetaBriteDescription` text,
  `brandCode` text,
  `competitorRewardsGroup` text,
  `discountedItemPrice` text,
  `originalReceiptItemText` text,
  `itemNumber` text,
  `originalMetaBriteQuantityPurchased` text,
  `pointsEarned` text,
  `targetPrice` text,
  `competitiveProduct` text,
  `originalFinalPrice` text,
  `originalMetaBriteItemPrice` text,
  `deleted` text,
  `priceAfterCoupon` text,
  `metabriteCampaignId` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `receipts`
--

DROP TABLE IF EXISTS `receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipts` (
  `_id` text,
  `bonusPointsEarned` double DEFAULT NULL,
  `bonusPointsEarnedReason` text,
  `createDate` text,
  `dateScanned` text,
  `finishedDate` text,
  `modifyDate` text,
  `pointsAwardedDate` text,
  `pointsEarned` double DEFAULT NULL,
  `purchaseDate` text,
  `purchasedItemCount` double DEFAULT NULL,
  `rewardsReceiptItemList` text,
  `rewardsReceiptStatus` text,
  `totalSpent` double DEFAULT NULL,
  `userId` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `_id` text,
  `active` text,
  `createdDate` text,
  `lastLogin` text,
  `role` text,
  `signUpSource` text,
  `state` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-05 23:04:31
