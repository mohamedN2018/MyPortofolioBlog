--
-- File generated with SQLiteStudio v3.4.17 on Sun Jun 29 10:54:48 2025
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: about_about
CREATE TABLE IF NOT EXISTS about_about (
    id                       INTEGER       NOT NULL
                                           PRIMARY KEY AUTOINCREMENT,
    about                    TEXT          NULL,
    description_about        TEXT          NULL,
    birthday_about           DATE          NULL,
    website_link             VARCHAR (200) NULL,
    age_about                INTEGER       NULL,
    degree                   VARCHAR (255) NULL,
    freelance_about          VARCHAR (255) NULL,
    created_at               DATETIME      NOT NULL,
    updated_at               DATETIME      NOT NULL,
    images_about             VARCHAR (100) NULL,
    title_head_line          VARCHAR (255) NULL,
    description_bottom_about TEXT          NULL,
    description_main_about   TEXT          NULL
);

INSERT INTO about_about (id, about, description_about, birthday_about, website_link, age_about, degree, freelance_about, created_at, updated_at, images_about, title_head_line, description_bottom_about, description_main_about) VALUES (1, 'About', 'An ambitious web developer who has taught himself programming from home, I seek to use my skills in designing and developing modern websites and applications, with strong practical experience in continuous learning and solving programming problems', '2003-01-07', 'https://mohamednabilpro.netlify.app/', 23, 'Master', 'Avalble', '2025-06-28 14:36:36.400008', '2025-06-28 15:35:41.884982', 'about/IMG_20230204_155920_729.jpg', 'UI/UX Designer & Full Stack web Development|', 'MohaMed NabiL Pro An ambitious web developer who has taught himself programming from home, I seek to use my skills in designing and developing modern websites and applications, with strong practical experience in continuous learning and solving programmin', 'An ambitious web developer who has taught himself programming from home, I seek to use my skills in designing and developing modern websites and applications, with strong practical experience in continuous learning and solving programming problems in innovative ways.');

-- Table: about_about_list
CREATE TABLE IF NOT EXISTS about_about_list (
    id                INTEGER       NOT NULL
                                    PRIMARY KEY AUTOINCREMENT,
    about_list        VARCHAR (255) NULL,
    description_list  TEXT          NOT NULL,
    created_at        DATETIME      NOT NULL,
    updated_at        DATETIME      NOT NULL,
    slug              VARCHAR (50)  NULL
                                    UNIQUE,
    title_about       VARCHAR (255) NULL,
    images_about_list VARCHAR (100) NULL
);

INSERT INTO about_about_list (id, about_list, description_list, created_at, updated_at, slug, title_about, images_about_list) VALUES (1, 'front end', 'frontend Sunt rem odit accusantium omnis perspiciatis officia. Laboriosam aut consequuntur recusandae mollitia doloremque est architecto cupiditate ullam. Quia est ut occaecati fuga. Distinctio ex repellendus eveniet velit sint quia sapiente cumque. Et ipsa perferendis ut nihil. Laboriosam vel voluptates tenetur nostrum. Eaque iusto cupiditate et totam et quia dolorum in. Sunt molestiae ipsum at consequatur vero. Architecto ut pariatur autem ad non cumque nesciunt qui maxime. Sunt eum quia impedit dolore alias explicabo ea.', '2025-06-28 16:31:52.100969', '2025-06-29 07:20:44.167470', 'frontend', 'frontend Temporibus et in vero dicta aut eius lidero plastis trand lined voluptas dolorem ut voluptas', 'list/berlio_-_Brave_12_29_2022_1_17_51_PM_2.png');
INSERT INTO about_about_list (id, about_list, description_list, created_at, updated_at, slug, title_about, images_about_list) VALUES (2, 'backend', 'backend backend gooooooood', '2025-06-28 16:37:33.090286', '2025-06-29 07:20:38.909167', 'backend', 'backend Temporibus et in vero dicta aut eius lidero plastis trand lined voluptas dolorem ut voluptas', 'list/cse3.jpg');
INSERT INTO about_about_list (id, about_list, description_list, created_at, updated_at, slug, title_about, images_about_list) VALUES (4, 'full stack', 'Sunt rem odit accusantium omnis perspiciatis officia. Laboriosam aut consequuntur recusandae mollitia doloremque est architecto cupiditate ullam. Quia est ut occaecati fuga. Distinctio ex repellendus eveniet velit sint quia sapiente cumque. Et ipsa perferendis ut nihil. Laboriosam vel voluptates tenetur nostrum. Eaque iusto cupiditate et totam et quia dolorum in. Sunt molestiae ipsum at consequatur vero. Architecto ut pariatur autem ad non cumque nesciunt qui maxime. Sunt eum quia impedit dolore alias explicabo ea.', '2025-06-28 18:44:29.686264', '2025-06-29 07:20:32.870167', 'fullstack', 'Temporibus et in vero dicta aut eius lidero plastis trand lined voluptas dolorem ut voluptas', 'list/Screenshot3_AyZzJ07.png');

