-- ************************************** `permissions`

CREATE TABLE `permissions`
(
 `id`         bigint NOT NULL ,
 `name`       text NOT NULL ,
 `value`      blob NOT NULL ,
 `created_at` timestamp NOT NULL ,
 `updated_at` timestamp NOT NULL ,
 `created_by` bigint NOT NULL ,
 `updated_by` bigint NOT NULL ,

PRIMARY KEY (`id`),
KEY `name_idx` (`name`)
);




-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `group`

CREATE TABLE `group`
(
 `id`              bigint NOT NULL ,
 `parent_group_id` bigint NULL ,
 `tenant_id`       bigint NOT NULL ,
 `user_id`         bigint NOT NULL ,
 `name`            text NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_115` (`tenant_id`),
CONSTRAINT `FK_114` FOREIGN KEY `fkIdx_115` (`tenant_id`) REFERENCES `tenant` (`id`),
KEY `fkIdx_118` (`user_id`),
CONSTRAINT `FK_117` FOREIGN KEY `fkIdx_118` (`user_id`) REFERENCES `user` (`id`),
KEY `name_idx` (`name`),
KEY `tenant_id_idx` (`tenant_id`)
);


-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `labels`

CREATE TABLE `labels`
(
 `id`        bigint NOT NULL ,
 `name`      text NOT NULL ,
 `colour`    text NULL ,
 `group_id`  bigint NULL ,
 `owner_id`  bigint NOT NULL ,
 `tenant_id` bigint NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_130` (`group_id`),
CONSTRAINT `FK_129` FOREIGN KEY `fkIdx_130` (`group_id`) REFERENCES `group` (`id`),
KEY `fkIdx_133` (`owner_id`),
CONSTRAINT `FK_132` FOREIGN KEY `fkIdx_133` (`owner_id`) REFERENCES `user` (`id`),
KEY `fkIdx_136` (`tenant_id`),
CONSTRAINT `FK_135` FOREIGN KEY `fkIdx_136` (`tenant_id`) REFERENCES `tenant` (`id`),
KEY `name_idx` (`name`)
);

-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `location`

CREATE TABLE `location`
(
 `id`            bigint NOT NULL ,
 `unit`          text NOT NULL ,
 `street1`       text NULL ,
 `street2`       text NULL ,
 `town`          text NULL ,
 `county`        text NULL ,
 `country`       text NULL ,
 `postcode`      text NULL ,
 `location_name` text NULL ,
 `tenant_id`     bigint NOT NULL ,
 `created_at`    timestamp NOT NULL ,
 `updated_at`    timestamp NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_30` (`tenant_id`),
CONSTRAINT `FK_29` FOREIGN KEY `fkIdx_30` (`tenant_id`) REFERENCES `tenant` (`id`)
);


-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `note`

CREATE TABLE `note`
(
 `id`         bitint NOT NULL ,
 `title`      text NOT NULL ,
 `details`    longblob NULL ,
 `user_id`    bigint NOT NULL ,
 `created_at` timestamp NOT NULL ,
 `updated_at` timestamp NOT NULL ,
 `status`     int NULL ,
 `editors`    text NULL ,
 `viewers`    text NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_91` (`user_id`),
CONSTRAINT `FK_90` FOREIGN KEY `fkIdx_91` (`user_id`) REFERENCES `user` (`id`)
);


-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `permissions`

CREATE TABLE `permissions`
(
 `id`         bigint NOT NULL ,
 `name`       text NOT NULL ,
 `value`      blob NOT NULL ,
 `created_at` timestamp NOT NULL ,
 `updated_at` timestamp NOT NULL ,
 `created_by` bigint NOT NULL ,
 `updated_by` bigint NOT NULL ,

PRIMARY KEY (`id`),
KEY `name_idx` (`name`)
);


-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `project`

