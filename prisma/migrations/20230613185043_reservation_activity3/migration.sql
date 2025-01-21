/*
  Warnings:

  - You are about to alter the column `name` on the `reservation_activities` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Enum(EnumId(4))`.

*/
-- AlterTable
ALTER TABLE `reservation_activities` MODIFY `name` ENUM('HOLD', 'ISSUE_REQUESTED', 'EXPIRED', 'TICKETED', 'CANCELLED', 'REFUNDED', 'VOIDED') NOT NULL;
