/*
  Warnings:

  - Added the required column `airlineId` to the `agencymarkups` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `agencymarkups` ADD COLUMN `airlineId` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `agencymarkups` ADD CONSTRAINT `agencymarkups_airlineId_fkey` FOREIGN KEY (`airlineId`) REFERENCES `airlines`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
