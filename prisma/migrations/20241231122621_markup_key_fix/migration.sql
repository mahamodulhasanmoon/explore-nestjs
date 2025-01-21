/*
  Warnings:

  - Made the column `agencyId` on table `agencymarkups` required. This step will fail if there are existing NULL values in that column.
  - Made the column `gdsId` on table `gdsmarkups` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE `agencymarkups` DROP FOREIGN KEY `agencymarkups_agencyId_fkey`;

-- DropForeignKey
ALTER TABLE `gdsmarkups` DROP FOREIGN KEY `gdsmarkups_gdsId_fkey`;

-- AlterTable
ALTER TABLE `agencymarkups` MODIFY `agencyId` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `gdsmarkups` MODIFY `gdsId` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `gdsmarkups` ADD CONSTRAINT `gdsmarkups_gdsId_fkey` FOREIGN KEY (`gdsId`) REFERENCES `gds`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `agencymarkups` ADD CONSTRAINT `agencymarkups_agencyId_fkey` FOREIGN KEY (`agencyId`) REFERENCES `companies`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
