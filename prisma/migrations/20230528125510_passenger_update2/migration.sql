/*
  Warnings:

  - You are about to drop the column `passportExpDate` on the `passengers` table. All the data in the column will be lost.
  - You are about to drop the column `passportNo` on the `passengers` table. All the data in the column will be lost.
  - You are about to drop the column `passportExpDate` on the `saved_passengers` table. All the data in the column will be lost.
  - You are about to drop the column `passportNo` on the `saved_passengers` table. All the data in the column will be lost.
  - Added the required column `passportExpireDate` to the `passengers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `passportNumber` to the `passengers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `passportExpireDate` to the `saved_passengers` table without a default value. This is not possible if the table is not empty.
  - Added the required column `passportNumber` to the `saved_passengers` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `passengers` DROP COLUMN `passportExpDate`,
    DROP COLUMN `passportNo`,
    ADD COLUMN `passportExpireDate` VARCHAR(191) NOT NULL,
    ADD COLUMN `passportNumber` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `saved_passengers` DROP COLUMN `passportExpDate`,
    DROP COLUMN `passportNo`,
    ADD COLUMN `passportExpireDate` VARCHAR(191) NOT NULL,
    ADD COLUMN `passportNumber` VARCHAR(191) NOT NULL;
