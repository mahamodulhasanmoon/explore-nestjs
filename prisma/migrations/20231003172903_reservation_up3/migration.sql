/*
  Warnings:

  - Made the column `basePrice` on table `reservations` required. This step will fail if there are existing NULL values in that column.
  - Made the column `discountedAmount` on table `reservations` required. This step will fail if there are existing NULL values in that column.
  - Made the column `price` on table `reservations` required. This step will fail if there are existing NULL values in that column.
  - Made the column `totalPrice` on table `reservations` required. This step will fail if there are existing NULL values in that column.

*/
-- AlterTable
ALTER TABLE `reservations` MODIFY `fullInfo` JSON NULL,
    MODIFY `flightInfo` JSON NULL,
    MODIFY `basePrice` DECIMAL(65, 30) NOT NULL,
    MODIFY `discountedAmount` DECIMAL(65, 30) NOT NULL DEFAULT 0,
    MODIFY `price` DECIMAL(65, 30) NOT NULL,
    MODIFY `totalPrice` DECIMAL(65, 30) NOT NULL;
