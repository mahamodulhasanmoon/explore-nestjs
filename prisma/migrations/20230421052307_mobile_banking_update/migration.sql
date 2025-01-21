/*
  Warnings:

  - You are about to drop the column `companyId` on the `mobile_banking_deposits` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `mobile_banking_deposits` DROP COLUMN `companyId`,
    ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `status` ENUM('PENDING', 'ACCEPTED', 'REJECTED') NOT NULL DEFAULT 'PENDING',
    ADD COLUMN `updatedAt` DATETIME(3) NULL;
