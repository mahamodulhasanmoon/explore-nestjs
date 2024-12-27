/*
  Warnings:

  - You are about to alter the column `position` on the `User` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Enum(EnumId(0))`.
  - Added the required column `updatedAt` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `User` ADD COLUMN `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `updatedAt` DATETIME(3) NOT NULL,
    MODIFY `position` ENUM('CEO', 'DEVELOPER', 'DESIGNER', 'PRODUCT_MANAGER', 'MARKETING', 'SALES', 'HR', 'Intern', 'Engineer') NOT NULL;
