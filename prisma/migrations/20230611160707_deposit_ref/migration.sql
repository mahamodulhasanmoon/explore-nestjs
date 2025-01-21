/*
  Warnings:

  - You are about to drop the `Journal` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `Journal` DROP FOREIGN KEY `Journal_staffId_fkey`;

-- DropTable
DROP TABLE `Journal`;

-- CreateTable
CREATE TABLE `journals` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `staffId` INTEGER NOT NULL,
    `type` ENUM('CASH_DEPOSIT', 'BANK_DEPOSIT', 'BANK_TRANSFER', 'PURCHASE', 'REFUNDED') NOT NULL,
    `amount` DECIMAL(65, 30) NOT NULL,
    `info` JSON NULL,
    `cashDepositId` INTEGER NULL,
    `bankDepositId` INTEGER NULL,
    `bankTransferId` INTEGER NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `journals` ADD CONSTRAINT `journals_staffId_fkey` FOREIGN KEY (`staffId`) REFERENCES `staffs`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `journals` ADD CONSTRAINT `journals_cashDepositId_fkey` FOREIGN KEY (`cashDepositId`) REFERENCES `cash_deposits`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `journals` ADD CONSTRAINT `journals_bankDepositId_fkey` FOREIGN KEY (`bankDepositId`) REFERENCES `bank_deposits`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `journals` ADD CONSTRAINT `journals_bankTransferId_fkey` FOREIGN KEY (`bankTransferId`) REFERENCES `bank_transfers`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
