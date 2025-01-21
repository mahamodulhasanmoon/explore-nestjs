-- DropIndex
DROP INDEX `companies_logo_key` ON `companies`;

-- AlterTable
ALTER TABLE `companies` MODIFY `logo` VARCHAR(191) NULL DEFAULT 'mastermind_logo.png';
