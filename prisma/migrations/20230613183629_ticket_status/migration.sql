/*
  Warnings:

  - The values [PROCESSING] on the enum `reservations_status` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterTable
ALTER TABLE `reservations` MODIFY `status` ENUM('HOLD', 'ISSUE_REQUESTED', 'EXPIRED', 'TICKETED', 'CANCELLED', 'REFUNDED', 'VOIDED') NOT NULL DEFAULT 'HOLD';
