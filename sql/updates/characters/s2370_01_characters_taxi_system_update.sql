ALTER TABLE character_db_version CHANGE COLUMN required_s2359_01_characters_account_instances_entered required_s2370_01_characters_taxi_system_update bit;

-- Convert old data into new format in special failsafe mode for succesful loading
UPDATE `characters` SET `taxi_path` = SUBSTRING_INDEX(`taxi_path`, ' ', 1) WHERE LENGTH(`taxi_path`) > 1;