-- Table: about_downloadcv
CREATE TABLE IF NOT EXISTS about_downloadcv (
    id         INTEGER       NOT NULL
                             PRIMARY KEY AUTOINCREMENT,
    title_down VARCHAR (255) NULL,
    name_down  VARCHAR (255) NULL,
    file       VARCHAR (100) NULL,
    created_at DATETIME      NOT NULL,
    updated_at DATETIME      NOT NULL
);

INSERT INTO about_downloadcv (id, title_down, name_down, file, created_at, updated_at) VALUES (1, 'CV PDF English', 'CV PDF English', 'files/screencapture-mohamednabilpro-netlify-app-templates-cv-2025-06-18-17_37_12.pdf', '2025-06-29 06:28:45.190241', '2025-06-29 06:46:31.924801');

-- Table: accounts_profile
CREATE TABLE IF NOT EXISTS accounts_profile (
    id              INTEGER       NOT NULL
                                  PRIMARY KEY AUTOINCREMENT,
    bio             TEXT          NULL,
    phone           VARCHAR (15)  NULL,
    address         VARCHAR (255) NULL,
    date_of_birth   DATE          NULL,
    created_at      DATETIME      NOT NULL,
    updated_at      DATETIME      NOT NULL,
    links           VARCHAR (200) NULL,
    user_id         INTEGER       NOT NULL
                                  UNIQUE
                                  REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    profile_picture VARCHAR (100) NULL
);

INSERT INTO accounts_profile (id, bio, phone, address, date_of_birth, created_at, updated_at, links, user_id, profile_picture) VALUES (72, 'good job', NULL, NULL, NULL, '2025-06-28 13:14:34.456620', '2025-06-28 13:14:34.456620', 'https://mohamednabilpro.netlify.app/', 3, 'profile_pictures/IMG_20221221_122110_769.jpg');
INSERT INTO accounts_profile (id, bio, phone, address, date_of_birth, created_at, updated_at, links, user_id, profile_picture) VALUES (74, 'good job', '01060273497', 'egypt', '2025-06-25', '2025-06-28 13:17:45.180715', '2025-06-28 13:17:45.180715', 'https://mohamednabilpro.netlify.app/', 2, 'profile_pictures/IMG_20230204_155920_729_6hjVeSu.jpg');

-- Table: auth_group
CREATE TABLE IF NOT EXISTS auth_group (
    id   INTEGER       NOT NULL
                       PRIMARY KEY AUTOINCREMENT,
    name VARCHAR (150) NOT NULL
                       UNIQUE
);


