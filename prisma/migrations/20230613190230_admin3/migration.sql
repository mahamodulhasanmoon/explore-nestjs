/*
  Warnings:

  - Made the column `role` on table `admins` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `admins` MODIFY `role` ENUM('admin', 'general') NOT NULL;
