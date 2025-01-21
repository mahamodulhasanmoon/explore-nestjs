-- DropForeignKey
ALTER TABLE `reservation_activities` DROP FOREIGN KEY `reservation_activities_adminId_fkey`;

-- DropForeignKey
ALTER TABLE `reservation_activities` DROP FOREIGN KEY `reservation_activities_staffId_fkey`;

-- AlterTable
ALTER TABLE `reservation_activities` MODIFY `staffId` INTEGER NULL,
    MODIFY `adminId` INTEGER NULL;

-- AddForeignKey
ALTER TABLE `reservation_activities` ADD CONSTRAINT `reservation_activities_staffId_fkey` FOREIGN KEY (`staffId`) REFERENCES `staffs`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `reservation_activities` ADD CONSTRAINT `reservation_activities_adminId_fkey` FOREIGN KEY (`adminId`) REFERENCES `admins`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
