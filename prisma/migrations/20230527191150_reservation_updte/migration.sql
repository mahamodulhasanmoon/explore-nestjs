/*
  Warnings:

  - You are about to drop the column `bookingId` on the `reservations` table. All the data in the column will be lost.
  - You are about to drop the column `destination` on the `reservations` table. All the data in the column will be lost.
  - You are about to drop the column `origin` on the `reservations` table. All the data in the column will be lost.
  - Made the column `way` on table `reservations` required. This step will fail if there are existing NULL values in that column.
  - Made the column `network` on table `reservations` required. This step will fail if there are existing NULL values in that column.
  - Made the column `status` on table `reservations` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `reservations` DROP COLUMN `bookingId`,
    DROP COLUMN `destination`,
    DROP COLUMN `origin`,
    MODIFY `way` INTEGER NOT NULL,
    MODIFY `network` VARCHAR(191) NOT NULL,
    MODIFY `status` ENUM('HOLD', 'PROCESSING', 'TICKETED') NOT NULL DEFAULT 'HOLD';
