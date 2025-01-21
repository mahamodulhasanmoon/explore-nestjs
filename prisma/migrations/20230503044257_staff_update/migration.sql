-- AlterTable
ALTER TABLE `staffs` ADD COLUMN `address` VARCHAR(191) NULL,
    ADD COLUMN `gender` ENUM('Male', 'Female', 'Other') NULL;
