-- DropIndex
DROP INDEX `agencymarkups_gdsId_fkey` ON `agencymarkups`;

-- AlterTable
ALTER TABLE `reservations` MODIFY `GDS` ENUM('Galileo', 'Sabre', 'Riya', 'S1', 'TP_AE', 'S2', 'S3', 'S12', 'BS_BD', 'BS_AE', 'TJ', 'BDF') NOT NULL;
