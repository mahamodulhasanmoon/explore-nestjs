/*
  Warnings:

  - You are about to alter the column `token` on the `staffs` table. The data in that column could be lost. The data in that column will be cast from `TinyInt` to `VarChar(191)`.

*/
-- AlterTable
ALTER TABLE `staffs` MODIFY `token` VARCHAR(191) NULL;
