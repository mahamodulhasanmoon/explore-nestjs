/*
  Warnings:

  - The values [PURCHASE] on the enum `journals_type` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterTable
ALTER TABLE `journals` MODIFY `type` ENUM('CASH_DEPOSIT', 'BANK_DEPOSIT', 'BANK_TRANSFER', 'TICKET', 'MANUAL_TICKET', 'DATE_CHANGED', 'REFUNDED') NOT NULL;
