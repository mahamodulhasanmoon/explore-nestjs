/*
  Warnings:

  - You are about to drop the column `staffId` on the `journals` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE `journals` DROP FOREIGN KEY `journals_staffId_fkey`;

-- AlterTable
ALTER TABLE `journals` DROP COLUMN `staffId`,
    ADD COLUMN `adminId` INTEGER NULL,
    ADD COLUMN `agentId` INTEGER NULL,
    ADD COLUMN `balance` DECIMAL(65, 30) NULL,
    ADD COLUMN `reservationId` INTEGER NULL;

-- AddForeignKey
ALTER TABLE `journals` ADD CONSTRAINT `journals_adminId_fkey` FOREIGN KEY (`adminId`) REFERENCES `admins`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `journals` ADD CONSTRAINT `journals_agentId_fkey` FOREIGN KEY (`agentId`) REFERENCES `companies`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `journals` ADD CONSTRAINT `journals_reservationId_fkey` FOREIGN KEY (`reservationId`) REFERENCES `reservations`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
