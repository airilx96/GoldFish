SET NAMES utf8mb4;
SET
FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS `cms_fuserights`;
DROP TABLE IF EXISTS `cms_settings`;
DROP TABLE IF EXISTS `cms_menu`;
DROP TABLE IF EXISTS `cms_news`;
DROP TABLE IF EXISTS `cms_alerts`;
DROP TABLE IF EXISTS `cms_fuserights`;
DROP TABLE IF EXISTS `cms_hk_logs`;
DROP TABLE IF EXISTS `cms_logins`;
DROP TABLE IF EXISTS `cms_homes`;
DROP TABLE IF EXISTS `cms_homes_catalogue`;
DROP TABLE IF EXISTS `cms_homes_catalogue_cats`;
CREATE TABLE `cms_fuserights`
(
    `right`    varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
    `min_rank` int(25) NOT NULL,
    `desc`     varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
    `type`     varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
    PRIMARY KEY (`right`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;
CREATE TABLE `cms_menu`
(
    `id`    int(11) unsigned NOT NULL AUTO_INCREMENT,
    `group` varchar(255)          DEFAULT '',
    `title` varchar(255) NOT NULL DEFAULT '',
    `url`   varchar(230) NOT NULL DEFAULT '',
    `order` int(11) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
CREATE TABLE `cms_news`
(
    `id`      int(11) unsigned NOT NULL AUTO_INCREMENT,
    `caption` varchar(250) NOT NULL DEFAULT '',
    `desc`    varchar(255) NOT NULL DEFAULT '',
    `body`    text         NOT NULL,
    `image`   varchar(255) NOT NULL DEFAULT '',
    `author`  int(11) NOT NULL,
    `date`    varchar(30)  NOT NULL DEFAULT '',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
CREATE TABLE `cms_settings`
(
    `key`   varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '',
    `value` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;
CREATE TABLE `cms_alerts`
(
    `id`      int(11) NOT NULL AUTO_INCREMENT,
    `message` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `icon`    varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'ADM',
    `userid`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;
CREATE TABLE `cms_logins`
(
    `id`         int(255) NOT NULL AUTO_INCREMENT,
    `user_id`    int(255) NOT NULL,
    `ip`         varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `timestamp`  int(255) NOT NULL,
    `successful` int(255) NOT NULL,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;
CREATE TABLE `cms_hk_logs`
(
    `id`        int(255) NOT NULL AUTO_INCREMENT,
    `user_id`   int(255) NOT NULL,
    `ip`        varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `action`    varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `timestamp` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;
CREATE TABLE `cms_homes`
(
    `id`      int(255) NOT NULL AUTO_INCREMENT,
    `user_id` int(255) NOT NULL,
    `type`    varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `name`    varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `z`       int(255) NULL DEFAULT NULL,
    `x`       int(255) NULL DEFAULT NULL,
    `y`       int(255) NULL DEFAULT NULL,
    `skin`    varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
    `visible` int(255) NOT NULL DEFAULT 1,
    `data`    text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;
CREATE TABLE `cms_homes_catalogue`
(
    `id`       int(11) NOT NULL AUTO_INCREMENT,
    `type`     varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 's',
    `data`     varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `name`     varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    `category` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2869 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;
CREATE TABLE `cms_homes_catalogue_cats`
(
    `id`   int(11) NOT NULL AUTO_INCREMENT,
    `type` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 's',
    `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1002 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;
INSERT INTO `cms_fuserights`
VALUES ('dashboard', 5, 'Dashboard tab', '1');
INSERT INTO `cms_fuserights`
VALUES ('moderation', 5, 'Moderation Tab', '1');
INSERT INTO `cms_fuserights`
VALUES ('moderation_badges', 7, 'Give badges', '3');
INSERT INTO `cms_fuserights`
VALUES ('moderation_banlist', 5, 'View ban list', '3');
INSERT INTO `cms_fuserights`
VALUES ('moderation_chatlog', 5, 'View Chatlog', '3');
INSERT INTO `cms_fuserights`
VALUES ('moderation_online', 5, 'View online list', '3');
INSERT INTO `cms_fuserights`
VALUES ('moderation_user', 4, 'View users', '3');
INSERT INTO `cms_fuserights`
VALUES ('moderation_user_admin', 6, 'Modify Users', '3');
INSERT INTO `cms_fuserights`
VALUES ('moderation_password', 7, 'Change Passwords', '3');
INSERT INTO `cms_fuserights`
VALUES ('navi_server_hotel', 7, 'Server Hotel box', '2');
INSERT INTO `cms_fuserights`
VALUES ('navi_server_navigation', 7, 'Server Navigation box', '2');
INSERT INTO `cms_fuserights`
VALUES ('navi_server_settings', 7, 'Server Settings box', '2');
INSERT INTO `cms_fuserights`
VALUES ('navi_site_content', 6, 'Site Content box', '2');
INSERT INTO `cms_fuserights`
VALUES ('navi_site_settings', 7, 'Site Settings box', '2');
INSERT INTO `cms_fuserights`
VALUES ('navi_usermod_moderation', 5, 'Moderation box', '2');
INSERT INTO `cms_fuserights`
VALUES ('navi_usermod_users', 7, 'Moderation Users box', '2');
INSERT INTO `cms_fuserights`
VALUES ('server', 7, 'Server Tab', '1');
INSERT INTO `cms_fuserights`
VALUES ('server_client', 7, 'Server client settings', '3');
INSERT INTO `cms_fuserights`
VALUES ('server_emulator', 7, 'Server emulator settings', '3');
INSERT INTO `cms_fuserights`
VALUES ('server_publiccats', 7, 'Server public room categories', '3');
INSERT INTO `cms_fuserights`
VALUES ('server_publics', 7, 'Server public rooms', '3');
INSERT INTO `cms_fuserights`
VALUES ('server_rcon', 7, 'Server RCON', '3');
INSERT INTO `cms_fuserights`
VALUES ('server_vouchers', 7, 'Server Vouchers', '3');
INSERT INTO `cms_fuserights`
VALUES ('site', 6, 'Site Tab', '1');
INSERT INTO `cms_fuserights`
VALUES ('site_alert', 5, 'Send Site Alerts', '3');
INSERT INTO `cms_fuserights`
VALUES ('site_news', 6, 'Create News', '3');
INSERT INTO `cms_fuserights`
VALUES ('site_rights', 7, 'Site Rights', '3');
INSERT INTO `cms_fuserights`
VALUES ('site_settings_general', 7, 'CMS Settings', '3');
INSERT INTO `cms_fuserights`
VALUES ('site_settings_social', 7, 'Social Settings', '3');
INSERT INTO `cms_fuserights`
VALUES ('updater', 7, 'Update Goldfish', '3');
INSERT INTO `cms_fuserights`
VALUES ('navi_server_logging', 6, 'Server Logging box', 2);
INSERT INTO `cms_fuserights`
VALUES ('server_logging', 7, 'Logs', 3);
INSERT INTO `cms_menu`
VALUES ('1', null, 'Home', 'me', '1');
INSERT INTO `cms_menu`
VALUES ('2', 'me', 'Home', 'me', '1');
INSERT INTO `cms_menu`
VALUES ('3', null, 'community', 'community', '2');
INSERT INTO `cms_menu`
VALUES ('4', 'community', 'community', 'community', '1');
INSERT INTO `cms_menu`
VALUES ('5', 'community', 'Staff', 'community/staff', '5');
INSERT INTO `cms_menu`
VALUES ('6', 'me', 'My Page', 'home/%username%', '3');
INSERT INTO `cms_menu`
VALUES ('7', 'community', 'Leaderboards', 'community/leaderboards', '4');
INSERT INTO `cms_menu`
VALUES ('8', 'community', 'News', 'community/articles', '2');
INSERT INTO `cms_menu`
VALUES ('9', 'community', 'Photos', 'community/photos', '3');
INSERT INTO `cms_menu`
VALUES ('10', 'me', 'Settings', 'settings', '2');
INSERT INTO `cms_news`
VALUES ('1', 'Goldfish Installation complete', 'Goldfish Installation complete',
        '<p>Welcome to your freshly installed version of GoldFishCMS!</p>', '/assets/images/news/wpid-lpromo_atcg.png', '1',
        '1563049338');
INSERT INTO `cms_settings`
VALUES ('hotelname', 'Habbo');
INSERT INTO `cms_settings`
VALUES ('c_images', '/swfs/c_images/');
INSERT INTO `cms_settings`
VALUES ('discord_id', '509801583991848972');
INSERT INTO `cms_settings`
VALUES ('swfdir', '/swfs/gordon/PRODUCTION-201601012205-226667486/');
INSERT INTO `cms_settings`
VALUES ('swf', '/swfs/gordon/PRODUCTION-201601012205-226667486/habbo.swf');
INSERT INTO `cms_settings`
VALUES ('emuhost', '127.0.0.1');
INSERT INTO `cms_settings`
VALUES ('emuport', '3000');
INSERT INTO `cms_settings`
VALUES ('variables', '/swfs/gamedata/external_variables.txt');
INSERT INTO `cms_settings`
VALUES ('override_variables', '/swfs/gamedata/override/external_override_variables.txt');
INSERT INTO `cms_settings`
VALUES ('texts', '/swfs/gamedata/external_flash_texts.txt');
INSERT INTO `cms_settings`
VALUES ('override_texts', '/swfs/gamedata/override/external_flash_override_texts.txt');
INSERT INTO `cms_settings`
VALUES ('productdata', '/swfs/gamedata/productdata.txt');
INSERT INTO `cms_settings`
VALUES ('furnidata', '/swfs/gamedata/furnidata.xml');
INSERT INTO `cms_settings`
VALUES ('figuremap', '/swfs/gamedata/figuremap.xml');
INSERT INTO `cms_settings`
VALUES ('figuredata', '/swfs/gamedata/figuredata.xml');
INSERT INTO `cms_settings`
VALUES ('twitter_handle', 'Habbo');
INSERT INTO `cms_settings`
VALUES ('habbo_imager', 'https://habbo.com.br/habbo-imaging/avatarimage?figure=');
INSERT INTO `cms_settings`
VALUES ('site_logo', '/assets/goldfish/images/logo.gif');
INSERT INTO `cms_settings`
VALUES ('default_motto', 'I Love Habbo Hotel!');
INSERT INTO `cms_settings`
VALUES ('rconport', '3001');
INSERT INTO `cms_settings`
VALUES ('group_badges', '/swfs/c_images/Badgeparts/generated/');
INSERT INTO `cms_settings`
VALUES ('rconip', '127.0.0.1');
INSERT INTO `cms_settings`
VALUES ('installed', '0');
INSERT INTO `cms_settings`
VALUES ('hk_notes', 'This housekeeping owns. ^^\r\n\r\n-Laynester');
INSERT INTO `cms_settings`
VALUES ('theme', 'goldfish');
INSERT INTO `cms_settings`
VALUES ('findretros', null);
INSERT INTO `cms_settings`
VALUES ('cacheVar', 'e27a3c35b9c6ee0aeecc0e7d0d0c6d06fe9f3913');
INSERT INTO `cms_settings`
VALUES ('maintenance', '0');
INSERT INTO `cms_settings`
VALUES ('maintenance_rank', '5');
ALTER TABLE `users`
    ADD `profile_background` varchar(50) NOT NULL DEFAULT 'bg_colour_03.gif';
ALTER TABLE `users`
    ADD `hotelview` varchar(50) NOT NULL DEFAULT 'view_us_wide.png';
ALTER TABLE `users` MODIFY `mail` VARCHAR (255);
UPDATE `emulator_settings`
SET value = '0'
WHERE `key` = 'debug.show.headers';
INSERT INTO `cms_homes_catalogue`
VALUES (2, 's', 'trax_sfx', 'Trax Sfx', '3');
INSERT INTO `cms_homes_catalogue`
VALUES (3, 's', 'trax_disco', 'Trax Disco', '3');
INSERT INTO `cms_homes_catalogue`
VALUES (4, 's', 'trax_8_bit', 'Trax 8 bit', '3');
INSERT INTO `cms_homes_catalogue`
VALUES (5, 's', 'trax_electro', 'Trax Electro', '3');
INSERT INTO `cms_homes_catalogue`
VALUES (6, 's', 'trax_reggae', 'Trax Reggae', '3');
INSERT INTO `cms_homes_catalogue`
VALUES (7, 's', 'trax_ambient', 'Trax Ambient', '3');
INSERT INTO `cms_homes_catalogue`
VALUES (8, 's', 'trax_bling', 'Trax Bling', '3');
INSERT INTO `cms_homes_catalogue`
VALUES (9, 's', 'trax_heavy', 'Trax Heavy', '3');
INSERT INTO `cms_homes_catalogue`
VALUES (10, 's', 'trax_latin', 'Trax Latin', '3');
INSERT INTO `cms_homes_catalogue`
VALUES (11, 's', 'trax_rock', 'Trax Rock', '3');
INSERT INTO `cms_homes_catalogue`
VALUES (37, 's', 'a', 'A', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (38, 's', 'b', 'B', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (39, 's', 'c', 'C', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (40, 's', 'd', 'D', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (41, 's', 'e', 'E', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (42, 's', 'f', 'F', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (43, 's', 'g', 'G', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (44, 's', 'h', 'H', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (45, 's', 'i', 'I', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (46, 's', 'j', 'J', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (47, 's', 'k', 'K', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (48, 's', 'l', 'L', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (49, 's', 'm', 'M', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (50, 's', 'n', 'N', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (51, 's', 'o', 'O', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (52, 's', 'p', 'P', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (53, 's', 'q', 'Q', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (54, 's', 'r', 'R', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (55, 's', 's', 'S', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (56, 's', 't', 'T', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (57, 's', 'u', 'U', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (58, 's', 'v', 'V', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (59, 's', 'w', 'W', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (60, 's', 'x', 'X', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (61, 's', 'y', 'Y', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (62, 's', 'z', 'Z', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (63, 's', 'bling_star', 'Bling Star', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (64, 's', 'bling_a', 'Bling a', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (65, 's', 'bling_b', 'Bling b', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (66, 's', 'bling_c', 'Bling c', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (67, 's', 'bling_d', 'Bling d', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (68, 's', 'bling_e', 'Bling e', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (69, 's', 'bling_f', 'Bling f', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (70, 's', 'bling_g', 'Bling g', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (71, 's', 'bling_h', 'Bling h', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (72, 's', 'bling_i', 'Bling i', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (73, 's', 'bling_j', 'Bling j', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (74, 's', 'bling_k', 'Bling k', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (75, 's', 'bling_l', 'Bling l', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (76, 's', 'bling_m', 'Bling m', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (77, 's', 'bling_n', 'Bling n', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (78, 's', 'bling_o', 'Bling o', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (79, 's', 'bling_p', 'Bling p', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (80, 's', 'bling_q', 'Bling q', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (81, 's', 'bling_r', 'Bling r', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (82, 's', 'bling_s', 'Bling s', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (83, 's', 'bling_t', 'Bling t', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (84, 's', 'bling_u', 'Bling u', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (85, 's', 'bling_v', 'Bling v', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (86, 's', 'bling_w', 'Bling w', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (87, 's', 'bling_x', 'Bling x', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (88, 's', 'bling_y', 'Bling y', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (89, 's', 'bling_z', 'Bling z', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (90, 's', 'bling_underscore', 'Bling Underscore', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (91, 's', 'bling_comma', 'Bling Comma', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (92, 's', 'bling_dot', 'Bling Dot', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (93, 's', 'bling_exclamation', 'Bling Exclamation', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (94, 's', 'bling_question', 'Bling Question', '6');
INSERT INTO `cms_homes_catalogue`
VALUES (95, 's', 'a_with_circle', 'A with Circle', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (96, 's', 'a_with_dots', 'A with Dots', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (97, 's', 'o_with_dots', 'O with Dots', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (98, 's', 'dot', 'Dot', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (99, 's', 'acsent1', 'Accent 1', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (101, 's', 'underscore', 'Underscore', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (103, 's', 'chain_horizontal', 'Chain Horizontal', '7');
INSERT INTO `cms_homes_catalogue`
VALUES (104, 's', 'chain_vertical', 'Chain Vertical', '7');
INSERT INTO `cms_homes_catalogue`
VALUES (105, 's', 'ruler_horizontal', 'Ruler Horizontal', '7');
INSERT INTO `cms_homes_catalogue`
VALUES (106, 's', 'ruler_vertical', 'Ruler Vertical', '7');
INSERT INTO `cms_homes_catalogue`
VALUES (107, 's', 'vine1', 'Vine', '7');
INSERT INTO `cms_homes_catalogue`
VALUES (108, 's', 'vine2', 'Vine 2', '7');
INSERT INTO `cms_homes_catalogue`
VALUES (110, 's', 'leafs2', 'Leafs 2', '7');
INSERT INTO `cms_homes_catalogue`
VALUES (111, 's', 'sticker_zipper_v_tile', 'Sticker Zipper V Tile', '7');
INSERT INTO `cms_homes_catalogue`
VALUES (112, 's', 'sticker_zipper_h_tile', 'Sticker Zipper H Tile', '7');
INSERT INTO `cms_homes_catalogue`
VALUES (113, 's', 'sticker_zipper_h_normal_lock', 'Sticker Zipper H Normal Lock', '7');
INSERT INTO `cms_homes_catalogue`
VALUES (114, 's', 'sticker_zipper_h_bobba_lock', 'Sticker Zipper H Bobba Lock', '7');
INSERT INTO `cms_homes_catalogue`
VALUES (115, 's', 'sticker_zipper_h_end', 'Sticker Zipper H End', '7');
INSERT INTO `cms_homes_catalogue`
VALUES (116, 's', 'sticker_zipper_v_end', 'Sticker Zipper V End', '7');
INSERT INTO `cms_homes_catalogue`
VALUES (117, 's', 'sticker_zipper_v_bobba_lock', 'Sticker Zipper V Bobba Lock', '7');
INSERT INTO `cms_homes_catalogue`
VALUES (118, 's', 'sticker_zipper_v_normal_lock', 'Sticker Zipper V Normal Lock', '7');
INSERT INTO `cms_homes_catalogue`
VALUES (119, 's', 'wormhand', 'Wormhand', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (120, 's', 'sticker_gentleman', 'Sticker Gentleman', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (121, 's', 'chewed_bubblegum', 'Chewed Bubblegum', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (122, 's', 'sticker_cactus_anim', 'Cactus', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (123, 's', 'sticker_spaceduck', 'Sticker Spaceduck', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (124, 's', 'sticker_moonpig', 'Sticker Moonpig', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (125, 's', 'swimming_fish', 'Swimming Fish', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (126, 's', 'sticker_boxer', 'Sticker Boxer', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (127, 's', 'wunderfrank', 'Wunder Frank', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (128, 's', 'sticker_submarine', 'Sticker Submarine', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (129, 's', 'sticker_clown_anim', 'Sticker Clown Anim', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (132, 's', 'sticker_heartbeat', 'Sticker Heartbeat', '9');
INSERT INTO `cms_homes_catalogue`
VALUES (133, 's', 'sticker_catinabox', 'Sticker Catinabox', '9');
INSERT INTO `cms_homes_catalogue`
VALUES (134, 's', 'bear', 'Bear', '9');
INSERT INTO `cms_homes_catalogue`
VALUES (135, 's', 'gothic_draculacape', 'Gothic Draculacape', '10');
INSERT INTO `cms_homes_catalogue`
VALUES (136, 's', 'evil_giant_bunny', 'Evil Giant Bunny', '10');
INSERT INTO `cms_homes_catalogue`
VALUES (137, 's', 'zombiepupu', 'Zombie Pupu', '10');
INSERT INTO `cms_homes_catalogue`
VALUES (138, 's', 'skeletor_001', 'Skeletor 1', '10');
INSERT INTO `cms_homes_catalogue`
VALUES (139, 's', 'skull', 'Skull', '10');
INSERT INTO `cms_homes_catalogue`
VALUES (140, 's', 'skull2', 'Skull 2', '10');
INSERT INTO `cms_homes_catalogue`
VALUES (141, 's', 'scubacapsule_anim', 'Scubacapsule Anim', '10');
INSERT INTO `cms_homes_catalogue`
VALUES (142, 's', 'sticker_bobbaskull', 'Bobbaskull', '10');
INSERT INTO `cms_homes_catalogue`
VALUES (153, 's', 'sticker_pointing_hand_1', 'Sticker Pointing Hand 1', '12');
INSERT INTO `cms_homes_catalogue`
VALUES (154, 's', 'sticker_pointing_hand_2', 'Sticker Pointing Hand 2', '12');
INSERT INTO `cms_homes_catalogue`
VALUES (155, 's', 'sticker_pointing_hand_3', 'Sticker Pointing Hand 3', '12');
INSERT INTO `cms_homes_catalogue`
VALUES (156, 's', 'sticker_pointing_hand_4', 'Sticker Pointing Hand 4', '12');
INSERT INTO `cms_homes_catalogue`
VALUES (164, 's', 'grass', 'Grass Meadow', '13');
INSERT INTO `cms_homes_catalogue`
VALUES (165, 's', 'sticker_flower1', 'Sticker Flower', '13');
INSERT INTO `cms_homes_catalogue`
VALUES (166, 's', 'sticker_flower_big_yellow', 'Sticker Flower Big Yellow', '13');
INSERT INTO `cms_homes_catalogue`
VALUES (167, 's', 'sticker_flower_pink', 'Sticker Flower Pink', '13');
INSERT INTO `cms_homes_catalogue`
VALUES (168, 's', 'sticker_bobbaskull', 'Bobba badge', '14');
INSERT INTO `cms_homes_catalogue`
VALUES (169, 's', 'i_love_coffee', 'I love Coffee', '14');
INSERT INTO `cms_homes_catalogue`
VALUES (170, 's', 'sticker_effect_bam', 'Sticker Effect Bam', '14');
INSERT INTO `cms_homes_catalogue`
VALUES (171, 's', 'sticker_effect_burp', 'Sticker Effect Burp', '14');
INSERT INTO `cms_homes_catalogue`
VALUES (172, 's', 'sticker_effect_woosh', 'Sticker Effect Woosh', '14');
INSERT INTO `cms_homes_catalogue`
VALUES (173, 's', 'sticker_effect_zap', 'Sticker Effect Zap', '14');
INSERT INTO `cms_homes_catalogue`
VALUES (174, 's', 'sticker_effect_whoosh2', 'Sticker Effect Whoosh 2', '14');
INSERT INTO `cms_homes_catalogue`
VALUES (175, 's', 'icecube_small', 'Icecube Small', '15');
INSERT INTO `cms_homes_catalogue`
VALUES (176, 's', 'ss_snowballmachine', 'Snowball Machine', '15');
INSERT INTO `cms_homes_catalogue`
VALUES (177, 's', 'icecube_big', 'Icecube Big', '15');
INSERT INTO `cms_homes_catalogue`
VALUES (178, 's', 'bootsitjalapaset_red', 'Bootsitjalapaset Red', '15');
INSERT INTO `cms_homes_catalogue`
VALUES (179, 's', 'ss_bootsitjalapaset_blue', 'Boots and Gloves', '15');
INSERT INTO `cms_homes_catalogue`
VALUES (180, 's', 'ss_costume_red', 'Red SnowStorm Costume', '15');
INSERT INTO `cms_homes_catalogue`
VALUES (181, 's', 'ss_costume_blue', 'Snowstorm Blue Costume', '15');
INSERT INTO `cms_homes_catalogue`
VALUES (182, 's', 'ss_hits_by_snowball', 'Splash!', '15');
INSERT INTO `cms_homes_catalogue`
VALUES (183, 's', 'extra_ss_duck_left', 'SnowStorm Duck!', '15');
INSERT INTO `cms_homes_catalogue`
VALUES (184, 's', 'ss_snowtree', 'Snowtree', '15');
INSERT INTO `cms_homes_catalogue`
VALUES (185, 's', 'extra_ss_duck_right', 'SnowStorm Duck!', '15');
INSERT INTO `cms_homes_catalogue`
VALUES (186, 's', 'ss_snowman', 'Snowman', '15');
INSERT INTO `cms_homes_catalogue`
VALUES (187, 's', 'ss_snowflake2', 'Lumihiutale', '15');
INSERT INTO `cms_homes_catalogue`
VALUES (188, 's', 'ss_snowqueen', 'Snow Queen', '15');
INSERT INTO `cms_homes_catalogue`
VALUES (189, 's', 'battle1', 'Battle 1', '16');
INSERT INTO `cms_homes_catalogue`
VALUES (190, 's', 'battle3', 'Battle 3', '16');
INSERT INTO `cms_homes_catalogue`
VALUES (191, 's', 'hc_hat', 'HC Hat', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (192, 's', 'eyeleft', 'Eye Left', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (193, 's', 'eyeright', 'Eye Right', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (194, 's', 'angelwings_anim', 'Angel Wings', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (195, 's', 'sticker_gurubeard_grey', 'Sticker Gurubeard Gray', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (196, 's', 'sticker_gurubeard_brown', 'Sticker Gurubeard Brown', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (197, 's', 'sticker_glasses_supernerd', 'Supernerd', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (198, 's', 'sticker_glasses_elton', 'Goofy Glasses', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (199, 's', 'sticker_eyes_blue', 'Blue Eyes', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (200, 's', 'sticker_eye_anim', 'Sticker Eye Anim', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (201, 's', 'sticker_eye_evil_anim', 'Sticker Eye Evil Anim', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (203, 's', 'star', 'Star', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (204, 's', 'pencil', 'Sticker Pencil', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (206, 's', 'pencil_2', 'Sticker Pencil 2', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (207, 's', 'sticker_lonewolf', 'Sticker Lonewolf', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (208, 's', 'sticker_prankster', 'Sticker Prankster', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (210, 's', 'sticker_romantic', 'Sticker Romantic', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (218, 's', 'sticker_hole', 'Sticker Hole', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (219, 's', 'sticker_flames', 'Sticker Flames', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (220, 's', 'paper_clip_1', 'Paper Clip 1', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (221, 's', 'paper_clip_2', 'Paper Clip 2', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (222, 's', 'paper_clip_3', 'Paper Clip 3', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (223, 's', 'highlighter_1', 'Highlighter 1', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (224, 's', 'highlighter_mark5', 'Highlighter Mark 5', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (225, 's', 'highlighter_mark6', 'Highlighter Mark 6', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (226, 's', 'highlighter_mark4b', 'Highlighter Mark 4', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (227, 's', 'highlighter_2', 'Highlighter 2', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (228, 's', 'highlighter_mark1', 'Highlighter Mark 1', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (229, 's', 'highlighter_mark2', 'Highlighter Mark 2', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (230, 's', 'highlighter_mark3', 'Highlighter Mark 3', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (234, 's', 'fish', 'Fish', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (235, 's', 'parrot', 'Parrot', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (236, 's', 'sticker_sleeping_habbo', 'Sticker Sleeping Habbo', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (238, 's', 'juice', 'Juice', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (245, 's', 'football', 'Football', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1001, 's', 'ob_clubber_146x146', 'OB Clubber', '201');
INSERT INTO `cms_homes_catalogue`
VALUES (1002, 's', 'ob_devil_146x146', 'OB Devil', '201');
INSERT INTO `cms_homes_catalogue`
VALUES (1003, 's', 'ob_doctor_146x146', 'OB Doctor', '201');
INSERT INTO `cms_homes_catalogue`
VALUES (1004, 's', 'ob_fairy_146x146', 'OB Fairy', '201');
INSERT INTO `cms_homes_catalogue`
VALUES (1005, 's', 'ob_jetsetter_146x146', 'OB Jetsetter', '201');
INSERT INTO `cms_homes_catalogue`
VALUES (1007, 's', 'ob_shopaholic_146x146', 'OB Shopaholic', '201');
INSERT INTO `cms_homes_catalogue`
VALUES (1008, 's', 'ob_sporty_146x146', 'OB Sport', '201');
INSERT INTO `cms_homes_catalogue`
VALUES (1011, 's', '27224_sticker_themepark_001', 'Sticker Themepark', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1023, 's', 'acma_notepad_bg_lge', 'Acma Notepad Background', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1026, 's', 'acsent1', 'Acsent 1', '203');
INSERT INTO `cms_homes_catalogue`
VALUES (1027, 's', 'acsent2', 'Acsent 2', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (1028, 's', 'adcats', 'Ad Cats', '204');
INSERT INTO `cms_homes_catalogue`
VALUES (1029, 's', 'addogs', 'Ad Dogs', '204');
INSERT INTO `cms_homes_catalogue`
VALUES (1030, 's', 'adholiday', 'Ad Holiday', '204');
INSERT INTO `cms_homes_catalogue`
VALUES (1032, 's', 'adparty', 'Ad Party', '204');
INSERT INTO `cms_homes_catalogue`
VALUES (1033, 's', 'adskating', 'Ad Skating', '204');
INSERT INTO `cms_homes_catalogue`
VALUES (1035, 's', 'alhambra_sticker', 'Alhambra Sticker', '205');
INSERT INTO `cms_homes_catalogue`
VALUES (1036, 's', 'alhambra_wallsticker', 'Alhambra Wallsticker', '205');
INSERT INTO `cms_homes_catalogue`
VALUES (1037, 's', 'sticker_alhambralogo', 'Alhambra Logo', '205');
INSERT INTO `cms_homes_catalogue`
VALUES (1039, 's', 'ametrin', 'Ametrin', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1040, 's', 'ob_angel_146x146', 'Angel', '201');
INSERT INTO `cms_homes_catalogue`
VALUES (1043, 's', 'anim_appart_732', 'Anim Appart 732', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1044, 's', 'anim_boule_cristal', 'Anim Boule Cristal', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1045, 's', 'anim_brasero', 'Anim Brasero', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1046, 's', 'anim_cook', 'Anim Cook', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1047, 's', 'anim_elvis', 'Anim Elvis', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1048, 's', 'anim_enseigne', 'Anim Enseigne', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1049, 's', 'anim_hockey', 'Anim Hockey', '213');
INSERT INTO `cms_homes_catalogue`
VALUES (1051, 's', 'anim_oeil', 'Anim Oeil', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1052, 's', 'anim_ventilo', 'Anim Ventilo', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1053, 's', 'anim_viking_hole', 'Anim Viking Hole', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1054, 's', 'anti_eco', 'Anti Eco', '235');
INSERT INTO `cms_homes_catalogue`
VALUES (1057, 's', 'argentina', 'Argentina', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1058, 's', 'star', 'Asterisco 1', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (1059, 's', 'au_3rdbday_01', 'AU 3rd Bday 1', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1060, 's', 'au_3rdbday_02', 'AU 3rd Bday 2', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1061, 's', 'au_3rdbday_03', 'AU 3rd Bday 3', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1062, 's', 'au_greengold', 'AU Greengold', '204');
INSERT INTO `cms_homes_catalogue`
VALUES (1063, 's', 'au_lifesaver', 'AU Lifesaver', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1064, 's', 'au_surfing', 'AU Surfing', '204');
INSERT INTO `cms_homes_catalogue`
VALUES (1067, 's', 'ballsmahoney_001', 'Ballsma Honey', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1068, 's', 'baltasar', 'Baltasar', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1069, 's', 'banksbobby', 'Banks Bobby', '236');
INSERT INTO `cms_homes_catalogue`
VALUES (1070, 's', 'bankscan', 'Banks Can', '236');
INSERT INTO `cms_homes_catalogue`
VALUES (1071, 's', 'banksdoor', 'Banks Door', '236');
INSERT INTO `cms_homes_catalogue`
VALUES (1072, 's', 'banksheater', 'Banks Heater', '236');
INSERT INTO `cms_homes_catalogue`
VALUES (1073, 's', 'barbequeset', 'Barbequeset', '207');
INSERT INTO `cms_homes_catalogue`
VALUES (1074, 's', 'slash', 'Barra', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (1075, 's', 'bartender_costume', 'Bartender Costume', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (1076, 's', 'batista', 'Batista', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1079, 's', 'sticker_beachBall', 'Beachbunny Beachball', '207');
INSERT INTO `cms_homes_catalogue`
VALUES (1080, 's', 'sticker_beachBallBouncing', 'Beachbunny Beachball Bouncing', '207');
INSERT INTO `cms_homes_catalogue`
VALUES (1081, 's', 'sticker_bbbPoster', 'Beachbunny Bmovie Poster', '207');
INSERT INTO `cms_homes_catalogue`
VALUES (1082, 's', 'sticker_bunnySuit', 'Beachbunny Bunny Suit', '207');
INSERT INTO `cms_homes_catalogue`
VALUES (1083, 's', 'sticker_peep', 'Beachbunny Peep', '207');
INSERT INTO `cms_homes_catalogue`
VALUES (1084, 's', 'sticker_roasterBunny', 'Beachbunny Roaster Bunny', '207');
INSERT INTO `cms_homes_catalogue`
VALUES (1085, 's', 'ob_beachgirl_146x146', 'Beachgirl', '201');
INSERT INTO `cms_homes_catalogue`
VALUES (1086, 's', 'bear', 'Bear', '226');
INSERT INTO `cms_homes_catalogue`
VALUES (1087, 's', 'bellydancer', 'Bellydancer', '205');
INSERT INTO `cms_homes_catalogue`
VALUES (1088, 's', 'bethPhoenix', 'Beth Phoenix', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1089, 's', 'v2bethPhoenix', 'Beth Phoenix Skinny', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1090, 's', 'bg_groupinfo', 'Groupinfo Background', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1092, 's', 'bigDaddyV_001', 'Big Daddy V', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1093, 's', 'bigshow', 'Big Show', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1094, 's', 'billygraham', 'Billy Graham', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1095, 's', 'easter_birdsuit', 'Bird Suit', '210');
INSERT INTO `cms_homes_catalogue`
VALUES (1129, 's', 'blingblingstars', 'Bling Bling Stars', '9');
INSERT INTO `cms_homes_catalogue`
VALUES (1130, 's', 'blinghearts', 'Bling Hearts', '9');
INSERT INTO `cms_homes_catalogue`
VALUES (1132, 's', 'bluehockeystick', 'Blue Hockey Stick', '213');
INSERT INTO `cms_homes_catalogue`
VALUES (1133, 's', 'bluestarfish', 'Blue Starfish', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1134, 's', 'sticker_bobbaskull', 'Bobba Curse', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1136, 's', 'boborton', 'Boborton', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1137, 's', 'bonbon_duck_146x146', 'Bonbon Duck', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1138, 's', 'bonbon_mouse_146x146', 'Bonbon Mouse', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1139, 's', 'bonbon_rat_146x146', 'Bonbon Rat', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1140, 's', 'boogeyman', 'Boogeyman', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1141, 's', 'bootsitjalapaset_red', 'Bootsitjalapaset Red', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (1145, 's', 'bozzanova', 'Bozzanova', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1146, 's', 'bra_football_guest2', 'BRA Football Guest 2', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1147, 's', 'bratz_featuredclique', 'Bratz Featured Clique', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1148, 's', 'briankendrick', 'Brian Kendrick', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1149, 's', 'britishlegion', 'British Legion', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1150, 's', 'britney', 'Britney', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1152, 's', 'bullet1', 'Bullet 1', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1153, 's', 'bullybuster', 'Bullybuster', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1155, 's', 'burger', 'Burger', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1156, 's', 'ob_businesswoman_146x146', 'Businesswoman', '201');
INSERT INTO `cms_homes_catalogue`
VALUES (1157, 's', 'butterfly_01', 'Butterfly', '210');
INSERT INTO `cms_homes_catalogue`
VALUES (1159, 's', 'ca_hockeygoalie2', 'CA Hockeygoalie 2', '213');
INSERT INTO `cms_homes_catalogue`
VALUES (1160, 's', 'camel', 'Camel', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1162, 's', 'v2candiceMichelle', 'Candice Michelle', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1163, 's', 'candycorn', 'Candycorn', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1164, 's', 'carlito', 'Carlito', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1165, 's', 'cassette1', 'Cassette 1', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1166, 's', 'cassette2', 'Cassette 2', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1167, 's', 'cassette3', 'Cassette 3', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1168, 's', 'cassette4', 'Cassette 4', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1170, 's', 'sticker_celebticket_veronicas', 'Celeb Ticket Veronicas', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1171, 's', 'cena', 'Cena', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1174, 's', 'ob_cheerleader_146x146', 'Cheerleader', '201');
INSERT INTO `cms_homes_catalogue`
VALUES (1175, 's', 'Cheese_BadgeSticker', 'Cheese Badge', '204');
INSERT INTO `cms_homes_catalogue`
VALUES (1177, 's', 'CheeseSuit', 'Cheese Suit Sticker', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (1178, 's', 'cheshirecat', 'Cheshirecat', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1180, 's', 'chile', 'Chile', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1181, 's', 'chocolates2', 'Chocolates', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1183, 's', 'chrisjericho', 'Chris Jericho', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1184, 's', 'chuckpalumbo', 'Chuck Palumbo', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1185, 's', 'clothesline', 'Clothes line', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1187, 's', 'cmpunk', 'CM Punk', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1188, 's', 'cn_teleskull', 'CN Teleskull', '10');
INSERT INTO `cms_homes_catalogue`
VALUES (1190, 's', 'cny_dragon_body_l', 'CNY Dragon Body L', '217');
INSERT INTO `cms_homes_catalogue`
VALUES (1191, 's', 'cny_dragon_body_r', 'CNY Dragon Body R', '217');
INSERT INTO `cms_homes_catalogue`
VALUES (1192, 's', 'cny_dragon_head_l', 'CNY Dragon Head L', '217');
INSERT INTO `cms_homes_catalogue`
VALUES (1193, 's', 'cny_dragon_head_r', 'CNY Dragon Head R', '217');
INSERT INTO `cms_homes_catalogue`
VALUES (1195, 's', 'cny_kungfu_dude', 'CNY Kunfu Dude', '217');
INSERT INTO `cms_homes_catalogue`
VALUES (1197, 's', 'cny_kungfu_girl', 'CNY Kunfu Girl', '217');
INSERT INTO `cms_homes_catalogue`
VALUES (1198, 's', 'colombia', 'Colombia', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1199, 's', 'comma', 'Comma', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (1206, 's', 'curthawkins', 'Curt Hawkins', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1208, 's', 'dagofhabbo_trophy', 'Dag of Habbo Trophy', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1209, 's', 'dagornot', 'DagorNot', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1210, 's', 'de_bday_4', 'DE 4th Bday', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1217, 's', 'goth_border_horizontal', 'Deal goth border Horizontale', '7');
INSERT INTO `cms_homes_catalogue`
VALUES (1218, 's', 'goth_border_vertical', 'deal goth border Verticale', '7');
INSERT INTO `cms_homes_catalogue`
VALUES (1219, 's', 'dhsmith', 'DH Smith', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1220, 's', 'diadeinternetsticker2008_001', 'Dia de Internetsticker 2008', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1221, 's', 'diamond_reward', 'Diamond Reward', '9');
INSERT INTO `cms_homes_catalogue`
VALUES (1222, 's', 'dimsims', 'Dim Sims', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1223, 's', 'dk_bobbacurse_2', 'DK Bobbacurse 2', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1224, 's', 'doelee', 'Doelee', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1225, 's', 'donk', 'Donk', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1227, 's', 'dudesons', 'Dudesons', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1228, 's', 'Durian2', 'Durian', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1231, 's', 'easter_bird', 'Easter Bird', '210');
INSERT INTO `cms_homes_catalogue`
VALUES (1236, 's', 'easter_broomstick_001', 'Easter Broomstick_001', '210');
INSERT INTO `cms_homes_catalogue`
VALUES (1238, 's', 'easter_bunnymoped', 'Easter Bunnymoped', '210');
INSERT INTO `cms_homes_catalogue`
VALUES (1240, 's', 'easter_carrot_rocket', 'Easter Carrot_rocket', '210');
INSERT INTO `cms_homes_catalogue`
VALUES (1251, 's', 'easter_pointyhat', 'Easter Pointyhat', '210');
INSERT INTO `cms_homes_catalogue`
VALUES (1253, 's', 'easter_rabbit_in_hole', 'Easter Rabbit_in_hole', '210');
INSERT INTO `cms_homes_catalogue`
VALUES (1255, 's', 'easteregg_costume', 'Easter Egg Costume', '210');
INSERT INTO `cms_homes_catalogue`
VALUES (1258, 's', 'edge', 'Edge', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1259, 's', 'edito_fisherman_bait', 'Edito Fisherman Bait', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1260, 's', 'edito_logo', 'Edito Logo', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1263, 's', 'eggs', 'Eggs', '10');
INSERT INTO `cms_homes_catalogue`
VALUES (1264, 's', 'elegant_bling', 'Elegant Bling', '9');
INSERT INTO `cms_homes_catalogue`
VALUES (1265, 's', 'elijahburke', 'Elijah Burke', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1269, 's', 'evil_giant_bunny', 'Evil Giant Bunny', '10');
INSERT INTO `cms_homes_catalogue`
VALUES (1270, 's', 'exclamation', 'Exclamation', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (1271, 's', 'exe_sticker_cheappen', 'Executive Cheappen', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1272, 's', 'exe_sticker_luxurypen', 'Executive Luxurypen', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1276, 's', 'extreme_dudesons', 'Extreme Dudesons', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1277, 's', 'eyeleft', 'Eye Left', '10');
INSERT INTO `cms_homes_catalogue`
VALUES (1278, 's', 'eyeright', 'Eye Right', '10');
INSERT INTO `cms_homes_catalogue`
VALUES (1280, 's', 'fantasticfourlogo', 'Fantastic Four Logo', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1281, 's', 'featuredgroup', 'Featuredgroup', '50');
INSERT INTO `cms_homes_catalogue`
VALUES (1283, 's', 'featuredgroup_sticker', 'Featuredgroup Sticker', '50');
INSERT INTO `cms_homes_catalogue`
VALUES (1284, 's', 'felix01', 'Felix 1', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1285, 's', 'felix02', 'Felix 2', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1286, 's', 'felix03', 'Felix 3', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1289, 's', 'festus', 'Festus', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1291, 's', 'fi_golden_snake', 'FI Golden Snake', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1292, 's', 'fi_koirakisu2', 'FI Koirakisu 2', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1293, 's', 'fi_mino', 'FI Mino', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1294, 's', 'fi_posti_box', 'FI Posti Box', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1295, 's', 'fi_posti_girl', 'FI Posti Girl', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1297, 's', 'fieldberries', 'Fieldberries', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1298, 's', 'fiesta_chica_tampax', 'Fiesta Chica Tampax', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1299, 's', 'fiesta_minifalda_1', 'Fiesta Minifalda 1', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1300, 's', 'fiesta_minifalda_2', 'Fiesta Minifalda 2', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1301, 's', 'fiesta_welcome', 'Fiesta Welcome', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1302, 's', 'filmstrip_corner_botleft', 'Filmstrip Corner Botleft', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1303, 's', 'filmstrip_corner_botright', 'Filmstrip Corner Botright', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1304, 's', 'filmstrip_corner_topleft', 'Filmstrip Corner Topleft', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1305, 's', 'filmstrip_corner_topright', 'Filmstrip Corner Topright', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1306, 's', 'filmstrip_horiz', 'Filmstrip Horiz', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1307, 's', 'filmstrip_vert', 'Filmstrip Vert', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1308, 's', 'finger_push', 'Finger Push', '12');
INSERT INTO `cms_homes_catalogue`
VALUES (1309, 's', 'fish', 'Fish', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1312, 's', 'flower2', 'Flower 2', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1313, 's', 'football', 'Football', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1314, 's', 'freeHugs', 'Free Hugs', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1317, 's', 'funaki', 'Funaki', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1318, 's', 'fwrk_blue', 'FWRK Blue', '223');
INSERT INTO `cms_homes_catalogue`
VALUES (1319, 's', 'fwrk_pink', 'FWRK Pink', '223');
INSERT INTO `cms_homes_catalogue`
VALUES (1320, 's', 'fwrk_yellow', 'FWRK Yellow', '223');
INSERT INTO `cms_homes_catalogue`
VALUES (1324, 's', 'gaspar', 'Gaspar', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1327, 's', 'gaursticker3', 'Gaursticker 3', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1328, 's', 'sticker_geniefirehead', 'Genie Fire Head', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (1330, 's', 'gf_hotornot_blue', 'Girlfriend Blue', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1331, 's', 'gf_hotornot_pink', 'Girlfriend Pink', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1332, 's', 'globalw_sticker', 'Global World Sticker', '235');
INSERT INTO `cms_homes_catalogue`
VALUES (1337, 's', 'gorillahand1', 'Gorilla Hand 1', '10');
INSERT INTO `cms_homes_catalogue`
VALUES (1338, 's', 'gorillahand2', 'Gorilla Hand 2', '10');
INSERT INTO `cms_homes_catalogue`
VALUES (1344, 's', 'gothic_draculacape', 'Gothic Draculacape', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1346, 's', 'gothic_scienceplatform', 'Gothic Scienceplatform', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (1352, 's', 'gravesticker', 'Grave Sticker', '10');
INSERT INTO `cms_homes_catalogue`
VALUES (1353, 's', 'gravesticker2', 'Grave Sticker 2', '10');
INSERT INTO `cms_homes_catalogue`
VALUES (1354, 's', 'greenhockeystick', 'Green Hockey Stick', '213');
INSERT INTO `cms_homes_catalogue`
VALUES (1360, 's', 'grunge_polaroid_1', 'Grunge Polaroid 1', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1361, 's', 'grunge_polaroid_2', 'Grunge Polaroid 2', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1362, 's', 'grunge_polaroid_3', 'Grunge Polaroid 3', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1363, 's', 'grunge_polaroid_4', 'Grunge Polaroid 4', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1364, 's', 'grunge_polaroid_5', 'Grunge Polaroid 5', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1365, 's', 'guard1', 'Guard 1', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1366, 's', 'guard2', 'Guard 2', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1367, 's', 'guccimama', 'Guccimama', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1370, 's', 'habbo_island', 'Habbo Island', '207');
INSERT INTO `cms_homes_catalogue`
VALUES (1372, 's', 'habbobynightsticker', 'Habbo By Night-sticker', '10');
INSERT INTO `cms_homes_catalogue`
VALUES (1373, 's', 'habbohome_of_the_month', 'Habbohome Of The Month', '50');
INSERT INTO `cms_homes_catalogue`
VALUES (1375, 's', 'habborella_logo', 'Habborella Logo', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1377, 's', 'hacksaw', 'Hacksaw', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1378, 's', 'hat_clown2', 'Hat Clown 2', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (1379, 's', 'hc_hat', 'HC Hat', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (1380, 's', 'highlighter_1', 'Highlighter 1', '238');
INSERT INTO `cms_homes_catalogue`
VALUES (1381, 's', 'highlighter_2', 'Highlighter 2', '238');
INSERT INTO `cms_homes_catalogue`
VALUES (1382, 's', 'highlighter_mark1', 'Highlighter Mark 1', '238');
INSERT INTO `cms_homes_catalogue`
VALUES (1383, 's', 'highlighter_mark2', 'Highlighter Mark 2', '238');
INSERT INTO `cms_homes_catalogue`
VALUES (1384, 's', 'highlighter_mark3', 'Highlighter Mark 3', '238');
INSERT INTO `cms_homes_catalogue`
VALUES (1385, 's', 'highlighter_mark4b', 'Highlighter Mark 4', '238');
INSERT INTO `cms_homes_catalogue`
VALUES (1386, 's', 'highlighter_mark5', 'Highlighter Mark 5', '238');
INSERT INTO `cms_homes_catalogue`
VALUES (1387, 's', 'highlighter_mark6', 'Highlighter Mark 6', '238');
INSERT INTO `cms_homes_catalogue`
VALUES (1388, 's', 'hockey_habbo', 'Hockey Habbo', '213');
INSERT INTO `cms_homes_catalogue`
VALUES (1389, 's', 'hockeyref', 'Hockeyref', '213');
INSERT INTO `cms_homes_catalogue`
VALUES (1390, 's', 'holycarp', 'Holycarp', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1391, 's', 'homer', 'Homer', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1392, 's', 'horizontalink', 'Horizontalink', '238');
INSERT INTO `cms_homes_catalogue`
VALUES (1393, 's', 'hornswoggle', 'Hornswoggle', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1394, 's', 'hp_guest', 'HP Guest', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1429, 's', 'hw_3d_glasses', '3d Glasses', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1430, 's', 'hw_actionstar', 'Actionstar', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1431, 's', 'hw_amp_big', 'Amp Big', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1432, 's', 'hw_amp_small', 'Amp Small', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1433, 's', 'bartender_costume', 'Bartender Costume', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1434, 's', 'hw_bassplayer_boy', 'Bassplayer Boy', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1435, 's', 'hw_bassplayer_girl', 'Bassplayer Girl', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1437, 's', 'val_bgpattern_skull', 'Skull Background', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1438, 's', 'hw_bigcamera', 'Bigcamera', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1439, 's', 'hw_bouncers', 'Bouncers', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1440, 's', 'hw_camera_l', 'Camera L', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1441, 's', 'hw_camera_r', 'Camera R', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1445, 's', 'hw_carpet_corner_down', 'Carpet Corner Down', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1446, 's', 'hw_carpet_corner_up', 'Carpet Corner Up', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1447, 's', 'hw_carpet_end_ldown', 'Carpet End Ldown', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1448, 's', 'hw_carpet_end_lup', 'Carpet End Lup', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1449, 's', 'hw_carpet_end_rdown', 'Carpet End Rdown', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1450, 's', 'hw_carpet_end_rup', 'Carpet End Rup', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1451, 's', 'hw_carpet_l', 'Carpet L', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1452, 's', 'hw_carpet_r', 'Carpet R', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1453, 's', 'hw_drummer_boy', 'Drummer Boy', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1454, 's', 'hw_drummer_girl', 'Drummer Girl', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1456, 's', 'hw_guitarplayer_black', 'Guitarplayer Black', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1457, 's', 'hw_guitarplayer_white', 'Guitarplayer White', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1458, 's', 'hw_hairspray', 'Hairspray', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1459, 's', 'hw_hippie_2', 'Hippie', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1460, 's', 'hw_hitcher', 'Hitcher', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1461, 's', 'hw_inmate', 'Inmate', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1462, 's', 'hw_kenny_burger', 'Kenny Burger', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1463, 's', 'hw_kenny_fight', 'Kenny Fight', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1464, 's', 'hw_kenny_shock', 'Kenny Shock', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1465, 's', 'hw_keyboards', 'Keyboards', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1468, 's', 'hw_logoanim', 'Logoanim', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1469, 's', 'hw_mega_afro', 'Mega Afro', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1470, 's', 'hw_microphone', 'Microphone', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1471, 's', 'hw_moh_logo', 'Moh Logo', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1472, 's', 'hw_shades', 'Shades', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1473, 's', 'hw_speedobunny', 'Speedobunny', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1474, 's', 'val_lovecostume3', 'Valentine Love Costume', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1477, 's', 'hwood07_klaffi2', 'Habbowood Klaffi 2', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1480, 's', 'i_love_bobba2', 'I love Bobba', '204');
INSERT INTO `cms_homes_catalogue`
VALUES (1481, 's', 'i_love_coffee', 'I love Coffee', '204');
INSERT INTO `cms_homes_catalogue`
VALUES (1483, 's', 'icecube_big', 'Icecube Big', '235');
INSERT INTO `cms_homes_catalogue`
VALUES (1484, 's', 'icecube_small', 'Icecube Small', '235');
INSERT INTO `cms_homes_catalogue`
VALUES (1488, 's', 'sticker_antiSquidF', 'Inked Antisquidf', '239');
INSERT INTO `cms_homes_catalogue`
VALUES (1489, 's', 'sticker_antisquidm', 'Inked Antisquidm', '239');
INSERT INTO `cms_homes_catalogue`
VALUES (1490, 's', 'sticker_antiSquidRank', 'Inked Antisquidrank', '239');
INSERT INTO `cms_homes_catalogue`
VALUES (1491, 's', 'sticker_inkedblink', 'Inked Inkedblink', '239');
INSERT INTO `cms_homes_catalogue`
VALUES (1492, 's', 'sticker_amberLamp', 'Inked Lamp', '239');
INSERT INTO `cms_homes_catalogue`
VALUES (1493, 's', 'sticker_inkedLove', 'Inked Love', '239');
INSERT INTO `cms_homes_catalogue`
VALUES (1494, 's', 'sticker_inkedPoster', 'Inked Poster', '239');
INSERT INTO `cms_homes_catalogue`
VALUES (1495, 's', 'sticker_inkedShip', 'Inked Ship', '239');
INSERT INTO `cms_homes_catalogue`
VALUES (1496, 's', 'sticker_inkedSpit', 'Inked Spit', '239');
INSERT INTO `cms_homes_catalogue`
VALUES (1497, 's', 'sticker_inkedPants', 'Inked Squidpants', '239');
INSERT INTO `cms_homes_catalogue`
VALUES (1498, 's', 'sticker_inkedSquidPatrol', 'Inked Suidpatrol', '239');
INSERT INTO `cms_homes_catalogue`
VALUES (1499, 's', 'island', 'Island', '207');
INSERT INTO `cms_homes_catalogue`
VALUES (1500, 's', 'it_habbohome', 'IT Habbohome', '50');
INSERT INTO `cms_homes_catalogue`
VALUES (1501, 's', 'it_stickerpodio', 'IT Stickerpodio', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1502, 's', 'it_toilet', 'IT Toilet', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1504, 's', 'jamescurtis', 'James Curtis', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1505, 's', 'jared', 'Jared', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1506, 's', 'jarno_guest', 'Jarno Guest', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1507, 's', 'jarppi_guest', 'Jarppi Guest', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1508, 's', 'jarppi_guest2', 'Jarppi Guest 2', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1509, 's', 'jbl', 'JBL', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1510, 's', 'jeffhardy', 'Jeff Hardy', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1511, 's', 'jenkki_monster_sticker', 'Jenkki Monster Sticker', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1513, 's', 'jesse', 'Jesse', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1514, 's', 'sticker_2', 'Jigoku Shojo 1', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1515, 's', 'sticker_2', 'Jigoku Shojo 2', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1516, 's', 'jimmyhart', 'Jimmyhart', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1517, 's', 'jimmysnuka', 'Jimmysnuka', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1518, 's', 'johnmorrison', 'Johnmorrison', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1519, 's', 'jp_5years', 'JP 5 Uears', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1520, 's', 'jp_godzilla', 'JP Godzilla', '204');
INSERT INTO `cms_homes_catalogue`
VALUES (1521, 's', 'jp_sushi', 'JP Sushi', '204');
INSERT INTO `cms_homes_catalogue`
VALUES (1522, 's', 'juice', 'Juice', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1523, 's', 'jukka_guest', 'Jukka Guest', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1524, 's', 'jukka_guest2', 'Jukka Guest2', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1525, 's', 'sticker_fireworkBoom1', 'July0408 Boom 1', '223');
INSERT INTO `cms_homes_catalogue`
VALUES (1526, 's', 'sticker_auntSamantha', 'July408 Auntsamantha', '223');
INSERT INTO `cms_homes_catalogue`
VALUES (1527, 's', 'sticker_fireworkBoom2', 'July408 Boom 2', '223');
INSERT INTO `cms_homes_catalogue`
VALUES (1528, 's', 'sticker_fireworkBoom3', 'July408 Boom 3', '223');
INSERT INTO `cms_homes_catalogue`
VALUES (1529, 's', 'sticker_fireworkBoom4', 'July408 Boom 4', '223');
INSERT INTO `cms_homes_catalogue`
VALUES (1530, 's', 'sticker_flagBorder', 'July408 Border', '223');
INSERT INTO `cms_homes_catalogue`
VALUES (1531, 's', 'sticker_4th08', 'July408 July4th', '223');
INSERT INTO `cms_homes_catalogue`
VALUES (1532, 's', 'sticker_uncleSam', 'July408 Unclesam', '223');
INSERT INTO `cms_homes_catalogue`
VALUES (1534, 's', 'karigrandi_sticker', 'Karigrandi Sticker', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1535, 's', 'kennydykstra', 'Kennydy Kstra', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1536, 's', 'ketupat', 'Ketupat', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1537, 's', 'kevinthorn', 'Kevinthorn', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1538, 's', 'kfp_sticker_01', 'KFP Sticker 1', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1539, 's', 'kfp_sticker_02', 'KFP Sticker 2', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1540, 's', 'kfp_sticker_03', 'KFP Sticker 3', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1541, 's', 'kfp_sticker_04', 'KFP Sticker 4', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1542, 's', 'kfp_sticker_05', 'KFP Sticker 5', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1543, 's', 'kfp_sticker_06', 'KFP Sticker 6', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1544, 's', 'kfp_sticker_07', 'KFP Sticker 7', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1545, 's', 'kip_partnerbtn', 'KIP Partnerbtn', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1546, 's', 'kir-stamp1', 'KIR Stamp 1', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1547, 's', 'kir_bam_sticker', 'KIR Bam Sticker', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1548, 's', 'kir_elkah_sticker', 'KIR Elkah Sticker', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1549, 's', 'kir_foz_sticker', 'KIR Foz Sticker', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1550, 's', 'kir_fushi_sticker', 'KIR Fushi Sticker', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1551, 's', 'kir_stamp1', 'KIR Stamp 1', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1552, 's', 'kir_stamp2', 'KIR Stamp 2', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1553, 's', 'kir_stamp3b', 'KIR Stamp 3', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1555, 's', 'kir_stamp4', 'Kir Stamp', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1557, 's', 'kir_stamp5', 'KIR Stamp 5', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1558, 's', 'kir_stamp6', 'KIR Stamp 6', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1559, 's', 'kir_stamp6_002', 'KIR Stamp 7', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1561, 's', 'kir_sticker', 'KIR Sticker', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1562, 's', 'kir_winner_01', 'KIR Winner 1', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1563, 's', 'kir_winner_02', 'KIR Winner 2', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1564, 's', 'kir_winner_03', 'KIR Winner 3', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1565, 's', 'kir_winner_04', 'KIR Winner 4', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1566, 's', 'kir_winner_05', 'KIR Winner 5', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1567, 's', 'kir_winner_06', 'KIR Winner 6', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1568, 's', 'kir_winner_07', 'KIR Winner 7', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1569, 's', 'kir_winner_08', 'KIR Winner 8', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1570, 's', 'kir_winner_09', 'KIR Winner 9', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1571, 's', 'kir_winner_10', 'KIR Winner 10', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1572, 's', 'kir_winner_11', 'KIR Winner 11', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1573, 's', 'kir_yobbo_sticker', 'KIR Yobbo Sticker', '225');
INSERT INTO `cms_homes_catalogue`
VALUES (1574, 's', 'kitsune_wonders', 'Kitsune Wonders', '224');
INSERT INTO `cms_homes_catalogue`
VALUES (1575, 's', 'kitsune_yelling', 'Kitsune Yelling', '224');
INSERT INTO `cms_homes_catalogue`
VALUES (1576, 's', 'kitune_fighting', 'Kitune Fighting', '224');
INSERT INTO `cms_homes_catalogue`
VALUES (1580, 's', 'krans', 'Krans', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1582, 's', 'lamp_single_1', 'Lamp 1', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1583, 's', 'lamp_single_2', 'Lamp 2', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1584, 's', 'lamp_single_3', 'Lamp 3', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1585, 's', 'lamp_single_4', 'Lamp 4', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1586, 's', 'lamp_group', 'Lamp Group', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1588, 's', 'lapanen_blue', 'Lapanen Blue', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1593, 's', 'lapanen_purple', 'Lapanen Purple', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1594, 's', 'lapanen_red', 'Lapanen Red', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1596, 's', 'lapanen_yellow', 'Lapanen Yellow', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1597, 's', 'lashey', 'Lashey', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1598, 's', 'leafs1', 'Leafs 1', '7');
INSERT INTO `cms_homes_catalogue`
VALUES (1600, 's', 'leapday', 'Leapday', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1604, 's', 'lightbulb', 'Lightbulb', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1605, 's', 'limo_back', 'Limo Back', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1606, 's', 'limo_doorpiece', 'Limo Doorpiece', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1607, 's', 'limo_front', 'Limo Front', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1608, 's', 'limo_windowpiece', 'Limo Windowpiece', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1609, 's', 'line', 'Linha', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (1610, 's', 'linnsticker', 'Linnsticker', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1614, 's', 'loderse', 'Loderse', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1616, 's', 'lovebed', 'Lovebed', '226');
INSERT INTO `cms_homes_catalogue`
VALUES (1622, 's', 'mansikka_tarra', 'Mansikka Tarra', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1623, 's', 'v2Maria', 'Maria', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1624, 's', 'markhenry', 'Mark Henry', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1625, 's', 'matthardy', 'Matt Hardy', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1626, 's', 'mattstriker', 'Matt Striker', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1627, 's', 'mayweather', 'May Weather', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1628, 's', 'melchor', 'Melchor', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1629, 's', 'v2Melina', 'Melina', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1631, 's', 'mexico', 'Mexico', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1633, 's', 'midsommar_1', 'Mid Sommar 1', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1634, 's', 'mikeknoxx', 'Mike Knoxx', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1635, 's', 'missj', 'Miss J', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1636, 's', 'money_o', 'Money Low', '7');
INSERT INTO `cms_homes_catalogue`
VALUES (1637, 's', 'money_stash', 'Money Stash', '7');
INSERT INTO `cms_homes_catalogue`
VALUES (1638, 's', 'money_v', 'Money High', '7');
INSERT INTO `cms_homes_catalogue`
VALUES (1639, 's', 'mooncake_dark', 'Mooncake Dark', '217');
INSERT INTO `cms_homes_catalogue`
VALUES (1640, 's', 'mooncake_light', 'Mooncake Light', '217');
INSERT INTO `cms_homes_catalogue`
VALUES (1641, 's', 'mrkennedy', 'Mr Kennedy', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1642, 's', 'mummimor', 'Mummimor', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1644, 's', 'nail2', 'Nail 2', '12');
INSERT INTO `cms_homes_catalogue`
VALUES (1645, 's', 'nail3', 'Nail 3', '12');
INSERT INTO `cms_homes_catalogue`
VALUES (1646, 's', 'needle_1', 'Needle 1', '12');
INSERT INTO `cms_homes_catalogue`
VALUES (1647, 's', 'needle_2', 'Needle 2', '12');
INSERT INTO `cms_homes_catalogue`
VALUES (1648, 's', 'needle_3', 'Needle 3', '12');
INSERT INTO `cms_homes_catalogue`
VALUES (1649, 's', 'needle_4', 'Needle 4', '12');
INSERT INTO `cms_homes_catalogue`
VALUES (1650, 's', 'needle_5', 'Needle 5', '12');
INSERT INTO `cms_homes_catalogue`
VALUES (1652, 's', 'newyear_2007_anim', 'Newyear 2007', '223');
INSERT INTO `cms_homes_catalogue`
VALUES (1655, 's', 'newyear_sparkler', 'Newyear Sparkler', '223');
INSERT INTO `cms_homes_catalogue`
VALUES (1656, 's', 'nigirisushi', 'Nigiri Sushi', '224');
INSERT INTO `cms_homes_catalogue`
VALUES (1657, 's', 'nl_coinguy_animated', 'NL Coinguy Animated', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1658, 's', 'nl_cupido', 'NL Cupido', '226');
INSERT INTO `cms_homes_catalogue`
VALUES (1659, 's', 'nl_downtown_costume', 'NL Downtown Costume', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (1660, 's', 'nl_firecracker', 'NL Firecracker', '217');
INSERT INTO `cms_homes_catalogue`
VALUES (1661, 's', 'nl_football_guest', 'NL Football Guest', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1662, 's', 'nl_football_guest2', 'NL Football Guest 2', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1663, 's', 'nl_limo', 'NL Limo', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1664, 's', 'nl_wanted_costume', 'NL Wanted Costume', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (1665, 's', 'no_space_sticker', 'No Space Sticker', '204');
INSERT INTO `cms_homes_catalogue`
VALUES (1666, 's', 'nowayout_slanted', 'No Way Out Slanted', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1670, 's', 'nunzio', 'Nunzio', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1671, 's', 'nz_heart', 'NZ Heart', '204');
INSERT INTO `cms_homes_catalogue`
VALUES (1672, 's', 'nz_tiki', 'NZ Tiki', '204');
INSERT INTO `cms_homes_catalogue`
VALUES (1675, 's', 'ogopogo1', 'Ogopogo 1', '217');
INSERT INTO `cms_homes_catalogue`
VALUES (1676, 's', 'oldfence_left', 'Oldfence Left', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1677, 's', 'oldfence_right', 'Oldfence Right', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1678, 's', 'orca_ideal_home', 'Orca Ideal Home', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1680, 's', 'paper_clip_1', 'Paper Clip 1', '12');
INSERT INTO `cms_homes_catalogue`
VALUES (1681, 's', 'paper_clip_2', 'Paper Clip 2', '12');
INSERT INTO `cms_homes_catalogue`
VALUES (1682, 's', 'paper_clip_3', 'Paper Clip 3', '12');
INSERT INTO `cms_homes_catalogue`
VALUES (1683, 's', 'parrot', 'Parrot', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1684, 's', 'patsday_claddagh', 'Patsday Claddagh', '241');
INSERT INTO `cms_homes_catalogue`
VALUES (1685, 's', 'patsday_kissme', 'Patsday Kissme', '241');
INSERT INTO `cms_homes_catalogue`
VALUES (1687, 's', 'patsday_potogold', 'Patsday Potogold', '241');
INSERT INTO `cms_homes_catalogue`
VALUES (1688, 's', 'patsday_shamborderh', 'Patsday Shamborderh', '241');
INSERT INTO `cms_homes_catalogue`
VALUES (1689, 's', 'patsday_shamborderv', 'Patsday Shamborderv', '241');
INSERT INTO `cms_homes_catalogue`
VALUES (1690, 's', 'patsday_shamrock', 'Patsday Shamrock', '241');
INSERT INTO `cms_homes_catalogue`
VALUES (1691, 's', 'paullondon', 'Paul London', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1692, 's', 'paulorndorff', 'Paul Orndorff', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1704, 's', 'plaster', 'Plaster', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1705, 's', 'plaster2', 'Plaster 2', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1714, 's', 'pro_eco', 'Pro Eco', '235');
INSERT INTO `cms_homes_catalogue`
VALUES (1717, 's', 'sticker_podBrains', 'Prom of the Dead Sticker Brains', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1718, 's', 'sticker_podDress', 'Prom of the Dead Sticker Dress', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1719, 's', 'sticker_podDuck', 'Prom of the Dead Sticker Duck', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1720, 's', 'sticker_podPoster', 'Prom of the Dead Sticker Poster', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1721, 's', 'sticker_podSuit', 'Prom of the Dead Sticker Suit', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1722, 's', 'sticker_podZombieGnarl', 'Prom of the Dead Sticker Zombie', '221');
INSERT INTO `cms_homes_catalogue`
VALUES (1724, 's', 'queensibidi', 'Queensibidi', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1725, 's', 'question', 'Question', '5');
INSERT INTO `cms_homes_catalogue`
VALUES (1727, 's', 'radar', 'Radar', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1728, 's', 'randyorton', 'Randy Orton', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1729, 's', 'rasta', 'Rasta', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1730, 's', 'ratv2', 'Ratv 2', '217');
INSERT INTO `cms_homes_catalogue`
VALUES (1731, 's', 'redhockeystick', 'Red Hockeystick', '213');
INSERT INTO `cms_homes_catalogue`
VALUES (1732, 's', 'redlamp', 'Redlamp', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1733, 's', 'redstarfish', 'Red Starfish', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1734, 's', 'nl_football_guest', 'Referee 1 Guest', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1736, 's', 'referee_03_guest', 'Referee 3 Guest', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1737, 's', 'reymysterio', 'Reymysterio', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1738, 's', 'ricflair', 'Ricflair', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1739, 's', 'roddypiper', 'Roddypiper', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1740, 's', 'ronsimmons', 'Ronsimmons', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1741, 's', 'sticker_rotw', 'Room of the Week', '50');
INSERT INTO `cms_homes_catalogue`
VALUES (1748, 's', 'sackcostume_thumb', 'Sack Costume', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (1749, 's', 'saferinternet2008', 'Safer Internet 2008', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1750, 's', 'samsung1', 'Samsung 1', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1751, 's', 'samsung2', 'Samsung 2', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1752, 's', 'samsung3', 'Samsung 3', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1753, 's', 'samsung4', 'Samsung 4', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1754, 's', 'samsung5', 'Samsung 5', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1756, 's', 'santinomarella', 'Santinoma Rella', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1758, 's', 'sasquatch7', 'Sasquatch', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1759, 's', 'sasquatch_hands', 'Sasquatch Hands', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (1760, 's', 'satay', 'Satay', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1761, 's', 'scubacapsule_anim', 'Scubacapsule Anim', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (1762, 's', 'se_sticker_competition', 'SE Sticker Competition', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (1763, 's', 'seagull_01', 'Seagull 1', '207');
INSERT INTO `cms_homes_catalogue`
VALUES (1764, 's', 'seagull_02', 'Seagull 2', '207');
INSERT INTO `cms_homes_catalogue`
VALUES (1768, 's', 'sergeantslaughter', 'Sergeant Slaughter', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1769, 's', 'sg_mtv_sticker_01', 'MTV Sticker 1', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1770, 's', 'sg_mtv_sticker_02', 'MTV Sticker 2', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1771, 's', 'sg_mtv_sticker_03', 'MTV Sticker 3', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1772, 's', 'shell', 'Shell', '207');
INSERT INTO `cms_homes_catalogue`
VALUES (1773, 's', 'sheltonbenjamin', 'Shelton Benjamin', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1774, 's', 'shrubbery', 'Shrubbery', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1776, 's', 'skeletor_001', 'Skeletor 1', '10');
INSERT INTO `cms_homes_catalogue`
VALUES (1777, 's', 'skull', 'Skull', '10');
INSERT INTO `cms_homes_catalogue`
VALUES (1778, 's', 'skull2', 'Skull 2', '10');
INSERT INTO `cms_homes_catalogue`
VALUES (1780, 's', 'michaels', 'Smichaels', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1781, 's', 'snitsky', 'Snitsky', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1782, 's', 'snowball', 'Snowball', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1783, 's', 'snowball_bumpy', 'Snowball Bumpy', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1785, 's', 'GiocatoreA1', 'Soccer Dude 1', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1786, 's', 'GiocatoreA', 'Soccer Dude 2', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1787, 's', 'GiocatoreA3', 'Soccer Dude 3', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1788, 's', 'giocatoreA4', 'Soccer Dude 4', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1789, 's', 'giocatoreA5', 'Soccer Dude 5', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1830, 's', 'sofresh', 'Sofresh', '204');
INSERT INTO `cms_homes_catalogue`
VALUES (1831, 's', 'sticker_goblin1_l', 'spiderwick Goblin 1 L', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1832, 's', 'sticker_goblin1_r', 'spiderwick Goblin 1 R', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1833, 's', 'sticker_goblin2_l', 'spiderwick Goblin 2 L', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1834, 's', 'sticker_goblin2_r', 'spiderwick Goblin 2 R', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1835, 's', 'sticker_goblin_anim_l', 'spiderwick Goblin Anim L', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1836, 's', 'sticker_goblin_anim_r', 'spiderwick Goblin Anim R', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1837, 's', 'sticker_griffin_l', 'spiderwick Griffin L', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1838, 's', 'sticker_griffin_r', 'spiderwick Griffin R', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1839, 's', 'sticker_sprite1_l', 'spiderwick Sprite 1 L', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1840, 's', 'sticker_sprite1_r', 'spiderwick Sprite 1 R', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1841, 's', 'sticker_sprite2_l', 'spiderwick Sprite 2 L', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1842, 's', 'sticker_sprite2_r', 'spiderwick Sprite 2 R', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1845, 's', 'spill1', 'Spill 1', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1846, 's', 'spill2', 'Spill 2', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1847, 's', 'spill3', 'Spill 3', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1848, 's', 'spotlight_sticker_002', 'Spotlight Sticker', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1849, 's', 'spotlight_sticker2_001', 'Spotlight Sticker 2', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1852, 's', 'spray1', 'Spray', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1853, 's', 'spray2', 'Spray 2', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1854, 's', 'squib', 'Squib', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1869, 's', 'stanleycupsticker', 'Stanley Cup Sticker', '213');
INSERT INTO `cms_homes_catalogue`
VALUES (1872, 's', 'starburst', 'Starburst', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1873, 's', 'stevierichards', 'Stevie Richards', '209');
INSERT INTO `cms_homes_catalogue`
VALUES (1877, 's', '3_years_usa', 'Sticker 3 Years', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1879, 's', 'sticker_arrow_down', 'Sticker Arrow Down', '12');
INSERT INTO `cms_homes_catalogue`
VALUES (1880, 's', 'sticker_arrow_left', 'Sticker Arrow Left', '12');
INSERT INTO `cms_homes_catalogue`
VALUES (1881, 's', 'sticker_arrow_right', 'Sticker Arrow Right', '12');
INSERT INTO `cms_homes_catalogue`
VALUES (1882, 's', 'sticker_arrow_up', 'Sticker Arrow Up', '12');
INSERT INTO `cms_homes_catalogue`
VALUES (1883, 's', 'sticker_award_bronze', 'Sticker Award Bronze', '50');
INSERT INTO `cms_homes_catalogue`
VALUES (1884, 's', 'sticker_award_gold', 'Sticker Award Gold', '50');
INSERT INTO `cms_homes_catalogue`
VALUES (1886, 's', 'sticker_award_silver', 'Sticker Award Silver', '50');
INSERT INTO `cms_homes_catalogue`
VALUES (1888, 's', 'sticker_bonsai_ninjaf', 'Sticker Bonsai Ninjaf', '224');
INSERT INTO `cms_homes_catalogue`
VALUES (1889, 's', 'sticker_bonsai_ninjafa', 'Sticker Bonsai Ninjafa', '224');
INSERT INTO `cms_homes_catalogue`
VALUES (1890, 's', 'sticker_bonsai_ninjam', 'Sticker Bonsai Ninjam', '224');
INSERT INTO `cms_homes_catalogue`
VALUES (1891, 's', 'sticker_bonsai_ninjama', 'Sticker Bonsai Ninjama', '224');
INSERT INTO `cms_homes_catalogue`
VALUES (1892, 's', 'sticker_bonsai_samuraif', 'Sticker Bonsai Samuraif', '224');
INSERT INTO `cms_homes_catalogue`
VALUES (1893, 's', 'sticker_bonsai_samuraifa', 'Sticker Bonsai Samuraifa', '224');
INSERT INTO `cms_homes_catalogue`
VALUES (1894, 's', 'sticker_bonsai_samuraim', 'Sticker Bonsai Samuraim', '224');
INSERT INTO `cms_homes_catalogue`
VALUES (1895, 's', 'sticker_bonsai_samuraima', 'Sticker Bonsai Samuraima', '224');
INSERT INTO `cms_homes_catalogue`
VALUES (1897, 's', 'sticker_boxer', 'Sticker Boxer', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1898, 's', 'sticker_caballoons', 'Sticker Caballoons', '213');
INSERT INTO `cms_homes_catalogue`
VALUES (1899, 's', 'sticker_cabin', 'Sticker Cabin', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1901, 's', 'sticker_cais4', 'Sticker Cais 4', '213');
INSERT INTO `cms_homes_catalogue`
VALUES (1902, 's', 'sticker_cape', 'sticker_Cape', '18');
INSERT INTO `cms_homes_catalogue`
VALUES (1903, 's', 'sticker_catinabox', 'Sticker Catinabox', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1906, 's', 'sticker_chica_tampax', 'Sticker Chica_Tampax', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1907, 's', 'sticker_chica_tampax1', 'Sticker Chica_Tampax 1', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1908, 's', 'sticker_chica_tampax2', 'Sticker Chica Tampax 2', '214');
INSERT INTO `cms_homes_catalogue`
VALUES (1909, 's', 'sticker_chips', 'Sticker Chips', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1910, 's', 'sticker_clown_anim', 'Sticker Clown Anim', '216');
INSERT INTO `cms_homes_catalogue`
VALUES (1911, 's', 'sticker_coffee_stain', 'Sticker Coffee Stain', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1912, 's', 'sticker_coffee_steam_blue', 'Sticker Coffee Steam Blue', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1913, 's', 'sticker_coffee_steam_grey', 'Sticker Coffee Steam Grey', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1914, 's', 'sticker_croco', 'Sticker Croco', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1915, 's', 'sticker_da_blingclock', 'Sticker DA Blingclock', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1916, 's', 'sticker_dreamer', 'Sticker Dreamer', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1922, 's', 'eraser', 'Sticker Eraser', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1923, 's', 'sticker_eye_anim', 'Sticker Eye Anim', '8');
INSERT INTO `cms_homes_catalogue`
VALUES (1924, 'b', '01.gif', '01', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1925, 'b', '02.gif', '02', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1926, 'b', '03.gif', '03', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1927, 'b', '05.gif', '05', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1928, 'b', '06.gif', '06', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1929, 'b', '07.gif', '07', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1930, 'b', '08.gif', '08', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1931, 'b', '09.gif', '09', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1932, 'b', '10.gif', '10', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1933, 'b', '11.gif', '11', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1934, 'b', '12.gif', '12', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1935, 'b', '13.gif', '13', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1936, 'b', '14.gif', '14', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1937, 'b', '15.gif', '15', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1938, 'b', '16.gif', '16', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1939, 'b', '17.gif', '17', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1940, 'b', '18.gif', '18', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1941, 'b', '19.gif', '19', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1942, 'b', '21.gif', '21', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1943, 'b', '22.gif', '22', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1944, 'b', '23.gif', '23', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1945, 'b', '24.gif', '24', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1946, 'b', '25.gif', '25', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1947, 'b', '26.gif', '26', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1948, 'b', '27.gif', '27', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1949, 'b', '28.gif', '28', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1950, 'b', '29.gif', '29', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1951, 'b', '2lt4saq.jpg', '2lt4saq', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1952, 'b', '30.gif', '30', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1953, 'b', '32.gif', '32', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1954, 'b', '33.gif', '33', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1955, 'b', '38.gif', '38', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1956, 'b', '39.gif', '39', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1957, 'b', '40.gif', '40', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1958, 'b', '42.gif', '42', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1959, 'b', 'BG_10.png', 'BG_10', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1960, 'b', 'Hween06_BGpattern_slime.gif', 'Hween06_BGpattern_slime', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1961, 'b', 'SOB_BG.gif', 'SOB_BG', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1962, 'b', 'SOB_BG2.gif', 'SOB_BG2', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1963, 'b', 'SOB_BG3.gif', 'SOB_BG3', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1964, 'b', 'SOB_BG4.gif', 'SOB_BG4', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1965, 'b', 'Xmas_background.gif', 'Xmas_background', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1966, 'b', 'basket_ball.gif', 'basket_ball', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1967, 'b', 'bday_background.gif.png', 'bday_background.gif', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1968, 'b', 'bg.gif', 'bg', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1969, 'b', 'bg3.png', 'bg3', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1970, 'b', 'bg_blue.gif', 'bg_blue', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1971, 'b', 'bg_colour_01.gif', 'bg_colour_01', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1972, 'b', 'bg_colour_02.gif', 'bg_colour_02', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1973, 'b', 'bg_colour_03.gif', 'bg_colour_03', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1974, 'b', 'bg_colour_04.gif', 'bg_colour_04', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1975, 'b', 'bg_colour_05.gif', 'bg_colour_05', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1976, 'b', 'bg_colour_06.gif', 'bg_colour_06', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1977, 'b', 'bg_colour_07.gif', 'bg_colour_07', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1978, 'b', 'bg_colour_08.gif', 'bg_colour_08', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1979, 'b', 'bg_colour_09.gif', 'bg_colour_09', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1980, 'b', 'bg_colour_10.gif', 'bg_colour_10', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1981, 'b', 'bg_colour_11.gif', 'bg_colour_11', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1982, 'b', 'bg_colour_12.gif', 'bg_colour_12', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1983, 'b', 'bg_colour_13.gif', 'bg_colour_13', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1984, 'b', 'bg_colour_14.gif', 'bg_colour_14', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1985, 'b', 'bg_colour_15.gif', 'bg_colour_15', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1986, 'b', 'bg_colour_16.gif', 'bg_colour_16', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1987, 'b', 'bg_crosshatch.gif', 'bg_crosshatch', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1988, 'b', 'bg_duck.gif', 'bg_duck', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1989, 'b', 'bg_empty.gif', 'bg_empty', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1990, 'b', 'bg_fish.gif', 'bg_fish', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1991, 'b', 'bg_frog.gif', 'bg_frog', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1992, 'b', 'bg_grass.gif', 'bg_grass', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1993, 'b', 'bg_grey.gif', 'bg_grey', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1994, 'b', 'bg_info.gif', 'bg_info', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1995, 'b', 'bg_love.gif', 'bg_love', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1996, 'b', 'bg_newh.gif', 'bg_newh', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1997, 'b', 'bg_newh2.gif', 'bg_newh2', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1998, 'b', 'bg_ool.gif', 'bg_ool', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (1999, 'b', 'bg_ool2.gif', 'bg_ool2', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2000, 'b', 'bg_pattern_bobbaskulls1.gif', 'bg_pattern_bobbaskulls1', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2001, 'b', 'bg_pattern_cars.gif', 'bg_pattern_cars', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2002, 'b', 'bg_pattern_clouds.gif', 'bg_pattern_clouds', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2003, 'b', 'bg_pattern_deepred.gif', 'bg_pattern_deepred', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2004, 'b', 'bg_petal.gif', 'bg_petal', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2005, 'b', 'bg_pink.gif', 'bg_pink', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2006, 'b', 'bg_teal.gif', 'bg_teal', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2007, 'b', 'bg_tiles.gif', 'bg_tiles', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2008, 'b', 'bg_water.gif', 'bg_water', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2009, 'b', 'bg_wood.gif', 'bg_wood', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2010, 'b', 'bg_wooden.gif', 'bg_wooden', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2011, 'b', 'bg_xer.gif', 'bg_xer', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2012, 'b', 'bga.gif', 'bga', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2013, 'b', 'bgblue.gif', 'bgblue', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2014, 'b', 'bubble.gif', 'bubble', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2015, 'b', 'bunnybackround.gif', 'bunnybackround', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2016, 'b', 'duck_back.gif', 'duck_back', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2017, 'b', 'greenbg.gif', 'greenbg', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2018, 'b', 'ham_back.gif', 'ham_back', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2019, 'b', 'hp_back1.gif', 'hp_back1', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2020, 'b', 'hp_back10.gif', 'hp_back10', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2021, 'b', 'hp_back11.gif', 'hp_back11', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2022, 'b', 'hp_back13.gif', 'hp_back13', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2023, 'b', 'hp_back14.gif', 'hp_back14', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2024, 'b', 'hp_back17.gif', 'hp_back17', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2025, 'b', 'hp_back18.gif', 'hp_back18', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2026, 'b', 'hp_back19.gif', 'hp_back19', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2027, 'b', 'hp_back20.gif', 'hp_back20', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2028, 'b', 'hp_back21.gif', 'hp_back21', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2029, 'b', 'hp_back22.gif', 'hp_back22', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2030, 'b', 'hp_back3.gif', 'hp_back3', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2031, 'b', 'hp_back4.gif', 'hp_back4', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2032, 'b', 'hp_back5.gif', 'hp_back5', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2033, 'b', 'hp_back8.gif', 'hp_back8', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2034, 'b', 'hp_back9.gif', 'hp_back9', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2035, 'b', 'inside.gif', 'inside', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2036, 'b', 'inside7.gif', 'inside7', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2037, 'b', 'inside_1.gif', 'inside_1', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2038, 'b', 'inside_10.gif', 'inside_10', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2039, 'b', 'inside_11.gif', 'inside_11', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2040, 'b', 'inside_12.gif', 'inside_12', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2041, 'b', 'inside_13.gif', 'inside_13', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2042, 'b', 'inside_14.gif', 'inside_14', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2043, 'b', 'inside_15.gif', 'inside_15', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2044, 'b', 'inside_16.gif', 'inside_16', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2045, 'b', 'inside_2.gif', 'inside_2', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2046, 'b', 'inside_3.gif', 'inside_3', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2047, 'b', 'inside_4.gif', 'inside_4', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2048, 'b', 'inside_5.gif', 'inside_5', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2049, 'b', 'inside_6.gif', 'inside_6', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2050, 'b', 'inside_8.gif', 'inside_8', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2051, 'b', 'inside_9.gif', 'inside_9', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2052, 'b', 'loveduck_back.gif', 'loveduck_back', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2053, 'b', 'modebackround.gif', 'modebackround', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2054, 'b', 'newbg.png', 'newbg', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2055, 'b', 'pinkbg.gif', 'pinkbg', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2056, 'b', 'qmarkbackround.gif', 'qmarkbackround', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2057, 'b', 'snowbg1.gif', 'snowbg1', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2058, 'b', 'snowbg2.gif', 'snowbg2', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2059, 'b', 'snowflake_us.gif', 'snowflake_us', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2060, 'b', 'soccer_bg.gif', 'soccer_bg', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2061, 'b', 'spiders.gif', 'spiders', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2062, 'b', 'ss_bg.gif', 'ss_bg', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2063, 'b', 'star_sky.gif', 'star_sky', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2064, 'b', 'star_sky2.gif', 'star_sky2', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2065, 'b', 'streets_background.gif', 'streets_background', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2066, 'b', 'streets_background2.gif', 'streets_background2', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2067, 'b', 'streets_background3.gif', 'streets_background3', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2068, 'b', 'streets_background4.gif', 'streets_background4', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2069, 'b', 'stripes.gif', 'stripes', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2070, 'b', 'val_bg.gif', 'val_bg', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2071, 'b', 'vara.gif', 'vara', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2072, 'b', 'vara1.gif', 'vara1', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2073, 'b', 'vara2.gif', 'vara2', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2074, 'b', 'vara3.gif', 'vara3', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2075, 'b', 'vara4.gif', 'vara4', '0');
INSERT INTO `cms_homes_catalogue`
VALUES (2076, 'b', 'xmas_bgpattern_starsky.gif', 'xmas_bgpattern_starsky', '0');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (3, 's', 'Trax');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (5, 's', 'Alphabet Plastic');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (6, 's', 'Alphabet Bling');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (7, 's', 'Borders');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (8, 's', 'Others');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (9, 's', 'Sparkles');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (10, 's', 'Halloween');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (12, 's', 'Pointers');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (13, 's', 'Floral');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (14, 's', 'FX');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (15, 's', 'SnowStorm');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (16, 's', 'Battleball');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (18, 's', 'Costume');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (50, 's', 'Prizes');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (201, 's', 'OB');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (204, 's', 'Buttons');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (205, 's', 'Alhambra');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (207, 's', 'Beach');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (209, 's', 'WWE');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (210, 's', 'Easter');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (213, 's', 'Hockey');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (214, 's', 'Advertisement');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (216, 's', 'Avatars');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (217, 's', 'China');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (221, 's', 'Hollywood');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (223, 's', 'Celebration');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (224, 's', 'Japanese');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (225, 's', 'Keep it Real');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (226, 's', 'Valentines');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (235, 's', 'Environment');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (236, 's', 'Banks');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (238, 's', 'Highlighters');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (239, 's', 'Inked');
INSERT INTO `cms_homes_catalogue_cats`
VALUES (241, 's', 'St Patricks');
SET
FOREIGN_KEY_CHECKS = 1;
