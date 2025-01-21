/*
  Warnings:

  - You are about to drop the column `invoicePrice` on the `reservations` table. All the data in the column will be lost.
  - You are about to drop the column `journeyDate` on the `reservations` table. All the data in the column will be lost.
  - You are about to drop the column `sellPrice` on the `reservations` table. All the data in the column will be lost.
  - You are about to drop the column `ticketNo` on the `reservations` table. All the data in the column will be lost.
  - Added the required column `bookingTime` to the `reservations` table without a default value. This is not possible if the table is not empty.
  - Made the column `timeLimit` on table `reservations` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `reservations` DROP COLUMN `invoicePrice`,
    DROP COLUMN `journeyDate`,
    DROP COLUMN `sellPrice`,
    DROP COLUMN `ticketNo`,
    ADD COLUMN `bookingTime` DATETIME(3) NOT NULL,
    MODIFY `timeLimit` DATETIME(3) NOT NULL;
