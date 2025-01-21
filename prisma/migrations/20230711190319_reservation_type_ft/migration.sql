-- AlterTable
ALTER TABLE `reservations` ADD COLUMN `flightTime` DATETIME(3) NULL,
    ADD COLUMN `type` VARCHAR(191) NULL;