-- Table: auth_group_permissions
CREATE TABLE IF NOT EXISTS auth_group_permissions (
    id            INTEGER NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    group_id      INTEGER NOT NULL
                          REFERENCES auth_group (id) DEFERRABLE INITIALLY DEFERRED,
    permission_id INTEGER NOT NULL
                          REFERENCES auth_permission (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: auth_permission
CREATE TABLE IF NOT EXISTS auth_permission (
    id              INTEGER       NOT NULL
                                  PRIMARY KEY AUTOINCREMENT,
    content_type_id INTEGER       NOT NULL
                                  REFERENCES django_content_type (id) DEFERRABLE INITIALLY DEFERRED,
    codename        VARCHAR (100) NOT NULL,
    name            VARCHAR (255) NOT NULL
);

INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (4, 1, 'view_logentry', 'Can view log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (5, 2, 'add_permission', 'Can add permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (6, 2, 'change_permission', 'Can change permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (7, 2, 'delete_permission', 'Can delete permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (8, 2, 'view_permission', 'Can view permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (9, 3, 'add_group', 'Can add group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (10, 3, 'change_group', 'Can change group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (11, 3, 'delete_group', 'Can delete group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (12, 3, 'view_group', 'Can view group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (13, 4, 'add_user', 'Can add user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (14, 4, 'change_user', 'Can change user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (15, 4, 'delete_user', 'Can delete user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (16, 4, 'view_user', 'Can view user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (17, 5, 'add_contenttype', 'Can add content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (18, 5, 'change_contenttype', 'Can change content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (19, 5, 'delete_contenttype', 'Can delete content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (20, 5, 'view_contenttype', 'Can view content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (21, 6, 'add_session', 'Can add session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (22, 6, 'change_session', 'Can change session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (23, 6, 'delete_session', 'Can delete session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (24, 6, 'view_session', 'Can view session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (25, 7, 'add_about', 'Can add about');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (26, 7, 'change_about', 'Can change about');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (27, 7, 'delete_about', 'Can delete about');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (28, 7, 'view_about', 'Can view about');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (29, 8, 'add_contact', 'Can add contact');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (30, 8, 'change_contact', 'Can change contact');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (31, 8, 'delete_contact', 'Can delete contact');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (32, 8, 'view_contact', 'Can view contact');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (33, 9, 'add_project', 'Can add project');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (34, 9, 'change_project', 'Can change project');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (35, 9, 'delete_project', 'Can delete project');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (36, 9, 'view_project', 'Can view project');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (37, 10, 'add_profile', 'Can add Profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (38, 10, 'change_profile', 'Can change Profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (39, 10, 'delete_profile', 'Can delete Profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (40, 10, 'view_profile', 'Can view Profile');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (41, 11, 'add_hero', 'Can add Hero');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (42, 11, 'change_hero', 'Can change Hero');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (43, 11, 'delete_hero', 'Can delete Hero');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (44, 11, 'view_hero', 'Can view Hero');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (45, 12, 'add_about', 'Can add about');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (46, 12, 'change_about', 'Can change about');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (47, 12, 'delete_about', 'Can delete about');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (48, 12, 'view_about', 'Can view about');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (49, 13, 'add_about_list', 'Can add About List');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (50, 13, 'change_about_list', 'Can change About List');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (51, 13, 'delete_about_list', 'Can delete About List');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (52, 13, 'view_about_list', 'Can view About List');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (53, 14, 'add_downloadcv', 'Can add Download');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (54, 14, 'change_downloadcv', 'Can change Download');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (55, 14, 'delete_downloadcv', 'Can delete Download');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (56, 14, 'view_downloadcv', 'Can view Download');

-- Table: auth_user
CREATE TABLE IF NOT EXISTS auth_user (
    id           INTEGER       NOT NULL
                               PRIMARY KEY AUTOINCREMENT,
    password     VARCHAR (128) NOT NULL,
    last_login   DATETIME      NULL,
    is_superuser BOOL          NOT NULL,
    username     VARCHAR (150) NOT NULL
                               UNIQUE,
    last_name    VARCHAR (150) NOT NULL,
    email        VARCHAR (254) NOT NULL,
    is_staff     BOOL          NOT NULL,
    is_active    BOOL          NOT NULL,
    date_joined  DATETIME      NOT NULL,
    first_name   VARCHAR (150) NOT NULL
);

INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (1, 'pbkdf2_sha256$1000000$44gIOXvTRZZhCYnjipCkBK$QxhSd9cBwFWQB52Bs5O8ylshPrAl6m6pxIVnUC0PkV8=', '2025-06-24 12:55:48.564974', 1, 'mohamed', '', 'mohamed@email.com', 1, 1, '2025-06-24 12:10:35.778650', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (2, 'pbkdf2_sha256$1000000$MeBqmdwFlArQLdm3pV9qnW$1XlBvv6R8eghrHvtJnVRTABNoizI+vJbCEx+IUhbiXI=', '2025-06-28 13:17:45.160497', 1, 'mohamednabilpro', 'NabiL', 'MohaMedNabiLpro2024@gmail.com', 1, 1, '2025-06-25 09:39:38', 'MohaMed');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (3, 'pbkdf2_sha256$1000000$FV3zmKaSlRuZQpCDavvaGp$lDgPeTHSAP0uUmJ/nNQQp1ywNoqSSYRN4pMBV8vZvHQ=', '2025-06-28 13:14:34.435467', 0, 'kavin_carless', 'carless', 'kavin@email.com', 0, 1, '2025-06-25 14:06:33', 'kavin');

-- Table: auth_user_groups
CREATE TABLE IF NOT EXISTS auth_user_groups (
    id       INTEGER NOT NULL
                     PRIMARY KEY AUTOINCREMENT,
    user_id  INTEGER NOT NULL
                     REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    group_id INTEGER NOT NULL
                     REFERENCES auth_group (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: auth_user_user_permissions
CREATE TABLE IF NOT EXISTS auth_user_user_permissions (
    id            INTEGER NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    user_id       INTEGER NOT NULL
                          REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    permission_id INTEGER NOT NULL
                          REFERENCES auth_permission (id) DEFERRABLE INITIALLY DEFERRED
);


-- Table: django_admin_log
CREATE TABLE IF NOT EXISTS django_admin_log (
    id              INTEGER             NOT NULL
                                        PRIMARY KEY AUTOINCREMENT,
    object_id       TEXT                NULL,
    object_repr     VARCHAR (200)       NOT NULL,
    action_flag     [SMALLINT UNSIGNED] NOT NULL
                                        CHECK ("action_flag" >= 0),
    change_message  TEXT                NOT NULL,
    content_type_id INTEGER             NULL
                                        REFERENCES django_content_type (id) DEFERRABLE INITIALLY DEFERRED,
    user_id         INTEGER             NOT NULL
                                        REFERENCES auth_user (id) DEFERRABLE INITIALLY DEFERRED,
    action_time     DATETIME            NOT NULL
);

INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (1, '1', 'About Section', 1, '[{"added": {}}]', 7, 1, '2025-06-24 13:01:49.176967');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (2, '1', 'Message from MohaMed NabiL (MohaMedNabiLpro2024@gmail.com)', 1, '[{"added": {}}]', 8, 1, '2025-06-24 13:02:30.472954');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (3, '1', 'portfolio mohamednabilpro', 1, '[{"added": {}}]', 9, 1, '2025-06-24 13:03:25.719309');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (4, '27', 'kavin''s Profile', 2, '[{"changed": {"fields": ["Bio", "Profile picture", "Phone", "Address", "Date of birth", "Images", "Links", "Media"]}}]', 10, 2, '2025-06-25 15:02:18.843706');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (5, '30', 'mohamednabilpro''s Profile', 2, '[{"changed": {"fields": ["Bio", "Profile picture", "Phone", "Address", "Date of birth", "Images", "Media"]}}]', 10, 2, '2025-06-25 15:02:50.011542');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (6, '2', 'mohamednabilpro', 2, '[{"changed": {"fields": ["First name", "Last name"]}}]', 4, 2, '2025-06-25 15:04:49.083599');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (7, '27', 'kavin''s Profile', 2, '[{"changed": {"fields": ["Profile picture", "Images", "Media"]}}]', 10, 2, '2025-06-25 15:15:01.825318');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (8, '31', 'mohamednabilpro''s Profile', 2, '[{"changed": {"fields": ["Profile picture", "Images", "Media"]}}]', 10, 2, '2025-06-25 15:15:07.584684');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (9, '31', 'mohamednabilpro''s Profile', 2, '[{"changed": {"fields": ["Profile picture"]}}]', 10, 2, '2025-06-25 15:15:13.013134');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (10, '31', 'mohamednabilpro''s Profile', 2, '[{"changed": {"fields": ["Profile picture"]}}]', 10, 2, '2025-06-25 15:15:17.479449');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (11, '31', 'mohamednabilpro''s Profile', 2, '[{"changed": {"fields": ["Profile picture", "Images", "Media"]}}]', 10, 2, '2025-06-25 15:15:34.528166');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (12, '27', 'kavin''s Profile', 2, '[{"changed": {"fields": ["Profile picture", "Images", "Media"]}}]', 10, 2, '2025-06-25 15:15:44.581576');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (13, '2', 'mohamednabilpro', 2, '[{"changed": {"fields": ["First name", "Last name"]}}]', 4, 2, '2025-06-26 05:42:03.884562');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (14, '43', 'mohamednabilpro''s Profile', 2, '[{"changed": {"fields": ["Date of birth", "Links"]}}]', 10, 2, '2025-06-26 05:46:01.363890');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (15, '44', 'kavin''s Profile', 2, '[]', 10, 2, '2025-06-26 05:50:58.348635');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (16, '3', 'kavin_carless', 2, '[{"changed": {"fields": ["Username"]}}]', 4, 2, '2025-06-26 05:53:31.020678');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (17, '54', 'mohamednabilpro''s Profile', 2, '[{"changed": {"fields": ["Phone", "Address", "Date of birth"]}}]', 10, 2, '2025-06-26 08:09:49.449741');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (18, '60', 'mohamednabilpro''s Profile', 2, '[{"changed": {"fields": ["Phone", "Address", "Date of birth"]}}]', 10, 2, '2025-06-26 08:25:27.550345');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (19, '1', 'MohaMed NabiL', 1, '[{"added": {}}]', 11, 2, '2025-06-26 08:40:08.736973');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (20, '1', 'MohaMed NabiL', 2, '[{"changed": {"fields": ["Site name"]}}]', 11, 2, '2025-06-26 08:50:01.701041');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (21, '2', 'MohaMed NabiL', 1, '[{"added": {}}]', 11, 2, '2025-06-28 08:46:18.500576');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (22, '1', 'MohaMed NabiL', 3, '', 11, 2, '2025-06-28 08:49:37.614316');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (23, '2', 'MohaMed NabiL', 3, '', 11, 2, '2025-06-28 08:49:41.249856');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (24, '3', 'mohsmrd', 1, '[{"added": {}}]', 11, 2, '2025-06-28 08:50:20.896740');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (25, '3', 'MohaMed NabiL', 2, '[{"changed": {"fields": ["Title", "Content"]}}]', 11, 2, '2025-06-28 08:51:11.914328');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (26, '3', 'MohaMed NabiL', 2, '[{"changed": {"fields": ["Image hero"]}}]', 11, 2, '2025-06-28 09:05:12.640890');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (27, '3', 'MohaMed NabiL', 2, '[{"changed": {"fields": ["Content", "Image hero", "Site name"]}}]', 11, 2, '2025-06-28 09:08:17.493826');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (28, '64', 'mohamednabilpro''s Profile', 2, '[]', 10, 2, '2025-06-28 09:37:34.069966');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (29, '64', 'mohamednabilpro''s Profile', 2, '[{"changed": {"fields": ["Profile picture"]}}]', 10, 2, '2025-06-28 09:38:14.388178');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (30, '64', 'mohamednabilpro''s Profile', 2, '[{"changed": {"fields": ["Profile picture"]}}]', 10, 2, '2025-06-28 09:38:40.630786');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (31, '65', 'kavin_carless''s Profile', 2, '[{"changed": {"fields": ["Profile picture"]}}]', 10, 2, '2025-06-28 10:10:31.031149');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (32, '65', 'kavin_carless''s Profile', 2, '[{"changed": {"fields": ["Profile picture"]}}]', 10, 2, '2025-06-28 10:10:40.434500');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (33, '3', 'MohaMed NabiL', 2, '[]', 11, 2, '2025-06-28 14:07:21.570736');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (34, '1', 'About', 1, '[{"added": {}}]', 12, 2, '2025-06-28 14:36:36.401551');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (35, '1', 'About', 2, '[]', 12, 2, '2025-06-28 14:51:48.175139');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (36, '1', 'About', 2, '[]', 12, 2, '2025-06-28 15:04:11.187343');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (37, '1', 'About', 2, '[{"changed": {"fields": ["Title head line"]}}]', 12, 2, '2025-06-28 15:27:02.947541');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (38, '1', 'About', 2, '[{"changed": {"fields": ["Description bottom about"]}}]', 12, 2, '2025-06-28 15:31:06.962766');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (39, '1', 'About', 2, '[{"changed": {"fields": ["Description main about"]}}]', 12, 2, '2025-06-28 15:34:07.370480');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (40, '1', 'About', 2, '[{"changed": {"fields": ["Description about"]}}]', 12, 2, '2025-06-28 15:35:21.484174');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (41, '1', 'About', 2, '[{"changed": {"fields": ["Description bottom about"]}}]', 12, 2, '2025-06-28 15:35:41.885516');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (42, '1', 'front end', 1, '[{"added": {}}]', 13, 2, '2025-06-28 16:31:52.100969');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (43, '2', 'backend', 1, '[{"added": {}}]', 13, 2, '2025-06-28 16:37:33.091831');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (44, '1', 'front end', 2, '[{"changed": {"fields": ["Slug"]}}]', 13, 2, '2025-06-28 17:33:33.389677');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (45, '2', 'backend', 2, '[{"changed": {"fields": ["Slug"]}}]', 13, 2, '2025-06-28 17:33:37.045203');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (46, '3', 'full stack', 1, '[{"added": {}}]', 13, 2, '2025-06-28 18:33:28.527999');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (47, '3', 'full stack', 2, '[]', 13, 2, '2025-06-28 18:33:32.902947');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (48, '3', 'full stack', 3, '', 13, 2, '2025-06-28 18:42:04.522251');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (49, NULL, 'full stack', 1, '[{"added": {}}]', 13, 2, '2025-06-28 18:43:55.089554');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (50, NULL, 'full stack', 1, '[{"added": {}}]', 13, 2, '2025-06-28 18:44:08.304925');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (51, '4', 'full stack', 1, '[{"added": {}}]', 13, 2, '2025-06-28 18:44:29.687813');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (52, '1', 'front end', 2, '[{"changed": {"fields": ["Title about"]}}]', 13, 2, '2025-06-29 05:09:28.418757');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (53, '2', 'backend', 2, '[{"changed": {"fields": ["Title about"]}}]', 13, 2, '2025-06-29 05:09:31.712320');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (54, '4', 'full stack', 2, '[{"changed": {"fields": ["Title about"]}}]', 13, 2, '2025-06-29 05:09:34.593862');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (55, '1', 'front end', 2, '[{"changed": {"fields": ["Title about", "Description list"]}}]', 13, 2, '2025-06-29 05:34:17.471975');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (56, '2', 'backend', 2, '[{"changed": {"fields": ["Title about", "Description list"]}}]', 13, 2, '2025-06-29 05:34:28.752087');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (57, '1', 'cv word', 1, '[{"added": {}}]', 14, 2, '2025-06-29 06:28:45.191241');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (58, '1', 'cv word', 2, '[]', 14, 2, '2025-06-29 06:28:53.983154');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (59, '1', 'cv word', 2, '[{"changed": {"fields": ["File"]}}]', 14, 2, '2025-06-29 06:43:27.464851');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (60, '1', 'cv word', 2, '[{"changed": {"fields": ["File"]}}]', 14, 2, '2025-06-29 06:43:32.205582');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (61, '1', 'CV PDF English', 2, '[{"changed": {"fields": ["Title down", "Name down"]}}]', 14, 2, '2025-06-29 06:46:31.926805');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (62, '1', 'front end', 2, '[{"changed": {"fields": ["Images about list"]}}]', 13, 2, '2025-06-29 07:11:19.980723');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (63, '2', 'backend', 2, '[{"changed": {"fields": ["Images about list"]}}]', 13, 2, '2025-06-29 07:11:27.802739');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (64, '4', 'full stack', 2, '[{"changed": {"fields": ["Images about list"]}}]', 13, 2, '2025-06-29 07:11:38.262465');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (65, '4', 'full stack', 2, '[{"changed": {"fields": ["Images about list"]}}]', 13, 2, '2025-06-29 07:19:31.949071');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (66, '4', 'full stack', 2, '[{"changed": {"fields": ["Images about list"]}}]', 13, 2, '2025-06-29 07:19:36.326139');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (67, '2', 'backend', 2, '[{"changed": {"fields": ["Images about list"]}}]', 13, 2, '2025-06-29 07:19:39.708324');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (68, '2', 'backend', 2, '[{"changed": {"fields": ["Images about list"]}}]', 13, 2, '2025-06-29 07:19:43.350950');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (69, '1', 'front end', 2, '[{"changed": {"fields": ["Images about list"]}}]', 13, 2, '2025-06-29 07:19:48.307765');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (70, '1', 'front end', 2, '[{"changed": {"fields": ["Images about list"]}}]', 13, 2, '2025-06-29 07:19:56.213431');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (71, '4', 'full stack', 2, '[{"changed": {"fields": ["Images about list"]}}]', 13, 2, '2025-06-29 07:20:21.283715');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (72, '2', 'backend', 2, '[{"changed": {"fields": ["Images about list"]}}]', 13, 2, '2025-06-29 07:20:24.135929');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (73, '1', 'front end', 2, '[{"changed": {"fields": ["Images about list"]}}]', 13, 2, '2025-06-29 07:20:27.467209');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (74, '4', 'full stack', 2, '[{"changed": {"fields": ["Images about list"]}}]', 13, 2, '2025-06-29 07:20:32.870670');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (75, '2', 'backend', 2, '[{"changed": {"fields": ["Images about list"]}}]', 13, 2, '2025-06-29 07:20:38.910167');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (76, '1', 'front end', 2, '[{"changed": {"fields": ["Images about list"]}}]', 13, 2, '2025-06-29 07:20:44.168469');

-- Table: django_content_type
CREATE TABLE IF NOT EXISTS django_content_type (
    id        INTEGER       NOT NULL
                            PRIMARY KEY AUTOINCREMENT,
    app_label VARCHAR (100) NOT NULL,
    model     VARCHAR (100) NOT NULL
);

INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO django_content_type (id, app_label, model) VALUES (7, 'portfolio', 'about');
INSERT INTO django_content_type (id, app_label, model) VALUES (8, 'portfolio', 'contact');
INSERT INTO django_content_type (id, app_label, model) VALUES (9, 'portfolio', 'project');
INSERT INTO django_content_type (id, app_label, model) VALUES (10, 'accounts', 'profile');
INSERT INTO django_content_type (id, app_label, model) VALUES (11, 'hero', 'hero');
INSERT INTO django_content_type (id, app_label, model) VALUES (12, 'about', 'about');
INSERT INTO django_content_type (id, app_label, model) VALUES (13, 'about', 'about_list');
INSERT INTO django_content_type (id, app_label, model) VALUES (14, 'about', 'downloadcv');

-- Table: django_migrations
CREATE TABLE IF NOT EXISTS django_migrations (
    id      INTEGER       NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    app     VARCHAR (255) NOT NULL,
    name    VARCHAR (255) NOT NULL,
    applied DATETIME      NOT NULL
);

INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2025-06-24 12:10:00.108937');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2025-06-24 12:10:00.128953');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2025-06-24 12:10:00.144313');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2025-06-24 12:10:00.155352');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2025-06-24 12:10:00.164887');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2025-06-24 12:10:00.177971');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2025-06-24 12:10:00.188553');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2025-06-24 12:10:00.199666');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2025-06-24 12:10:00.207812');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2025-06-24 12:10:00.219161');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2025-06-24 12:10:00.225288');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2025-06-24 12:10:00.234808');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2025-06-24 12:10:00.246170');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2025-06-24 12:10:00.257313');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2025-06-24 12:10:00.267329');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2025-06-24 12:10:00.276392');
INSERT INTO django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2025-06-24 12:10:00.286891');
INSERT INTO django_migrations (id, app, name, applied) VALUES (18, 'sessions', '0001_initial', '2025-06-24 12:10:00.301102');
INSERT INTO django_migrations (id, app, name, applied) VALUES (19, 'portfolio', '0001_initial', '2025-06-24 12:37:41.747914');
INSERT INTO django_migrations (id, app, name, applied) VALUES (20, 'accounts', '0001_initial', '2025-06-25 09:36:43.576767');
INSERT INTO django_migrations (id, app, name, applied) VALUES (21, 'accounts', '0002_alter_profile_images_alter_profile_profile_picture', '2025-06-25 15:11:19.757880');
INSERT INTO django_migrations (id, app, name, applied) VALUES (22, 'hero', '0001_initial', '2025-06-26 08:39:02.132510');
INSERT INTO django_migrations (id, app, name, applied) VALUES (23, 'hero', '0002_hero_site_name', '2025-06-26 08:49:36.736182');
INSERT INTO django_migrations (id, app, name, applied) VALUES (24, 'accounts', '0003_alter_profile_profile_picture', '2025-06-28 09:37:24.213763');
INSERT INTO django_migrations (id, app, name, applied) VALUES (25, 'accounts', '0004_remove_profile_images_remove_profile_media', '2025-06-28 09:38:06.375971');
INSERT INTO django_migrations (id, app, name, applied) VALUES (26, 'about', '0001_initial', '2025-06-28 14:31:06.195402');
INSERT INTO django_migrations (id, app, name, applied) VALUES (27, 'about', '0002_alter_about_options_and_more', '2025-06-28 14:51:34.520520');
INSERT INTO django_migrations (id, app, name, applied) VALUES (28, 'about', '0003_about_title_head_line_alter_about_website_link', '2025-06-28 15:26:31.016084');
INSERT INTO django_migrations (id, app, name, applied) VALUES (29, 'about', '0004_about_description_bottom_about', '2025-06-28 15:30:02.339927');
INSERT INTO django_migrations (id, app, name, applied) VALUES (30, 'about', '0005_about_description_main_about', '2025-06-28 15:32:19.206395');
INSERT INTO django_migrations (id, app, name, applied) VALUES (31, 'about', '0006_alter_about_description_main_about', '2025-06-28 15:34:01.201649');
INSERT INTO django_migrations (id, app, name, applied) VALUES (32, 'about', '0007_about_list', '2025-06-28 16:20:43.659854');
INSERT INTO django_migrations (id, app, name, applied) VALUES (33, 'about', '0008_about_list_slug', '2025-06-28 17:33:19.631358');
INSERT INTO django_migrations (id, app, name, applied) VALUES (34, 'about', '0009_about_list_title_about', '2025-06-29 05:09:10.236475');
INSERT INTO django_migrations (id, app, name, applied) VALUES (35, 'about', '0010_downloadcv', '2025-06-29 06:23:32.908255');
INSERT INTO django_migrations (id, app, name, applied) VALUES (36, 'about', '0011_downloadcv_cv_online', '2025-06-29 06:24:27.981013');
INSERT INTO django_migrations (id, app, name, applied) VALUES (37, 'about', '0012_remove_downloadcv_cv_online', '2025-06-29 06:24:27.985517');
INSERT INTO django_migrations (id, app, name, applied) VALUES (38, 'about', '0013_about_list_images_about_list', '2025-06-29 07:10:57.264267');
INSERT INTO django_migrations (id, app, name, applied) VALUES (39, 'about', '0014_alter_about_list_images_about_list', '2025-06-29 07:20:10.818453');

-- Table: django_session
CREATE TABLE IF NOT EXISTS django_session (
    session_key  VARCHAR (40) NOT NULL
                              PRIMARY KEY,
    session_data TEXT         NOT NULL,
    expire_date  DATETIME     NOT NULL
);

INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('xesmztxza5joimrwc61tly77y69kh24h', '.eJxVjMEOwiAQRP-FsyEC6wY8evcbCLsLUjU0Ke2p8d9tkx50jvPezKpiWuYal56nOIi6KqNOvx0lfuW2A3mm9hg1j22eBtK7og_a9X2U_L4d7t9BTb1uazAkhaE4dAGTtQTINhUAw9kIgQtmC3hBH4TlAs6LdbbgOVAmZPX5AuBZN8c:1uU3Bk:JWg7JIAuepvRhtTh5AikONcJI_0zJoJGfSuUiQKEqEQ', '2025-07-08 12:55:48.572391');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('5osl8ckd25yy750bq1hwjr8ezitb0zcn', '.eJxVjDsOwjAQBe_iGln-rH-U9JzB8q5tHECOFCcV4u4QKQW0b2bei8W0rS1uoyxxyuzMFDv9bpjoUfoO8j3128xp7usyId8VftDBr3Muz8vh_h20NNq3LkZol1EWGxCkrYhaIDmjjReQLFBAbzSBgFAVkVEKsnBYZbbeexHY-wPYCTdD:1uVTj9:8LnTxB1qLhkwpwEVekzt5dPeAgL-BEdS20Kmd-R-YWM', '2025-07-12 11:28:11.108983');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('55qwb4y4kd62axiz2jnwotbce0bnl84q', '.eJxVjDsOwjAQBe_iGllZ_Kekzxmi9a6XBJAt5VMh7g6RUkD7Zua91IDbOg7bUuZhYnVRRp1-t4z0KHUHfMd6a5paXecp613RB11037g8r4f7dzDiMn7rzgG4ANTFLqSzcIaUo0WbmNgbAI9EzoqIAc4ei8TIaMRZT4FSiOr9AdOmOA4:1uVVO6:m7aQR5OPN2La2dmgkdh90OA2ohBwZnORDqlNiiCizWU', '2025-07-12 13:14:34.462618');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('3j4ga61au4xqrqo8g2i6el5mher8ie0o', '.eJxVjDsOwjAQBe_iGln-rH-U9JzB8q5tHECOFCcV4u4QKQW0b2bei8W0rS1uoyxxyuzMFDv9bpjoUfoO8j3128xp7usyId8VftDBr3Muz8vh_h20NNq3LkZol1EWGxCkrYhaIDmjjReQLFBAbzSBgFAVkVEKsnBYZbbeexHY-wPYCTdD:1uVVRB:C7_roshB00AyJACk1f8meqE2h01EUZkgi6reKG4dy5g', '2025-07-12 13:17:45.186964');

-- Table: hero_hero
CREATE TABLE IF NOT EXISTS hero_hero (
    id         INTEGER       NOT NULL
                             PRIMARY KEY AUTOINCREMENT,
    title      VARCHAR (255) NOT NULL,
    content    TEXT          NOT NULL,
    image_hero VARCHAR (100) NULL,
    created_at DATETIME      NOT NULL,
    updated_at DATETIME      NOT NULL,
    site_name  VARCHAR (100) NOT NULL
);

INSERT INTO hero_hero (id, title, content, image_hero, created_at, updated_at, site_name) VALUES (3, 'MohaMed NabiL', 'Full Stack web Development', 'media/hero/bac6.png', '2025-06-28 08:50:20.895911', '2025-06-28 14:07:21.570231', 'MohaMed NabiL');

-- Table: portfolio_about
CREATE TABLE IF NOT EXISTS portfolio_about (
    id      INTEGER NOT NULL
                    PRIMARY KEY AUTOINCREMENT,
    content TEXT    NOT NULL
);

INSERT INTO portfolio_about (id, content) VALUES (1, 'mohamed nabil web develpoer');

-- Table: portfolio_contact
CREATE TABLE IF NOT EXISTS portfolio_contact (
    id      INTEGER       NOT NULL
                          PRIMARY KEY AUTOINCREMENT,
    name    VARCHAR (100) NOT NULL,
    email   VARCHAR (254) NOT NULL,
    message TEXT          NOT NULL
);

INSERT INTO portfolio_contact (id, name, email, message) VALUES (1, 'MohaMed NabiL', 'MohaMedNabiLpro2024@gmail.com', 'open Everything');

-- Table: portfolio_project
CREATE TABLE IF NOT EXISTS portfolio_project (
    id          INTEGER       NOT NULL
                              PRIMARY KEY AUTOINCREMENT,
    title       VARCHAR (200) NOT NULL,
    description TEXT          NOT NULL,
    image       VARCHAR (100) NOT NULL,
    url         VARCHAR (200) NOT NULL
);

INSERT INTO portfolio_project (id, title, description, image, url) VALUES (1, 'portfolio mohamednabilpro', 'portfolio mohamednabilpro', 'projects/506613193_2501591876872618_3987166589920049385_n.jpg', 'https://mohamednabilpro.netlify.app/');

-- Index: auth_group_permissions_group_id_b120cbf9
CREATE INDEX IF NOT EXISTS auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions (
    "group_id"
);


-- Index: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
CREATE UNIQUE INDEX IF NOT EXISTS auth_group_permissions_group_id_permission_id_0cd325b0_uniq ON auth_group_permissions (
    "group_id",
    "permission_id"
);


-- Index: auth_group_permissions_permission_id_84c5c92e
CREATE INDEX IF NOT EXISTS auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions (
    "permission_id"
);


-- Index: auth_permission_content_type_id_2f476e4b
CREATE INDEX IF NOT EXISTS auth_permission_content_type_id_2f476e4b ON auth_permission (
    "content_type_id"
);


-- Index: auth_permission_content_type_id_codename_01ab375a_uniq
CREATE UNIQUE INDEX IF NOT EXISTS auth_permission_content_type_id_codename_01ab375a_uniq ON auth_permission (
    "content_type_id",
    "codename"
);


-- Index: auth_user_groups_group_id_97559544
CREATE INDEX IF NOT EXISTS auth_user_groups_group_id_97559544 ON auth_user_groups (
    "group_id"
);


-- Index: auth_user_groups_user_id_6a12ed8b
CREATE INDEX IF NOT EXISTS auth_user_groups_user_id_6a12ed8b ON auth_user_groups (
    "user_id"
);


-- Index: auth_user_groups_user_id_group_id_94350c0c_uniq
CREATE UNIQUE INDEX IF NOT EXISTS auth_user_groups_user_id_group_id_94350c0c_uniq ON auth_user_groups (
    "user_id",
    "group_id"
);


-- Index: auth_user_user_permissions_permission_id_1fbb5f2c
CREATE INDEX IF NOT EXISTS auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions (
    "permission_id"
);


-- Index: auth_user_user_permissions_user_id_a95ead1b
CREATE INDEX IF NOT EXISTS auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions (
    "user_id"
);


-- Index: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
CREATE UNIQUE INDEX IF NOT EXISTS auth_user_user_permissions_user_id_permission_id_14a6b632_uniq ON auth_user_user_permissions (
    "user_id",
    "permission_id"
);


-- Index: django_admin_log_content_type_id_c4bce8eb
CREATE INDEX IF NOT EXISTS django_admin_log_content_type_id_c4bce8eb ON django_admin_log (
    "content_type_id"
);


-- Index: django_admin_log_user_id_c564eba6
CREATE INDEX IF NOT EXISTS django_admin_log_user_id_c564eba6 ON django_admin_log (
    "user_id"
);


-- Index: django_content_type_app_label_model_76bd3d3b_uniq
CREATE UNIQUE INDEX IF NOT EXISTS django_content_type_app_label_model_76bd3d3b_uniq ON django_content_type (
    "app_label",
    "model"
);


-- Index: django_session_expire_date_a5c62663
CREATE INDEX IF NOT EXISTS django_session_expire_date_a5c62663 ON django_session (
    "expire_date"
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
