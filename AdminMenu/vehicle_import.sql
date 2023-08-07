SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `vehicle_import` (
  `id` int(11) NOT NULL,
  `label` varchar(265) NOT NULL,
  `name` varchar(265) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `vehicle_import`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `vehicle_import`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;