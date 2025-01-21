-- CreateTable
CREATE TABLE `currency_rates` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `from` ENUM('BDT', 'AED', 'INR') NOT NULL,
    `to` ENUM('BDT', 'AED', 'INR') NOT NULL,
    `rate` DECIMAL(65, 30) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NULL,

    UNIQUE INDEX `currency_rates_from_to_key`(`from`, `to`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `currency_rates_history` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `currencyRateId` INTEGER NOT NULL,
    `rate` DECIMAL(65, 30) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `currency_rates_history` ADD CONSTRAINT `currency_rates_history_currencyRateId_fkey` FOREIGN KEY (`currencyRateId`) REFERENCES `currency_rates`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
