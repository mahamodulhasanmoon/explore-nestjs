/*
  Warnings:

  - You are about to drop the column `segments` on the `reservations` table. All the data in the column will be lost.
  - Added the required column `flightInfo` to the `reservations` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `reservations` DROP COLUMN `segments`,
    ADD COLUMN `flightInfo` JSON NOT NULL;
