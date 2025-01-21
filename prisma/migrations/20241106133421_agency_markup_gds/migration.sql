/*
  Warnings:

  - You are about to drop the column `gdsId` on the `agencymarkups` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[agencyId,gds,airlineId]` on the table `agencymarkups` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE `agencymarkups` DROP FOREIGN KEY `agencymarkups_gdsId_fkey`;

-- AlterTable
ALTER TABLE `agencymarkups` DROP COLUMN `gdsId`,
    ADD COLUMN `gDSId` INTEGER NULL,
    ADD COLUMN `gds` VARCHAR(191) NULL;

-- CreateIndex
CREATE UNIQUE INDEX `agencymarkups_agencyId_gds_airlineId_key` ON `agencymarkups`(`agencyId`, `gds`, `airlineId`);
