/*
  Warnings:

  - Made the column `rate` on table `reservations` required. This step will fail if there are existing NULL values in that column.
  - Made the column `tax` on table `reservations` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `reservations` MODIFY `rate` DECIMAL(65, 30) NOT NULL,
    MODIFY `tax` DECIMAL(65, 30) NOT NULL;
