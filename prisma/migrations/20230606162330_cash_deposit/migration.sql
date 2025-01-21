-- CreateTable
CREATE TABLE `cash_deposits` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `date` DATETIME(3) NOT NULL,
    `staffId` INTEGER NOT NULL,
    `counterId` INTEGER NOT NULL,
    `reference` VARCHAR(191) NOT NULL,
    `amount` DECIMAL(65, 30) NOT NULL,
    `attachment` VARCHAR(191) NOT NULL,
    `status` ENUM('PENDING', 'ACCEPTED', 'REJECTED') NOT NULL DEFAULT 'PENDING',
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NULL,

    UNIQUE INDEX `cash_deposits_reference_key`(`reference`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `cash_deposits` ADD CONSTRAINT `cash_deposits_staffId_fkey` FOREIGN KEY (`staffId`) REFERENCES `staffs`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `cash_deposits` ADD CONSTRAINT `cash_deposits_counterId_fkey` FOREIGN KEY (`counterId`) REFERENCES `admin_banks`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
