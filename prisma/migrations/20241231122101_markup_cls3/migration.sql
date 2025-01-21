/*
  Warnings:

  - A unique constraint covering the columns `[agencyId,gds,airlineId,cls]` on the table `agencymarkups` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[gdsId,airlineId,cls,flightType,from,to]` on the table `gdsmarkups` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE `agencymarkups` DROP FOREIGN KEY `agencymarkups_agencyId_fkey`;

-- DropForeignKey
ALTER TABLE `gdsmarkups` DROP FOREIGN KEY `gdsmarkups_gdsId_fkey`;

-- DropIndex
DROP INDEX `agencymarkups_agencyId_gds_airlineId_key` ON `agencymarkups`;

-- DropIndex
DROP INDEX `gdsmarkups_gdsId_airlineId_flightType_from_to_key` ON `gdsmarkups`;

-- AlterTable
ALTER TABLE `agencymarkups` MODIFY `agencyId` INTEGER NULL;

-- AlterTable
ALTER TABLE `gdsmarkups` MODIFY `gdsId` INTEGER NULL;

-- CreateIndex
CREATE UNIQUE INDEX `agencymarkups_agencyId_gds_airlineId_cls_key` ON `agencymarkups`(`agencyId`, `gds`, `airlineId`, `cls`);

-- CreateIndex
CREATE UNIQUE INDEX `gdsmarkups_gdsId_airlineId_cls_flightType_from_to_key` ON `gdsmarkups`(`gdsId`, `airlineId`, `cls`, `flightType`, `from`, `to`);

-- AddForeignKey
ALTER TABLE `gdsmarkups` ADD CONSTRAINT `gdsmarkups_gdsId_fkey` FOREIGN KEY (`gdsId`) REFERENCES `gds`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `agencymarkups` ADD CONSTRAINT `agencymarkups_agencyId_fkey` FOREIGN KEY (`agencyId`) REFERENCES `companies`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
