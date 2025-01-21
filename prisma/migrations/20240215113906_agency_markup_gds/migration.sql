-- AlterTable
ALTER TABLE `agencymarkups` ADD COLUMN `gdsId` INTEGER NULL;

-- AddForeignKey
ALTER TABLE `agencymarkups` ADD CONSTRAINT `agencymarkups_gdsId_fkey` FOREIGN KEY (`gdsId`) REFERENCES `gds`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
