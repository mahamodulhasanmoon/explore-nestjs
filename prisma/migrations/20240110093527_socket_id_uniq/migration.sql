/*
  Warnings:

  - A unique constraint covering the columns `[socketId]` on the table `staffs` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX `staffs_socketId_key` ON `staffs`(`socketId`);
