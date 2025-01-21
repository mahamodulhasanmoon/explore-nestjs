/*
  Warnings:

  - You are about to drop the column `flightInfo` on the `reservations` table. All the data in the column will be lost.
  - You are about to drop the column `fullInfo` on the `reservations` table. All the data in the column will be lost.
  - You are about to drop the column `pricing` on the `reservations` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `reservations` DROP COLUMN `flightInfo`,
    DROP COLUMN `fullInfo`,
    DROP COLUMN `pricing`,
    ADD COLUMN `rate` DECIMAL(65, 30) NULL,
    ADD COLUMN `tax` DECIMAL(65, 30) NULL;
