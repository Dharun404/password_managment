
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
CREATE TABLE `tbl_accounts` (
  `tbl_account_id` int(11) NOT NULL,
  `tbl_user_id` int(11) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tbl_user` (
  `tbl_user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `tbl_accounts`
  ADD PRIMARY KEY (`tbl_account_id`);
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`tbl_user_id`);
ALTER TABLE `tbl_accounts`
  MODIFY `tbl_account_id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tbl_user`
  MODIFY `tbl_user_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

