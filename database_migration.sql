-- Database migration script to add application_category column
-- Run this script to update your existing database

-- Add the new application_category column to the nic_applications table
ALTER TABLE nic_applications ADD COLUMN application_category VARCHAR(50);

-- Update existing records to have a default category
UPDATE nic_applications SET application_category = 'New' WHERE application_category IS NULL;

-- Optional: Add a comment to document the column
COMMENT ON COLUMN nic_applications.application_category IS 'Application category: New, Renewal, or Replacement';
