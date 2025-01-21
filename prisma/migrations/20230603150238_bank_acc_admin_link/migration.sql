/*
  Warnings:

  - You are about to drop the column `mastermindBank` on the `bank_transfers` table. All the data in the column will be lost.
  - Added the required column `status` to the `admin_banks` table without a default value. This is not possible if the table is not empty.
  - Added the required column `adminBankId` to the `bank_transfers` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `admin_banks` ADD COLUMN `IBAN` VARCHAR(191) NULL,
    ADD COLUMN `status` BOOLEAN NOT NULL;

-- AlterTable
ALTER TABLE `bank_transfers` DROP COLUMN `mastermindBank`,
    ADD COLUMN `adminBankId` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `bank_transfers` ADD CONSTRAINT `bank_transfers_adminBankId_fkey` FOREIGN KEY (`adminBankId`) REFERENCES `admin_banks`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
