/*
  Warnings:

  - Made the column `agentId` on table `journals` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE `journals` DROP FOREIGN KEY `journals_agentId_fkey`;

-- AlterTable
ALTER TABLE `journals` ADD COLUMN `attachment` VARCHAR(191) NULL,
    ADD COLUMN `description` VARCHAR(191) NULL,
    MODIFY `type` ENUM('CASH_DEPOSIT', 'BANK_DEPOSIT', 'BANK_TRANSFER', 'PURCHASE', 'MANUAL_TICKET', 'DATE_CHANGED', 'REFUNDED') NOT NULL,
    MODIFY `agentId` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `journals` ADD CONSTRAINT `journals_agentId_fkey` FOREIGN KEY (`agentId`) REFERENCES `companies`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
