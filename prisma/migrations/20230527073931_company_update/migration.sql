/*
  Warnings:

  - Made the column `email` on table `companies` required. This step will fail if there are existing NULL values in that column.
  - Made the column `phone` on table `companies` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `companies` MODIFY `email` VARCHAR(191) NOT NULL,
    MODIFY `phone` VARCHAR(191) NOT NULL;
