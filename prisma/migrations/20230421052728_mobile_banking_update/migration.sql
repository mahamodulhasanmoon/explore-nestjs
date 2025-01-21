/*
  Warnings:

  - Added the required column `fee` to the `mobile_banking_deposits` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `mobile_banking_deposits` ADD COLUMN `fee` DECIMAL(65, 30) NOT NULL;
