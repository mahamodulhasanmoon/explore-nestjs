/*
  Warnings:

  - Added the required column `expireAt` to the `EmergencyBalaceIssues` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `EmergencyBalaceIssues` ADD COLUMN `expireAt` DATETIME(3) NOT NULL;
