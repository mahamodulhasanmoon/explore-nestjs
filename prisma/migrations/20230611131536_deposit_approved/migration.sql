/*
  Warnings:

  - The values [ACCEPTED] on the enum `bank_transfers_status` will be removed. If these variants are still used in the database, this will fail.
  - The values [ACCEPTED] on the enum `bank_transfers_status` will be removed. If these variants are still used in the database, this will fail.
  - The values [ACCEPTED] on the enum `bank_transfers_status` will be removed. If these variants are still used in the database, this will fail.
  - The values [ACCEPTED] on the enum `bank_transfers_status` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterTable
ALTER TABLE `bank_deposits` MODIFY `status` ENUM('PENDING', 'APPROVED', 'REJECTED') NOT NULL DEFAULT 'PENDING';

-- AlterTable
ALTER TABLE `bank_transfers` MODIFY `status` ENUM('PENDING', 'APPROVED', 'REJECTED') NOT NULL DEFAULT 'PENDING';

-- AlterTable
ALTER TABLE `cash_deposits` MODIFY `status` ENUM('PENDING', 'APPROVED', 'REJECTED') NOT NULL DEFAULT 'PENDING';

-- AlterTable
ALTER TABLE `mobile_banking_deposits` MODIFY `status` ENUM('PENDING', 'APPROVED', 'REJECTED') NOT NULL DEFAULT 'PENDING';
