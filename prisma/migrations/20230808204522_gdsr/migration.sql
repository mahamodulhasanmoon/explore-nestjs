/*
  Warnings:

  - The values [Travelport] on the enum `reservations_GDS` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterTable
ALTER TABLE `reservations` MODIFY `GDS` ENUM('Galileo', 'Riya', 'S1', 'S2') NOT NULL;
