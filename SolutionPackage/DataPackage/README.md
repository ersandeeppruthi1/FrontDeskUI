# Data Package Management System

## Overview
Complete data migration system for moving entity records between Dev → SIT → Production environments.

## Features

### 1. Data Package Creation
- **Entity Selection**: Multi-select dropdown with search
- **Version Control**: Auto-increment version on save
- **Entities Count**: See number of entities in each package

### 2. Data Export
- Exports all records from selected entities
- JSON format with complete record data
- Filename: `DataPackage_{name}_{version}.json`
- Progress indicator during export
- Export includes:
  - Package metadata (name, version, description)
  - Entity definitions
  - All record data for each entity
  - Record counts per entity
  - Export timestamp

### 3. Data Import
- Upload JSON data package
- Shows confirmation with entity/record counts
- Progress overlay during import
- Auto-detects existing records by ID
- Updates existing or inserts new records
- Import summary shows:
  - New records imported
  - Existing records updated
  - Errors encountered

### 4. Import History
- **Automatic Tracking**: Every data import logged to database
- **History Grid** displays:
  - Package name and version
  - Import status (Success/Partial)
  - Count of imported/updated/errors
  - Import timestamp
- **Download Button**: Re-download any previously imported data package
- **Complete Audit Trail**: Track all data migrations

## Database Tables

### datapackage
```sql
- id (varchar 36)
- name (varchar 255)
- version (varchar 255)
- description (varchar 500)
- entities (text - JSON array of entity IDs)
- isactive (tinyint)
- createdon (datetime)
- modifiedon (datetime)
```

### datapackageimport
```sql
- id (varchar 36)
- packagename (varchar 255)
- version (varchar 255)
- description (varchar 500)
- imported (int - count of new records)
- updated (int - count of updated records)
- errors (int - count of errors)
- packagedata (longtext - full JSON for re-download)
- importedon (datetime)
- isactive (tinyint)
- createdon (datetime)
- modifiedon (datetime)
```

## Data Migration Workflow

### Dev Environment (Export)
1. Open Data Package page
2. Click **New** to create package
3. Enter name (e.g., "Master Data"), version
4. Select entities (e.g., entities, webresource, businessunit)
5. Click **Save** (version auto-increments)
6. Select package and click **Export Data**
7. System fetches all records from selected entities
8. JSON file downloads with all data

### SIT Environment (Import)
1. Open Data Package page
2. Click **Import Data**
3. Select exported JSON file
4. Confirm import (shows entity count and record count)
5. System imports/updates all records
6. Import logged to history
7. Data is now available in SIT

### View Import History
1. Click **Import History** button
2. Grid shows all past data imports
3. Click **Download** to re-download data package
4. Track data migration timeline

## Toolbar Buttons
- **New**: Create new data package
- **Edit**: Edit existing package (modify entity selection)
- **Delete**: Delete data package definition
- **Export Data**: Download all data as JSON
- **Import Data**: Upload and import JSON data
- **Import History**: View all import logs with download

## Sample Export Format
```json
{
  "packageName": "Master Data",
  "version": "1.0.1",
  "description": "Core master data for SIT",
  "exportedOn": "2024-01-15T10:30:00Z",
  "entities": {
	"entities": {
	  "entityId": "abc-123",
	  "entityName": "entities",
	  "displayName": "Entities",
	  "recordCount": 25,
	  "records": [
		{ "id": "...", "name": "...", ... },
		...
	  ]
	},
	"webresource": {
	  "entityId": "xyz-456",
	  "entityName": "webresource",
	  "displayName": "Web Resources",
	  "recordCount": 15,
	  "records": [...]
	}
  }
}
```

## Use Cases

### Master Data Migration
- Export entities, businessunit, systemuser
- Import to new environment
- Reference data ready to use

### Configuration Data
- Export application settings
- Deploy to multiple environments
- Consistent configuration

### Seed Data
- Export sample/demo data
- Import for testing
- Quick environment setup

### Data Backup
- Export critical data packages
- Store as versioned backups
- Restore when needed

## Benefits
✅ Complete data migration capability  
✅ Version-controlled data packages  
✅ Full audit trail of imports  
✅ Re-download any previous import  
✅ Track data deployment history  
✅ Progress indicators for large datasets  
✅ Automatic record matching (update vs insert)  
✅ Error tracking and reporting  
✅ Multiple entity support in single package  
✅ Safe migration between environments  

## Files
- `SolutionPackage\DataPackage\DataPackageList.html`
- `SolutionPackage\SQL\datapackage_tables.sql`

## Setup
1. Run SQL script to create tables
2. Open DataPackageList.html in browser
3. Create data packages and start migrating!
