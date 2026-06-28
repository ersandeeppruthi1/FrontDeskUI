-- Solution Package Import History Table
-- This table tracks all package imports for audit and re-download purposes

CREATE TABLE `solutionpackageimport` (
  `id` varchar(36) NOT NULL,
  `packagename` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `imported` int DEFAULT 0,
  `updated` int DEFAULT 0,
  `errors` int DEFAULT 0,
  `packagedata` longtext,
  `importedon` datetime DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT 1,
  `createdon` datetime DEFAULT CURRENT_TIMESTAMP,
  `modifiedon` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
