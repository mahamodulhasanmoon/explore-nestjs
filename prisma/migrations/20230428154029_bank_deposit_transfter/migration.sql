/*
  Warnings:

  - You are about to alter the column `amount` on the `mobile_banking_deposits` table. The data in that column could be lost. The data in that column will be cast from `Decimal(9,2)` to `Decimal(65,30)`.
  - You are about to alter the column `fee` on the `mobile_banking_deposits` table. The data in that column could be lost. The data in that column will be cast from `Decimal(3,2)` to `Decimal(65,30)`.

*/
-- AlterTable
ALTER TABLE `mobile_banking_deposits` MODIFY `amount` DECIMAL(65, 30) NOT NULL,
    MODIFY `fee` DECIMAL(65, 30) NOT NULL;

-- CreateTable
CREATE TABLE `bank_deposits` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `date` DATETIME(3) NOT NULL,
    `staffId` INTEGER NOT NULL,
    `mastermindBank` VARCHAR(191) NOT NULL,
    `reference` VARCHAR(191) NOT NULL,
    `amount` DECIMAL(65, 30) NOT NULL,
    `attachment` VARCHAR(191) NOT NULL,
    `status` ENUM('PENDING', 'ACCEPTED', 'REJECTED') NOT NULL DEFAULT 'PENDING',
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NULL,

    UNIQUE INDEX `bank_deposits_reference_key`(`reference`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `bank_transfers` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `date` DATETIME(3) NOT NULL,
    `staffId` INTEGER NOT NULL,
    `mastermindBank` VARCHAR(191) NOT NULL,
    `bankAccountId` INTEGER NOT NULL,
    `reference` VARCHAR(191) NOT NULL,
    `amount` DECIMAL(65, 30) NOT NULL,
    `attachment` VARCHAR(191) NOT NULL,
    `status` ENUM('PENDING', 'ACCEPTED', 'REJECTED') NOT NULL DEFAULT 'PENDING',
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NULL,

    UNIQUE INDEX `bank_transfers_reference_key`(`reference`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `bank_deposits` ADD CONSTRAINT `bank_deposits_staffId_fkey` FOREIGN KEY (`staffId`) REFERENCES `staffs`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `bank_transfers` ADD CONSTRAINT `bank_transfers_staffId_fkey` FOREIGN KEY (`staffId`) REFERENCES `staffs`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `bank_transfers` ADD CONSTRAINT `bank_transfers_bankAccountId_fkey` FOREIGN KEY (`bankAccountId`) REFERENCES `bank_accounts`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
