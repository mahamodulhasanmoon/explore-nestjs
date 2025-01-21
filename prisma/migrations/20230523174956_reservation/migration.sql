/*
  Warnings:

  - You are about to drop the column `from` on the `reservations` table. All the data in the column will be lost.
  - You are about to drop the column `to` on the `reservations` table. All the data in the column will be lost.
  - Added the required column `Carrier` to the `reservations` table without a default value. This is not possible if the table is not empty.
  - Added the required column `PNR` to the `reservations` table without a default value. This is not possible if the table is not empty.
  - Added the required column `bookingId` to the `reservations` table without a default value. This is not possible if the table is not empty.
  - Added the required column `destination` to the `reservations` table without a default value. This is not possible if the table is not empty.
  - Added the required column `email` to the `reservations` table without a default value. This is not possible if the table is not empty.
  - Added the required column `extraInfo` to the `reservations` table without a default value. This is not possible if the table is not empty.
  - Added the required column `invoicePrice` to the `reservations` table without a default value. This is not possible if the table is not empty.
  - Added the required column `journeyDate` to the `reservations` table without a default value. This is not possible if the table is not empty.
  - Added the required column `name` to the `reservations` table without a default value. This is not possible if the table is not empty.
  - Added the required column `network` to the `reservations` table without a default value. This is not possible if the table is not empty.
  - Added the required column `origin` to the `reservations` table without a default value. This is not possible if the table is not empty.
  - Added the required column `phone` to the `reservations` table without a default value. This is not possible if the table is not empty.
  - Added the required column `sellPrice` to the `reservations` table without a default value. This is not possible if the table is not empty.
  - Added the required column `staffId` to the `reservations` table without a default value. This is not possible if the table is not empty.
  - Added the required column `status` to the `reservations` table without a default value. This is not possible if the table is not empty.
  - Added the required column `ticketNo` to the `reservations` table without a default value. This is not possible if the table is not empty.
  - Added the required column `timeLimit` to the `reservations` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `reservations` DROP COLUMN `from`,
    DROP COLUMN `to`,
    ADD COLUMN `Carrier` VARCHAR(191) NOT NULL,
    ADD COLUMN `PNR` VARCHAR(191) NOT NULL,
    ADD COLUMN `bookingId` VARCHAR(191) NOT NULL,
    ADD COLUMN `destination` VARCHAR(191) NOT NULL,
    ADD COLUMN `email` VARCHAR(191) NOT NULL,
    ADD COLUMN `extraInfo` JSON NOT NULL,
    ADD COLUMN `invoicePrice` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `journeyDate` DATETIME(3) NOT NULL,
    ADD COLUMN `name` VARCHAR(191) NOT NULL,
    ADD COLUMN `network` VARCHAR(191) NOT NULL,
    ADD COLUMN `origin` VARCHAR(191) NOT NULL,
    ADD COLUMN `phone` VARCHAR(191) NOT NULL,
    ADD COLUMN `sellPrice` DECIMAL(65, 30) NOT NULL,
    ADD COLUMN `staffId` INTEGER NOT NULL,
    ADD COLUMN `status` VARCHAR(191) NOT NULL,
    ADD COLUMN `ticketNo` VARCHAR(191) NOT NULL,
    ADD COLUMN `timeLimit` DATETIME(3) NOT NULL;

-- AddForeignKey
ALTER TABLE `reservations` ADD CONSTRAINT `reservations_staffId_fkey` FOREIGN KEY (`staffId`) REFERENCES `staffs`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
