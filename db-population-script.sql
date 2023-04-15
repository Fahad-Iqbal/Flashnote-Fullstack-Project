insert into users (user_name, user_email, password, created_at) values ('ldudny0', 'tgrelak0@loc.gov', 'qPtZR1lDB', '2022-05-23 16:19:07');
insert into users (user_name, user_email, password, created_at) values ('dsamson1', 'sgrolle1@berkeley.edu', 'f27LL7NB', '2022-12-19 15:48:10');
insert into users (user_name, user_email, password, created_at) values ('tstrange2', 'dwithrop2@columbia.edu', '1sSOO2QQ42q', '2023-02-11 05:12:39');
insert into users (user_name, user_email, password, created_at) values ('klovelady3', 'cgraeber3@irs.gov', 'SkKPaan3V3ib', '2022-11-13 13:34:56');
insert into users (user_name, user_email, password, created_at) values ('kwinkle4', 'mbroadwell4@java.com', '1oF85t3', '2022-10-27 05:23:30');
insert into users (user_name, user_email, password, created_at) values ('pperott5', 'adener5@posterous.com', '5VDGKUnfX', '2022-11-13 19:10:45');
insert into users (user_name, user_email, password, created_at) values ('lforsard6', 'rkelberman6@g.co', 'R44dvvsubKuK', '2022-09-25 06:53:25');
insert into users (user_name, user_email, password, created_at) values ('qwolfinger7', 'akinchley7@oaic.gov.au', 'e8fhh7hu', '2022-12-31 17:34:55');
insert into users (user_name, user_email, password, created_at) values ('mreape8', 'zlyon8@ftc.gov', 'jZpUu8xpk', '2022-10-19 16:42:02');
insert into users (user_name, user_email, password, created_at) values ('ehuie9', 'bvesque9@disqus.com', 'G02V43loGl', '2022-08-08 18:56:23');
insert into users (user_name, user_email, password, created_at) values ('abeattya', 'mklampka@google.pl', 'MZOVwt', '2022-08-26 19:54:26');
insert into users (user_name, user_email, password, created_at) values ('rcarnellb', 'nlowndesb@cmu.edu', '39QESgtfJiLq', '2023-03-09 01:16:27');
insert into users (user_name, user_email, password, created_at) values ('apounsettc', 'cthurlbournec@comsenz.com', 'dIa8yrV', '2022-09-14 04:36:23');
insert into users (user_name, user_email, password, created_at) values ('pburnselld', 'nganifordd@washington.edu', '4atAd5hnTspZ', '2023-02-15 22:25:11');
insert into users (user_name, user_email, password, created_at) values ('kmughale', 'tyerrille@networksolutions.com', 'QkmpnS', '2022-08-04 23:40:40');
insert into users (user_name, user_email, password, created_at) values ('pbussellf', 'kpantherf@google.de', 'kpDyxosZ', '2022-09-07 19:00:01');
insert into users (user_name, user_email, password, created_at) values ('wquidenhamg', 'dwindleyg@merriam-webster.com', '6qcysb', '2022-10-28 20:52:12');
insert into users (user_name, user_email, password, created_at) values ('hschoenleiterh', 'jmatth@sourceforge.net', 'uw0jxQzM6Xbg', '2022-08-04 13:10:01');
insert into users (user_name, user_email, password, created_at) values ('jstquenini', 'osotheroni@oracle.com', 'zE50sLT', '2022-09-19 21:34:42');
insert into users (user_name, user_email, password, created_at) values ('mmckevanyj', 'jpinchenj@desdev.cn', 'OCw35Vs', '2022-04-05 06:17:27');

select * from users;
insert into documents(owner_id, user_id) values (1,1);
select * from documents;

