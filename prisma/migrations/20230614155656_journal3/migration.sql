/*
  Warnings:

  - You are about to drop the column `balance` on the `journals` table. All the data in the column will be lost.
  - You are about to drop the column `info` on the `journals` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `journals` DROP COLUMN `balance`,
    DROP COLUMN `info`;
