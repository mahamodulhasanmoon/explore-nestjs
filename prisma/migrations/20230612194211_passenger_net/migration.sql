/*
  Warnings:

  - You are about to alter the column `network` on the `reservations` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Enum(EnumId(2))`.

*/
-- AlterTable
ALTER TABLE `reservations` MODIFY `network` ENUM('Travelport', 'Other') NOT NULL;
