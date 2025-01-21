/*
  Warnings:

  - A unique constraint covering the columns `[gdsId,airlineId,flightType,from,to]` on the table `gdsmarkups` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE `gdsmarkups` ADD COLUMN `flightType` ENUM('ONE_WAY', 'ROUND_TRIP', 'MULTI_CITY') NULL,
    ADD COLUMN `from` VARCHAR(191) NULL,
    ADD COLUMN `to` VARCHAR(191) NULL;

-- CreateIndex
CREATE UNIQUE INDEX `gdsmarkups_gdsId_airlineId_flightType_from_to_key` ON `gdsmarkups`(`gdsId`, `airlineId`, `flightType`, `from`, `to`);
