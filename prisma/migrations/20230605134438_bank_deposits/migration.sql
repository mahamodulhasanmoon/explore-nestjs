/*
  Warnings:

  - You are about to drop the column `mastermindBank` on the `bank_deposits` table. All the data in the column will be lost.
  - Added the required column `adminBankId` to the `bank_deposits` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `bank_deposits` DROP COLUMN `mastermindBank`,
    ADD COLUMN `adminBankId` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `bank_deposits` ADD CONSTRAINT `bank_deposits_adminBankId_fkey` FOREIGN KEY (`adminBankId`) REFERENCES `admin_banks`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
