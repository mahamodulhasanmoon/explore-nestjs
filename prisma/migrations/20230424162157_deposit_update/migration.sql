/*
  Warnings:

  - You are about to alter the column `amount` on the `mobile_banking_deposits` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Decimal(9,2)`.
  - You are about to alter the column `fee` on the `mobile_banking_deposits` table. The data in that column could be lost. The data in that column will be cast from `Decimal(65,30)` to `Decimal(3,2)`.

*/
-- AlterTable
ALTER TABLE `mobile_banking_deposits` MODIFY `amount` DECIMAL(9, 2) NOT NULL,
    MODIFY `fee` DECIMAL(3, 2) NOT NULL;
