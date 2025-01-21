/*
  Warnings:

  - You are about to drop the column `network` on the `reservations` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `reservations` DROP COLUMN `network`,
    ADD COLUMN `gds` ENUM('Galileo', 'Travelport', 'Other') NULL;
