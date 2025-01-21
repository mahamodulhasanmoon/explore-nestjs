/*
  Warnings:

  - You are about to drop the column `fistName` on the `passengers` table. All the data in the column will be lost.
  - You are about to drop the column `fistName` on the `saved_passengers` table. All the data in the column will be lost.
  - Added the required column `firstName` to the `passengers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `firstName` to the `saved_passengers` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `passengers` DROP COLUMN `fistName`,
    ADD COLUMN `firstName` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `saved_passengers` DROP COLUMN `fistName`,
    ADD COLUMN `firstName` VARCHAR(191) NOT NULL;
