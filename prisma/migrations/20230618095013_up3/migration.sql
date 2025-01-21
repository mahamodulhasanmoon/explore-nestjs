-- CreateTable
CREATE TABLE `gds` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `gds_name_key`(`name`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `gdsmarkups` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `gdsId` INTEGER NOT NULL,
    `airlineId` INTEGER NOT NULL,
    `type` ENUM('AMOUNT', 'PERCENT') NOT NULL,
    `value` DECIMAL(65, 30) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `agencymarkups` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `agencyId` INTEGER NOT NULL,
    `type` VARCHAR(191) NOT NULL,
    `value` DECIMAL(65, 30) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `gdsmarkups` ADD CONSTRAINT `gdsmarkups_gdsId_fkey` FOREIGN KEY (`gdsId`) REFERENCES `gds`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `gdsmarkups` ADD CONSTRAINT `gdsmarkups_airlineId_fkey` FOREIGN KEY (`airlineId`) REFERENCES `airlines`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `agencymarkups` ADD CONSTRAINT `agencymarkups_agencyId_fkey` FOREIGN KEY (`agencyId`) REFERENCES `companies`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
