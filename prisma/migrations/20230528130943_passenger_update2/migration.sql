/*
  Warnings:

  - A unique constraint covering the columns `[passportNumber]` on the table `saved_passengers` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX `saved_passengers_passportNumber_key` ON `saved_passengers`(`passportNumber`);