-- note_id INT AUTO_INCREMENT,
--     document_id INT NOT NULL,
--     parent_note INT,
--     older_sibling_note INT,
--     order_of_appearance VARCHAR(50) NOT NULL,
--     note_content VARCHAR(5000) NOT NULL DEFAULT ''
insert into notes(document_id, parent_note,  order_of_appearance, note_content) values(1,null,"1","Note 1");
insert into notes(document_id, parent_note,  order_of_appearance, note_content) values(1,1,"1.1","    First Child of Note 1");
insert into notes(document_id, parent_note,  order_of_appearance, note_content) values(1,1,"1.2","    Second Child of Note 1");
insert into notes(document_id, parent_note, order_of_appearance, note_content) values(1,2,"1.2.1","        First Child of Second Child of Note 1");
insert into notes(document_id, parent_note, order_of_appearance, note_content) values(1,2,"1.2.2","        Second Child of Second Child of Note 1");
insert into notes(document_id, parent_note, order_of_appearance, note_content) values(1,1,"1.3","    Third Child of Note 1");
insert into notes(document_id, parent_note, order_of_appearance, note_content) values(1,null,"2","Note 2");
insert into notes(document_id, parent_note, order_of_appearance, note_content) values(1,7,"2.1","    First Child of Note 2");
insert into notes(document_id, parent_note, order_of_appearance, note_content) values(1,7,"2.2","    Second Child of Note 2");
insert into notes(document_id, parent_note, order_of_appearance, note_content) values(1,9,"2.2.1","        First Child of Second Child of Note 2");
insert into notes(document_id, parent_note, order_of_appearance, note_content) values(1,9,"2.2.2","        Second Child of Second Child of Note 2");
insert into notes(document_id, parent_note, order_of_appearance, note_content) values(1,7,"2.3","    Third Child of Note 2");
insert into notes(document_id, parent_note, order_of_appearance, note_content) values(1,null,"3","Note 3");
insert into notes(document_id, parent_note, order_of_appearance, note_content) values(1,13,"3.1","    First Child of Note 3");

select * from notes order by order_of_appearance;
WITH  cte  AS
(
  (SELECT note_id, note_content, parent_note, order_of_appearance from notes where note_id = 5) 
  UNION 
  (SELECT n.note_id, n.note_content, n.parent_note, n.order_of_appearance from notes as n join notes as p on n.note_id = p.note_id) )
SELECT * FROM cte;

 SELECT * from notes where parent_note is null;
 
 

-- This query returns all the parent notes of a specific note
-- In this specific example the query returns the parent notes of a note with note_id = 5

WITH RECURSIVE context_cte AS ( 
   SELECT note_id, 
          note_content, 
          parent_note,
          order_of_appearance
   FROM notes
   WHERE note_id = 5

   UNION ALL 

   SELECT n.note_id,
          n.note_content,
          n.parent_note, 
          n.order_of_appearance
   FROM notes n
     JOIN context_cte as cte ON cte.parent_note = n.note_id
)
SELECT note_content
FROM context_cte WHERE note_id != 5 ORDER BY order_of_appearance;


-- Given a user_id and document_id, this query displays all the notes in the document

SELECT 
    n.note_content AS 'Notes'
FROM
    notes AS n
        JOIN
    documents AS d ON n.document_id = d.document_id
        JOIN
    users AS u ON d.user_id = u.user_id
WHERE
    u.user_id = 1 AND d.document_id = 1
ORDER BY order_of_appearance; 



