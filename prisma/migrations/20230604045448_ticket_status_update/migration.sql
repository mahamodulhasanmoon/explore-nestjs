/*
  Warnings:

  - The values [VOID] on the enum `reservations_status` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterTable
ALTER TABLE `reservations` MODIFY `status` ENUM('HOLD', 'PROCESSING', 'EXPIRED', 'TICKETED', 'CANCELLED', 'REFUNDED', 'VOIDED') NOT NULL DEFAULT 'HOLD';
