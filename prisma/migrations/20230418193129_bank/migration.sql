-- AlterTable
ALTER TABLE `staffs` MODIFY `password` VARCHAR(191) NULL;

-- CreateTable
CREATE TABLE `BankAccount` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `accountHolderName` VARCHAR(191) NOT NULL,
    `bankName` VARCHAR(191) NOT NULL,
    `accountNumber` VARCHAR(191) NOT NULL,
    `branchName` VARCHAR(191) NOT NULL,
    `address` VARCHAR(191) NOT NULL,
    `routingNumber` VARCHAR(191) NULL,
    `swiftCode` VARCHAR(191) NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NULL,

    UNIQUE INDEX `BankAccount_routingNumber_key`(`routingNumber`),
    UNIQUE INDEX `BankAccount_swiftCode_key`(`swiftCode`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
