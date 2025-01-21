/*
  Warnings:

  - You are about to drop the `emergency_limits` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `emergency_limits` DROP FOREIGN KEY `emergency_limits_agencyId_fkey`;

-- DropTable
DROP TABLE `emergency_limits`;
