/*
  Warnings:

  - You are about to drop the column `type` on the `reservations` table. All the data in the column will be lost.
  - Added the required column `flightType` to the `reservations` table without a default value. This is not possible if the table is not empty.
  - Made the column `fullInfo` on table `reservations` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `reservations` DROP COLUMN `type`,
    ADD COLUMN `flightType` ENUM('ONE_WAY', 'ROUND_TRIP', 'MULTI_CITY') NOT NULL,
    MODIFY `fullInfo` JSON NOT NULL;
