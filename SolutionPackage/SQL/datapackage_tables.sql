-- Data Package Table
-- Stores data package definitions

CREATE TABLE `datapackage` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `entities` text,
  `isactive` tinyint(1) DEFAULT 1,
  `createdon` datetime DEFAULT CURRENT_TIMESTAMP,
  `modifiedon` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- Data Package Import History Table
-- Tracks all data imports for audit and re-download

CREATE TABLE `datapackageimport` (
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
