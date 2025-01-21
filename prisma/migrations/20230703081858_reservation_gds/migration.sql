/*
  Warnings:

  - You are about to drop the column `gds` on the `reservations` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `reservations` DROP COLUMN `gds`,
    ADD COLUMN `GDS` ENUM('Galileo', 'Travelport', 'Other') NULL;