CREATE TABLE `project`
(
 `id`       bigint NOT NULL ,
 `name`     text NOT NULL ,
 `notes`    longtext NULL ,
 `details`  longblob NULL ,
 `owner_id` bigint NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_105` (`owner_id`),
CONSTRAINT `FK_104` FOREIGN KEY `fkIdx_105` (`owner_id`) REFERENCES `user` (`id`)
);


-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `task`

CREATE TABLE `task`
(
 `id`            bigint NOT NULL ,
 `title`         text NOT NULL ,
 `owner_id`      bigint NOT NULL ,
 `priority`      integer NOT NULL ,
 `status`        integer NULL ,
 `notes`         longtext NULL ,
 `visibility`    integer NOT NULL ,
 `group_id`      bigint NOT NULL ,
 `received_date` timestamp NULL ,
 `started_date`  timestamp NULL ,
 `due_date`      timestamp NULL ,
 `end_date`      timestamp NULL ,
 `parent_task`   bitint NULL ,
 `labels`        longtext NOT NULL ,
 `created_at`    timestamp NOT NULL ,
 `updated_at`    timestamp NOT NULL ,
 `tenant_id`     bigint NOT NULL ,
 `project_id`    bigint NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_108` (`project_id`),
CONSTRAINT `FK_107` FOREIGN KEY `fkIdx_108` (`project_id`) REFERENCES `project` (`id`),
KEY `fkIdx_65` (`owner_id`),
CONSTRAINT `FK_64` FOREIGN KEY `fkIdx_65` (`owner_id`) REFERENCES `user` (`id`),
KEY `fkIdx_83` (`tenant_id`),
CONSTRAINT `FK_82` FOREIGN KEY `fkIdx_83` (`tenant_id`) REFERENCES `tenant` (`id`)
);



-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `tenant`

CREATE TABLE `tenant`
(
 `id`           bigint NOT NULL ,
 `company_name` text NOT NULL ,
 `admin_id`     bigint NOT NULL ,
 `billing_id`   bigint NULL ,
 `tech_id`      bigint NULL ,
 `mainsite_id`  bigint NOT NULL ,
 `created_at`   timestamp NOT NULL ,
 `updated_at`   timestamp NOT NULL ,

PRIMARY KEY (`id`),
FULLTEXT KEY `company_name_idx` (`company_name`),
KEY `fk_locations` (`mainsite_id`),
CONSTRAINT `FK_26` FOREIGN KEY `fk_locations` (`mainsite_id`) REFERENCES `location` (`id`)
);



-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `time`

CREATE TABLE `time`
(
 `id`      bigint NOT NULL ,
 `task_id` bigint NOT NULL ,
 `user_id` bigint NOT NULL ,
 `minutes` bigint NOT NULL ,
 `notes`   text NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_156` (`task_id`),
CONSTRAINT `FK_155` FOREIGN KEY `fkIdx_156` (`task_id`) REFERENCES `task` (`id`),
KEY `fkIdx_159` (`user_id`),
CONSTRAINT `FK_158` FOREIGN KEY `fkIdx_159` (`user_id`) REFERENCES `user` (`id`)
);


-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `user`

CREATE TABLE `user`
(
 `id`                   bigint NOT NULL ,
 `name`                 text NOT NULL ,
 `lastname`             text NOT NULL ,
 `tenant_id`            bigint NOT NULL ,
 `location_id`          bigint NOT NULL ,
 `email`                text NOT NULL ,
 `encrypted_password`   text NOT NULL ,
 `reset_sent_at`        timestamp NULL ,
 `remember_created_at`  timestamp NULL ,
 `permissions`          longtext NOT NULL ,
 `reset_password_token` text NULL ,
 `created_at`           timestamp NOT NULL ,
 `updated_at`           timestamp NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_39` (`tenant_id`),
CONSTRAINT `FK_38` FOREIGN KEY `fkIdx_39` (`tenant_id`) REFERENCES `tenant` (`id`),
KEY `fkIdx_42` (`location_id`),
CONSTRAINT `FK_41` FOREIGN KEY `fkIdx_42` (`location_id`) REFERENCES `location` (`id`)
);




























