/*
  Warnings:

  - The values [S1_AE,US_BA_BD,US_BA_AE] on the enum `reservations_GDS` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterTable
ALTER TABLE `reservations` MODIFY `GDS` ENUM('Galileo', 'Sabre', 'Riya', 'S1', 'TP_AE', 'S2', 'S3', 'S12', 'BS_BD', 'BS_AE') NOT NULL;