-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (9, 254.66, 543.34, 20.88, 919.85, '2022-08-08 04:55:09', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (9, 449.18, 139.9, 174.59, 237.19, '2022-12-08 18:10:39', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (17, 913.65, 41.84, 1076.01, 1065.8, '2022-06-25 13:29:57', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (9, 607.1, 574.58, 549.43, 336.83, '2022-09-23 11:31:59', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (4, 789.49, 906.39, 869.79, 612.68, '2022-11-20 21:20:20', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (18, 238.1, 900.85, 759.12, 1161.28, '2023-02-08 14:33:18', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (16, 965.47, 57.39, 130.63, 148.71, '2022-08-11 04:01:45', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (7, 1183.04, 284.2, 245.27, 742.43, '2022-06-25 01:57:54', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (13, 564.88, 1063.92, 338.0, 316.09, '2023-01-12 22:55:10', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (4, 625.08, 914.34, 49.11, 168.59, '2023-03-25 23:56:13', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (9, 777.83, 627.92, 496.47, 355.45, '2022-10-26 19:04:01', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (20, 126.32, 1055.97, 622.82, 638.14, '2022-05-11 00:43:27', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (10, 1072.81, 480.63, 573.12, 647.88, '2022-08-31 17:41:43', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (1, 783.3, 668.59, 359.34, 736.99, '2022-05-15 06:46:11', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (10, 376.83, 90.47, 657.91, 818.08, '2022-12-11 14:51:28', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (8, 1091.54, 946.41, 880.83, 406.53, '2023-03-01 00:11:51', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (17, 547.94, 346.84, 464.8, 510.73, '2022-07-01 13:13:39', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (14, 349.59, 628.75, 824.35, 440.35, '2022-06-10 15:13:40', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (12, 833.8, 383.46, 908.74, 548.86, '2023-01-02 19:55:12', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (16, 1057.37, 173.4, 686.63, 616.82, '2022-11-20 21:50:46', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (2, 452.4, 269.13, 1165.97, 892.71, '2023-01-28 09:59:43', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (8, 835.27, 895.68, 987.14, 1126.06, '2023-03-01 15:09:26', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (2, 9.79, 222.47, 233.18, 1158.02, '2022-05-07 13:51:58', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (15, 997.01, 717.1, 1039.8, 929.01, '2022-05-18 10:06:54', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (15, 1008.31, 1130.27, 972.76, 828.3, '2023-03-20 14:11:17', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (14, 559.39, 623.63, 1090.91, 16.23, '2022-09-22 18:16:10', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (5, 756.94, 72.02, 870.83, 304.48, '2022-07-24 01:23:22', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (3, 269.29, 1165.79, 894.02, 1116.04, '2023-03-03 15:54:27', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (2, 1182.78, 855.05, 138.68, 36.97, '2023-01-01 15:18:55', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (15, 664.27, 821.97, 839.75, 353.79, '2022-08-09 10:37:25', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (13, 903.71, 120.03, 896.0, 915.51, '2023-01-16 18:31:57', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (9, 327.25, 1061.96, 983.18, 218.05, '2023-02-27 19:49:03', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (6, 101.79, 753.53, 584.63, 807.52, '2023-03-26 15:59:56', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (15, 994.63, 161.86, 957.85, 457.83, '2022-05-27 00:56:40', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (20, 1009.18, 736.04, 9.24, 187.67, '2022-11-16 18:15:00', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (17, 1013.63, 688.37, 1117.68, 147.72, '2022-08-07 16:22:48', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (10, 857.28, 240.26, 769.07, 140.12, '2022-10-12 12:17:30', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (19, 857.09, 786.69, 842.12, 1033.87, '2022-12-14 18:33:23', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (4, 917.98, 1055.65, 1074.23, 145.68, '2022-10-06 07:47:45', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (8, 975.8, 659.3, 365.56, 1185.18, '2022-10-01 02:28:54', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (9, 516.84, 1053.39, 736.36, 554.39, '2022-04-07 17:46:07', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (17, 499.92, 878.61, 224.85, 401.43, '2022-08-22 02:29:21', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (9, 1067.36, 1041.49, 683.09, 1117.41, '2023-01-15 19:28:06', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (8, 412.48, 960.5, 52.96, 1005.61, '2023-02-18 08:25:32', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (15, 1104.24, 1018.93, 795.31, 262.63, '2023-03-26 08:40:26', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (2, 85.8, 348.88, 691.25, 1054.11, '2023-03-14 17:48:04', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (13, 1091.19, 1079.83, 895.13, 304.11, '2023-01-07 13:25:26', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (1, 414.29, 1161.68, 1140.96, 1042.34, '2023-03-06 12:41:58', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (5, 81.63, 570.48, 71.26, 576.53, '2022-04-11 15:54:36', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (16, 759.01, 1166.08, 71.41, 1103.5, '2022-08-21 18:58:37', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (16, 1070.37, 29.55, 771.8, 168.3, '2023-01-08 08:05:11', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (2, 469.19, 284.72, 616.01, 789.08, '2023-03-25 16:07:17', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (14, 516.56, 559.46, 1163.83, 260.85, '2022-11-08 20:34:12', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (9, 565.85, 877.87, 583.85, 83.37, '2023-01-12 13:54:47', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (16, 450.19, 488.37, 72.02, 101.54, '2022-10-13 23:20:26', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (6, 652.74, 167.48, 940.91, 701.62, '2022-07-14 08:26:46', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (14, 562.12, 934.45, 1168.91, 344.78, '2023-02-09 16:41:45', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (11, 1075.95, 503.1, 999.37, 445.27, '2022-08-12 10:04:47', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (12, 813.95, 1110.67, 995.65, 541.57, '2022-05-25 04:20:00', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (19, 567.62, 1110.96, 460.4, 79.22, '2022-08-15 19:20:31', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (13, 925.83, 1171.9, 1036.58, 828.99, '2022-08-23 22:43:07', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (16, 988.07, 87.99, 8.11, 1016.77, '2022-06-22 19:19:41', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (10, 462.74, 35.71, 73.62, 695.92, '2022-07-20 21:49:51', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (17, 1013.29, 405.58, 523.01, 1193.21, '2022-11-24 08:19:16', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (16, 648.36, 492.03, 895.5, 693.84, '2023-01-31 20:24:15', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (8, 937.04, 1028.04, 869.13, 879.96, '2022-08-23 06:34:57', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (17, 332.77, 731.46, 1122.61, 579.09, '2022-08-09 22:48:52', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (5, 781.51, 323.92, 555.52, 77.1, '2022-10-07 13:34:34', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (19, 1121.29, 350.44, 621.66, 922.49, '2022-12-23 10:29:44', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (3, 705.88, 165.82, 175.42, 741.16, '2023-01-16 03:03:15', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (18, 375.87, 1185.54, 329.47, 670.62, '2022-06-11 19:56:00', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (16, 917.42, 888.99, 1045.9, 17.63, '2022-07-03 12:06:35', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (15, 186.98, 466.44, 873.16, 471.72, '2022-10-19 07:59:43', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (14, 227.03, 950.53, 1191.31, 232.45, '2022-12-23 01:51:40', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (14, 1185.13, 761.67, 746.5, 682.06, '2023-01-25 04:27:45', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (11, 864.48, 819.81, 1172.37, 331.37, '2022-06-07 11:08:47', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (16, 458.89, 511.35, 1043.54, 1074.08, '2022-12-24 20:12:38', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (14, 762.02, 809.89, 108.17, 913.33, '2023-02-01 15:44:44', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (6, 277.07, 32.57, 1150.67, 745.58, '2022-09-03 13:40:09', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (13, 1037.7, 436.06, 634.81, 292.93, '2023-01-30 04:38:35', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (18, 841.67, 106.89, 532.06, 1052.42, '2022-11-20 08:32:44', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (2, 727.15, 906.21, 795.65, 982.07, '2022-04-05 04:17:26', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (1, 874.01, 684.42, 951.64, 875.51, '2022-07-10 17:34:31', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (1, 467.99, 455.97, 854.03, 1018.51, '2023-03-27 10:20:11', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (18, 789.11, 265.7, 684.3, 45.21, '2022-07-21 23:29:35', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (20, 181.31, 151.34, 881.32, 691.75, '2022-08-28 04:03:23', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (3, 390.9, 772.46, 496.62, 414.82, '2023-02-01 03:30:05', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (19, 196.51, 1067.1, 432.71, 425.67, '2023-03-12 00:51:29', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (4, 45.17, 392.02, 138.73, 298.05, '2022-08-27 06:49:19', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (20, 241.85, 750.69, 616.04, 622.46, '2022-08-02 19:20:44', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (9, 977.57, 176.41, 351.66, 839.77, '2022-06-08 11:00:58', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (16, 304.01, 284.77, 1196.1, 594.59, '2023-02-07 18:48:47', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (5, 400.35, 254.21, 573.8, 1158.49, '2022-11-30 23:01:34', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (7, 968.44, 710.72, 111.71, 547.89, '2022-05-30 05:09:33', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (1, 30.72, 201.7, 36.71, 667.98, '2022-10-21 16:32:18', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (3, 626.12, 448.08, 540.83, 1137.96, '2022-11-13 04:20:24', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (15, 1041.89, 1005.37, 786.75, 756.14, '2022-04-23 06:01:49', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (14, 519.72, 581.82, 970.98, 107.56, '2022-12-28 06:22:42', '2023-04-01 21:12:07');
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (11, 474.96, 726.9, 352.28, 1185.97, '2022-04-12 23:52:33', null);
-- insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (7, 720.34, 823.12, 408.05, 42.4, '2022-10-29 06:57:03', '2023-04-01 21:12:07');