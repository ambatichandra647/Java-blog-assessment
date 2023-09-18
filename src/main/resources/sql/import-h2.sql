ALTER TABLE "post"
  ALTER COLUMN "create_date" SET DEFAULT CURRENT_TIMESTAMP;

-- Users
-- password in plaintext: "password"
INSERT INTO "user" ("user_id", "password", "email", "username", "name", "last_name", "active")
VALUES
  (1, '$2a$10$NCf9RSUJh0rt0r16s05ar.cFBzlq6YSGfHiCxWshHW.vH/S6/2A6C', 'suman@mail.com', 'suman', 'suman', 'kilaru',
   1);
-- password in plaintext: "password"
INSERT INTO "user" ("user_id", "password", "email", "username", "name", "last_name", "active")
VALUES
  (2, '$2a$10$SfF5AgnJu9skF2pvSWMMKe433h9XY0R37D1WmEa3BmrFrw0zinosa', 'ambatichandra@gmail.com', 'Chandra', 'Chandra', 'Ambati', 1);
-- password in plaintext: "password"
INSERT INTO "user" ("user_id", "password", "email", "username", "name", "last_name", "active")
VALUES (3, '$2a$10$SfF5AgnJu9skF2pvSWMMKe433h9XY0R37D1WmEa3BmrFrw0zinosa', 'Hanu@gmail.com', 'HanuKota', 'Hanu', 'Kota', 1);

-- Roles
INSERT INTO "role" ("role_id", "role")
VALUES (1, 'ROLE_ADMIN');
INSERT INTO "role" ("role_id", "role")
VALUES (2, 'ROLE_USER');
INSERT INTO "role" ("role_id", "role")
VALUES (3, 'USER');

-- User Roles
INSERT INTO "user_role" ("user_id", "role_id")
VALUES (1, 1);
INSERT INTO "user_role" ("user_id", "role_id")
VALUES (1, 2);
INSERT INTO "user_role" ("user_id", "role_id")
VALUES (2, 2);
INSERT INTO "user_role" ("user_id", "role_id")
VALUES (3, 2);
INSERT INTO "user_role" ("user_id", "role_id")
VALUES (2, 3);
INSERT INTO "user_role" ("user_id", "role_id")
VALUES (2, 1);

-- Posts
INSERT INTO "post" ("post_id", "user_id", "title", "body", "create_date")
VALUES (1, 1, 'Title 1',
        '"Java Blog test 1."',
        --         CURRENT_TIMESTAMP());
        {ts '2016-10-19 11:10:13.247'});
INSERT INTO "post" ("post_id", "user_id", "title", "body", "create_date")
VALUES (2, 1, 'Title 2',
        '"Java Blog test 2."',
        --         CURRENT_TIMESTAMP());
        {ts '2016-11-10 11:10:13.247'});
INSERT INTO "post" ("post_id", "user_id", "title", "body", "create_date")
VALUES (3, 1, 'Title 3',
        '"Java Blog test."',
        CURRENT_TIMESTAMP());
INSERT INTO "post" ("post_id", "user_id", "title", "body", "create_date")
VALUES (4, 1, 'Title 4',
        '"Java Blog test."',
        CURRENT_TIMESTAMP());
INSERT INTO "post" ("post_id", "user_id", "title", "body", "create_date")
VALUES (5, 1, 'Title 5',
        '"Java Blog test."',
        CURRENT_TIMESTAMP());
INSERT INTO "post" ("post_id", "user_id", "title", "body", "create_date")
VALUES (6, 1, 'Title 6',
        '"Java Blog test."',
        CURRENT_TIMESTAMP());
INSERT INTO "post" ("post_id", "user_id", "title", "body", "create_date")
VALUES (7, 2, 'Title 7',
        '"Java Blog test."',
        CURRENT_TIMESTAMP());
INSERT INTO "post" ("post_id", "user_id", "title", "body", "create_date")
VALUES (8, 2, 'Title 8',
        '"Java Blog test."',
        CURRENT_TIMESTAMP());
INSERT INTO "post" ("post_id", "user_id", "title", "body", "create_date")
VALUES (9, 2, 'Title 9',
        '"Java Blog test."',
        CURRENT_TIMESTAMP());
INSERT INTO "post" ("post_id", "user_id", "title", "body", "create_date")
VALUES (10, 2, 'Title 10',
        '"Java Blog test."',
        CURRENT_TIMESTAMP());
INSERT INTO "post" ("post_id", "user_id", "title", "body", "create_date")
VALUES (11, 3, 'Title 11',
        '"Java Blog test."',
        CURRENT_TIMESTAMP());
INSERT INTO "post" ("post_id", "user_id", "title", "body", "create_date")
VALUES (12, 3, 'Title 12',
        '"Java Blog test."',
        CURRENT_TIMESTAMP());

-- Comments
INSERT INTO "comment" ("comment_id","post_id", "user_id", "body", "create_date")
VALUES (1,1, 1,
        '"Java Blog test."',
        CURRENT_TIMESTAMP());
INSERT INTO "comment" ("comment_id","post_id", "user_id", "body", "create_date")
VALUES (2,1, 2,
        '"Java Blog test."',
        CURRENT_TIMESTAMP());
INSERT INTO "comment" ("comment_id","post_id", "user_id", "body", "create_date")
VALUES (3,1, 3,
        '"Java Blog test."',
        CURRENT_TIMESTAMP());
INSERT INTO "comment" ("comment_id","post_id", "user_id", "body", "create_date")
VALUES (4,6, 1,
        '"Java Blog test."',
        CURRENT_TIMESTAMP());
INSERT INTO "comment" ("comment_id","post_id", "user_id", "body", "create_date")
VALUES (5,6, 2,
        '"Java Blog test."',
        CURRENT_TIMESTAMP());
INSERT INTO "comment" ("comment_id","post_id", "user_id", "body", "create_date")
VALUES (6,6, 3,
        '"Java Blog test."',
        CURRENT_TIMESTAMP());