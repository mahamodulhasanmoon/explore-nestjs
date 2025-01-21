/*
  Warnings:

  - You are about to drop the column `allPNR` on the `reservations` table. All the data in the column will be lost.
  - You are about to drop the column `way` on the `reservations` table. All the data in the column will be lost.
  - Made the column `GDS` on table `reservations` required. This step will fail if there are existing NULL values in that column.
  - Made the column `airlinesPNR` on table `reservations` required. This step will fail if there are existing NULL values in that column.
  - Made the column `flightTime` on table `reservations` required. This step will fail if there are existing NULL values in that column.
  - Made the column `type` on table `reservations` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `reservations` DROP COLUMN `allPNR`,
    DROP COLUMN `way`,
    MODIFY `GDS` ENUM('Galileo', 'Travelport', 'Other') NOT NULL,
    MODIFY `airlinesPNR` VARCHAR(191) NOT NULL,
    MODIFY `flightTime` DATETIME(3) NOT NULL,
    MODIFY `type` INTEGER NOT NULL;
