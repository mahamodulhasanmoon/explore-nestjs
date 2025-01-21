/*
  Warnings:

  - You are about to drop the column `DOB` on the `passengers` table. All the data in the column will be lost.
  - You are about to drop the column `Age` on the `saved_passengers` table. All the data in the column will be lost.
  - You are about to drop the column `DOB` on the `saved_passengers` table. All the data in the column will be lost.
  - Added the required column `dob` to the `passengers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `prefix` to the `passengers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `type` to the `passengers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `dob` to the `saved_passengers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `prefix` to the `saved_passengers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `type` to the `saved_passengers` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `passengers` DROP COLUMN `DOB`,
    ADD COLUMN `dob` VARCHAR(191) NOT NULL,
    ADD COLUMN `prefix` VARCHAR(191) NOT NULL,
    ADD COLUMN `type` ENUM('ADT', 'CNN', 'INF') NOT NULL;

-- AlterTable
ALTER TABLE `saved_passengers` DROP COLUMN `Age`,
    DROP COLUMN `DOB`,
    ADD COLUMN `dob` VARCHAR(191) NOT NULL,
    ADD COLUMN `prefix` VARCHAR(191) NOT NULL,
    ADD COLUMN `type` ENUM('ADT', 'CNN', 'INF') NOT NULL;
