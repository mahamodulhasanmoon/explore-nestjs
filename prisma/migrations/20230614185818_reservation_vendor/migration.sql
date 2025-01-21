-- AlterTable
ALTER TABLE `reservations` ADD COLUMN `vendor` VARCHAR(191) NULL,
    ADD COLUMN `vendorAmount` DECIMAL(65, 30) NULL;
