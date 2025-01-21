/*
  Warnings:

  - A unique constraint covering the columns `[email]` on the table `companies` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[phone]` on the table `companies` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[logo]` on the table `companies` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[email]` on the table `staffs` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[phone]` on the table `staffs` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX `companies_email_key` ON `companies`(`email`);

-- CreateIndex
CREATE UNIQUE INDEX `companies_phone_key` ON `companies`(`phone`);

-- CreateIndex
CREATE UNIQUE INDEX `companies_logo_key` ON `companies`(`logo`);

-- CreateIndex
CREATE UNIQUE INDEX `staffs_email_key` ON `staffs`(`email`);

-- CreateIndex
CREATE UNIQUE INDEX `staffs_phone_key` ON `staffs`(`phone`);
