/*
  Warnings:

  - You are about to drop the `bkash_deposits` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `bkash_deposits`;

-- CreateTable
CREATE TABLE `mobile_banking_deposits` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` ENUM('bKash', 'Nagad') NOT NULL,
    `companyId` INTEGER NOT NULL,
    `staffId` INTEGER NOT NULL,
    `trxID` VARCHAR(191) NOT NULL,
    `amount` DECIMAL(65, 30) NOT NULL,
    `attachment` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `mobile_banking_deposits_trxID_key`(`trxID`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `mobile_banking_deposits` ADD CONSTRAINT `mobile_banking_deposits_staffId_fkey` FOREIGN KEY (`staffId`) REFERENCES `staffs`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
