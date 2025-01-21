/*
  Warnings:

  - A unique constraint covering the columns `[id,status]` on the table `reservations` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX `reservations_id_status_key` ON `reservations`(`id`, `status`);
