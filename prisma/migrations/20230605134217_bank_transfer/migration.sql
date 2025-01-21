/*
  Warnings:

  - You are about to drop the column `bankAccountId` on the `bank_transfers` table. All the data in the column will be lost.
  - Added the required column `bankId` to the `bank_transfers` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `bank_transfers` DROP FOREIGN KEY `bank_transfers_bankAccountId_fkey`;

-- AlterTable
ALTER TABLE `bank_transfers` DROP COLUMN `bankAccountId`,
    ADD COLUMN `bankId` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `bank_transfers` ADD CONSTRAINT `bank_transfers_bankId_fkey` FOREIGN KEY (`bankId`) REFERENCES `bank_accounts`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
