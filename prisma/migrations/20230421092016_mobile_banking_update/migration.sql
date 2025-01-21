/*
  Warnings:

  - Added the required column `date` to the `mobile_banking_deposits` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `mobile_banking_deposits` ADD COLUMN `date` DATETIME(3) NOT NULL;
