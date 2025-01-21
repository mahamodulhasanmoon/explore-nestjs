/*
  Warnings:

  - A unique constraint covering the columns `[id,status]` on the table `bank_deposits` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id,status]` on the table `bank_transfers` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[id,status]` on the table `cash_deposits` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX `bank_deposits_id_status_key` ON `bank_deposits`(`id`, `status`);

-- CreateIndex
CREATE UNIQUE INDEX `bank_transfers_id_status_key` ON `bank_transfers`(`id`, `status`);

-- CreateIndex
CREATE UNIQUE INDEX `cash_deposits_id_status_key` ON `cash_deposits`(`id`, `status`);
