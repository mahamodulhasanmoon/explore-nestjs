-- DropForeignKey
ALTER TABLE `agencymarkups` DROP FOREIGN KEY `agencymarkups_airlineId_fkey`;

-- DropForeignKey
ALTER TABLE `gdsmarkups` DROP FOREIGN KEY `gdsmarkups_airlineId_fkey`;

-- AlterTable
ALTER TABLE `agencymarkups` MODIFY `airlineId` INTEGER NULL;

-- AlterTable
ALTER TABLE `gdsmarkups` MODIFY `airlineId` INTEGER NULL;

-- AddForeignKey
ALTER TABLE `gdsmarkups` ADD CONSTRAINT `gdsmarkups_airlineId_fkey` FOREIGN KEY (`airlineId`) REFERENCES `airlines`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `agencymarkups` ADD CONSTRAINT `agencymarkups_airlineId_fkey` FOREIGN KEY (`airlineId`) REFERENCES `airlines`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
