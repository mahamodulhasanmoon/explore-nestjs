/*
  Warnings:

  - You are about to drop the column `Carrier` on the `reservations` table. All the data in the column will be lost.
  - Added the required column `carrier` to the `reservations` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `reservations` DROP COLUMN `Carrier`,
    ADD COLUMN `carrier` VARCHAR(191) NOT NULL,
    MODIFY `bookingId` VARCHAR(191) NULL,
    MODIFY `extraInfo` JSON NULL,
    MODIFY `invoicePrice` DECIMAL(65, 30) NULL,
    MODIFY `network` VARCHAR(191) NULL,
    MODIFY `status` VARCHAR(191) NULL,
    MODIFY `ticketNo` VARCHAR(191) NULL,
    MODIFY `timeLimit` DATETIME(3) NULL;
