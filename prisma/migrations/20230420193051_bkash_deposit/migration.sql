-- CreateTable
CREATE TABLE `bkash_deposits` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `companyId` INTEGER NOT NULL,
    `staffId` INTEGER NOT NULL,
    `trxID` VARCHAR(191) NOT NULL,
    `amount` DECIMAL(65, 30) NOT NULL,
    `attachment` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `bkash_deposits_trxID_key`(`trxID`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
