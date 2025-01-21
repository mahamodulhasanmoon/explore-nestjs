/*
  Warnings:

  - You are about to drop the column `extraInfo` on the `reservations` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `reservations` DROP COLUMN `extraInfo`,
    ADD COLUMN `allPNR` JSON NULL,
    ADD COLUMN `fullInfo` JSON NULL,
    ADD COLUMN `pricing` JSON NULL,
    MODIFY `way` INTEGER NULL,
    MODIFY `destination` VARCHAR(191) NULL,
    MODIFY `journeyDate` DATETIME(3) NULL,
    MODIFY `origin` VARCHAR(191) NULL;
