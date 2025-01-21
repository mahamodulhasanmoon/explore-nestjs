/*
  Warnings:

  - A unique constraint covering the columns `[from,to,gds,carrier,flightType]` on the table `currency_rates` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX `currency_rates_from_to_carrier_flightType_key` ON `currency_rates`;

-- CreateIndex
CREATE UNIQUE INDEX `currency_rates_from_to_gds_carrier_flightType_key` ON `currency_rates`(`from`, `to`, `gds`, `carrier`, `flightType`);
