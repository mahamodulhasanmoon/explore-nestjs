/*
  Warnings:

  - The values [FRIDGED] on the enum `companies_balanceStatus` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterTable
ALTER TABLE `companies` MODIFY `balanceStatus` ENUM('FREEZE', 'ACTIVE') NOT NULL DEFAULT 'ACTIVE';
