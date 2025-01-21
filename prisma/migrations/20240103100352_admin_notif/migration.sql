-- AlterTable
ALTER TABLE `notifications` MODIFY `seen` BOOLEAN NOT NULL DEFAULT false;

-- CreateTable
CREATE TABLE `admin_notifications` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `agencyId` INTEGER NULL,
    `staffId` INTEGER NOT NULL,
    `type` ENUM('NOTICE', 'DEPOSIT', 'TICKET', 'OTHER') NOT NULL,
    `seen` BOOLEAN NOT NULL DEFAULT false,
    `info` JSON NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `admin_notifications` ADD CONSTRAINT `admin_notifications_staffId_fkey` FOREIGN KEY (`staffId`) REFERENCES `staffs`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
