/*
  Warnings:

  - A unique constraint covering the columns `[socketId]` on the table `admins` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE `admins` ADD COLUMN `socketId` VARCHAR(191) NULL;

-- CreateIndex
CREATE UNIQUE INDEX `admins_socketId_key` ON `admins`(`socketId`);
