/*
  Warnings:

  - You are about to alter the column `type` on the `agencymarkups` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Enum(EnumId(17))`.

*/
-- AlterTable
ALTER TABLE `agencymarkups` MODIFY `type` ENUM('AMOUNT', 'PERCENT') NOT NULL;
