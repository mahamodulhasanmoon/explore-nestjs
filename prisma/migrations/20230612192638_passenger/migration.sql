/*
  Warnings:

  - You are about to drop the column `Age` on the `passengers` table. All the data in the column will be lost.
  - Added the required column `reservationId` to the `passengers` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `passengers` DROP COLUMN `Age`,
    ADD COLUMN `age` INTEGER NULL,
    ADD COLUMN `reservationId` INTEGER NOT NULL,
    ADD COLUMN `ticketNo` VARCHAR(191) NULL;

-- AddForeignKey
ALTER TABLE `passengers` ADD CONSTRAINT `passengers_reservationId_fkey` FOREIGN KEY (`reservationId`) REFERENCES `reservations`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
