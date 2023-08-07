ALTER TABLE `users`
  ADD COLUMN `markercoords` longtext AFTER `coins_value`,
  ADD COLUMN `namemarker` varchar(255) AFTER `markercoords`;
