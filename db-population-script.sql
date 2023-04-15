USE flashnote_db;



INSERT INTO users (user_name, user_email, user_password, created_at) VALUES ('ldudny0', 'tgrelak0@loc.gov', 'qPtZR1lDB', '2022-05-23 16:19:07');
INSERT INTO users (user_name, user_email, user_password, created_at) VALUES ('dsamson1', 'sgrolle1@berkeley.edu', 'f27LL7NB', '2022-12-19 15:48:10');
INSERT INTO users (user_name, user_email, user_password, created_at) VALUES ('tstrange2', 'dwithrop2@columbia.edu', '1sSOO2QQ42q', '2023-02-11 05:12:39');
INSERT INTO users (user_name, user_email, user_password, created_at) VALUES ('klovelady3', 'cgraeber3@irs.gov', 'SkKPaan3V3ib', '2022-11-13 13:34:56');
INSERT INTO users (user_name, user_email, user_password, created_at) VALUES ('kwinkle4', 'mbroadwell4@java.com', '1oF85t3', '2022-10-27 05:23:30');
INSERT INTO users (user_name, user_email, user_password, created_at) VALUES ('pperott5', 'adener5@posterous.com', '5VDGKUnfX', '2022-11-13 19:10:45');
INSERT INTO users (user_name, user_email, user_password, created_at) VALUES ('lforsard6', 'rkelberman6@g.co', 'R44dvvsubKuK', '2022-09-25 06:53:25');
INSERT INTO users (user_name, user_email, user_password, created_at) VALUES ('qwolfinger7', 'akinchley7@oaic.gov.au', 'e8fhh7hu', '2022-12-31 17:34:55');
INSERT INTO users (user_name, user_email, user_password, created_at) VALUES ('mreape8', 'zlyon8@ftc.gov', 'jZpUu8xpk', '2022-10-19 16:42:02');
INSERT INTO users (user_name, user_email, user_password, created_at) VALUES ('ehuie9', 'bvesque9@disqus.com', 'G02V43loGl', '2022-08-08 18:56:23');
INSERT INTO users (user_name, user_email, user_password, created_at) VALUES ('abeattya', 'mklampka@google.pl', 'MZOVwt', '2022-08-26 19:54:26');
INSERT INTO users (user_name, user_email, user_password, created_at) VALUES ('rcarnellb', 'nlowndesb@cmu.edu', '39QESgtfJiLq', '2023-03-09 01:16:27');
INSERT INTO users (user_name, user_email, user_password, created_at) VALUES ('apounsettc', 'cthurlbournec@comsenz.com', 'dIa8yrV', '2022-09-14 04:36:23');
INSERT INTO users (user_name, user_email, user_password, created_at) VALUES ('pburnselld', 'nganifordd@washington.edu', '4atAd5hnTspZ', '2023-02-15 22:25:11');
INSERT INTO users (user_name, user_email, user_password, created_at) VALUES ('kmughale', 'tyerrille@networksolutions.com', 'QkmpnS', '2022-08-04 23:40:40');
INSERT INTO users (user_name, user_email, user_password, created_at) VALUES ('pbussellf', 'kpantherf@google.de', 'kpDyxosZ', '2022-09-07 19:00:01');
INSERT INTO users (user_name, user_email, user_password, created_at) VALUES ('wquidenhamg', 'dwindleyg@merriam-webster.com', '6qcysb', '2022-10-28 20:52:12');
INSERT INTO users (user_name, user_email, user_password, created_at) VALUES ('hschoenleiterh', 'jmatth@sourceforge.net', 'uw0jxQzM6Xbg', '2022-08-04 13:10:01');
INSERT INTO users (user_name, user_email, user_password, created_at) VALUES ('jstquenini', 'osotheroni@oracle.com', 'zE50sLT', '2022-09-19 21:34:42');
INSERT INTO users (user_name, user_email, user_password, created_at) VALUES ('mmckevanyj', 'jpinchenj@desdev.cn', 'OCw35Vs', '2022-04-05 06:17:27');








INSERT INTO documents(user_id, document_title) VALUES (1, 'Test Document');
INSERT INTO documents (user_id, document_title, created_at, updated_at) VALUES 
    (1, 'Introduction to Psychology', '2022-03-01 10:00:00', '2022-03-01 10:00:00'),
    (1, 'Social Psychology', '2022-03-05 12:00:00', '2022-03-05 12:00:00'),
    (2, 'Biology', '2022-02-01 09:00:00', '2022-02-01 09:00:00'),
    (2, 'Linear Algebra', '2022-02-15 13:00:00', '2022-02-18 15:00:00'),
    (3, 'Microeconomics', '2022-01-02 14:00:00', '2022-01-02 14:00:00'),
    (3, 'Macroeconomics', '2022-01-10 16:00:00', '2022-01-10 16:00:00'),
    (4, 'Introduction to Computer Science', '2022-04-03 11:00:00', '2022-04-03 11:00:00'),
    (4, 'Data Structures and Algorithms', '2022-04-05 14:00:00', '2022-04-08 10:00:00'),
    (5, 'Anatomy and Physiology', '2022-05-01 09:00:00', '2022-05-01 09:00:00'),
    (5, 'Medical Terminology', '2022-05-05 10:00:00', '2022-05-05 10:00:00'),
    (6, 'World History', '2022-06-01 13:00:00', '2022-06-01 13:00:00'),
    (6, 'European History', '2022-06-05 16:00:00', '2022-06-05 16:00:00'),
    (7, 'Organic Chemistry', '2022-07-02 11:00:00', '2022-07-02 11:00:00'),
    (7, 'Biochemistry', '2022-07-10 12:00:00', '2022-07-13 09:00:00'),
    (8, 'Introduction to Philosophy', '2022-08-01 15:00:00', '2022-08-01 15:00:00'),
   -- (8, 'Ethics', '2022-08-05 14:00:00', '2022-08-05 14:00:00'),
    (9, 'Marketing', '2022-09-01 12:00:00', '2022-09-01 12:00:00'),
    (9, 'Consumer Behavior', '2022-09-05 13:00:00', '2022-09-05 16:00:00'),
    (10, 'Introduction to Literature', '2022-10-02 10:00:00', '2022-10-02 10:00:00'),
	(11, 'Introduction to Sociology', '2022-11-01 09:00:00', '2022-11-01 09:00:00'),
    (11, 'Criminology', '2022-11-05 11:00:00', '2022-11-05 11:00:00'),
    (12, 'American History', '2022-12-01 14:00:00', '2022-12-01 14:00:00'),
    (12, 'Civil War and Reconstruction', '2022-12-05 16:00:00', '2022-12-05 16:00:00'),
    (13, 'Introduction to Anthropology', '2023-01-02 10:00:00', '2023-01-02 10:00:00'),
    (13, 'Archaeology', '2023-01-10 12:00:00', '2023-01-10 12:00:00'),
    (14, 'Statistics', '2023-02-03 13:00:00', '2023-02-03 13:00:00'),
    (14, 'Probability', '2023-02-05 14:00:00', '2023-02-05 14:00:00'),
    (15, 'Introduction to Linguistics', '2023-03-01 11:00:00', '2023-03-01 11:00:00'),
    (15, 'Syntax', '2023-03-05 15:00:00', '2023-03-05 15:00:00');

 



INSERT INTO notes(document_id, parent_note, order_of_appearance, note_content) VALUES(1,NULL,1,"Note 1");
INSERT INTO notes(document_id, parent_note, order_of_appearance, note_content) VALUES(1,1,2,"    First Child of Note 1");
INSERT INTO notes(document_id, parent_note, order_of_appearance, note_content) VALUES(1,1,3,"    Second Child of Note 1");
INSERT INTO notes(document_id, parent_note, order_of_appearance, note_content) VALUES(1,2,4,"        First Child of Second Child of Note 1");
INSERT INTO notes(document_id, parent_note, order_of_appearance, note_content) VALUES(1,3,5,"        Second Child of Second Child of Note 1");
INSERT INTO notes(document_id, parent_note, order_of_appearance, note_content) VALUES(1,1,6,"    Third Child of Note 1");
INSERT INTO notes(document_id, parent_note, order_of_appearance, note_content) VALUES(1,NULL,7,"Note 2");
INSERT INTO notes(document_id, parent_note, order_of_appearance, note_content) VALUES(1,7,8,"    First Child of Note 2");
INSERT INTO notes(document_id, parent_note, order_of_appearance, note_content) VALUES(1,7,9,"    Second Child of Note 2");
INSERT INTO notes(document_id, parent_note, order_of_appearance, note_content) VALUES(1,9,10,"        First Child of Second Child of Note 2");
INSERT INTO notes(document_id, parent_note, order_of_appearance, note_content) VALUES(1,9,11,"        Second Child of Second Child of Note 2");
INSERT INTO notes(document_id, parent_note, order_of_appearance, note_content) VALUES(1,7,12,"    Third Child of Note 2");
INSERT INTO notes(document_id, parent_note, order_of_appearance, note_content) VALUES(1,NULL,13,"Note 3");
INSERT INTO notes(document_id, parent_note, order_of_appearance, note_content) VALUES(1,13,14,"    First Child of Note 3");


INSERT INTO notes (document_id, parent_note, order_of_appearance, note_content)
VALUES
    (4, NULL, 1, '<p>What is the <strong>difference between mitosis and meiosis</strong>? <span class="arrow">&rArr;</span> Mitosis is the process of cell division that results in two identical daughter cells, while meiosis is the process of cell division that results in <strong>four genetically diverse daughter cells</strong>.</p>'),
    (4, 15, 2, '<p>What is <strong>DNA replication</strong>? <span class="arrow">&rArr;</span> DNA replication is the process by which a double-stranded DNA molecule is copied to produce <strong>two identical DNA molecules</strong>.</p>'),
    (4, 15, 3, '<p>What is the <strong>difference between DNA and RNA</strong>? <span class="arrow">&rArr;</span> DNA is a double-stranded nucleic acid that contains the <strong>genetic information</strong> of an organism, while RNA is a single-stranded nucleic acid that acts as a <strong>messenger</strong> between DNA and the ribosomes.</p>'),
    (4, NULL, 4, '<p>What is an <strong>ecosystem</strong>? <span class="arrow">&rArr;</span> An ecosystem is a <strong>community of living organisms</strong> (plants, animals, and microbes) interacting with their physical and chemical environment.</p>'),
    (4, 18, 5, '<p>What is the <strong>carbon cycle</strong>? <span class="arrow">&rArr;</span> The carbon cycle is the process by which carbon is exchanged between <strong>living organisms, the atmosphere, and the Earth’s crust</strong>.</p>');
INSERT INTO notes (document_id, parent_note, order_of_appearance, note_content)
VALUES
    (4, NULL, 6, '<p>What is <strong>evolution</strong>? <span class="arrow">&rArr;</span> Evolution is the process by which <strong>species change over time</strong> through the mechanism of natural selection.</p>'),
    (4, NULL, 7, '<p>What is the <strong>function of the respiratory system</strong>? <span class="arrow">&rArr;</span> The respiratory system is responsible for the <strong>exchange of gases</strong> (oxygen and carbon dioxide) between the body and the environment.</p>'),
    (4, NULL, 8, '<p>What is a <strong>genome</strong>? <span class="arrow">&rArr;</span> A genome is the complete set of <strong>genetic material</strong> of an organism.</p>'),
    (4, NULL, 9, "<p>What is the <strong>water cycle</strong>? <span class=\"arrow\">&rArr;</span> The water cycle is the process by which water is <strong>transferred between the Earth's surface and the atmosphere</strong>.</p>"),
    (4, NULL, 10, '<p>What is <strong>photosynthesis</strong>? <span class="arrow">&rArr;</span> Photosynthesis is the process by which <strong>plants convert light energy into chemical energy</strong> (glucose) through the absorption of carbon dioxide and the release of oxygen.</p>');

INSERT INTO notes (document_id, parent_note, order_of_appearance, note_content)
VALUES
    (2, NULL, 1, '<p>What is <strong>psychology</strong>? <span class="arrow">&rArr;</span> Psychology is the scientific study of <strong>human behavior and mental processes</strong>.</p>'),
    (2, 25, 2, '<p>What is the <strong>structure of the brain</strong>? <span class="arrow">&rArr;</span> The brain is divided into three main parts: the <strong>cerebrum</strong>, the <strong>cerebellum</strong>, and the <strong>brainstem</strong>.</p>'),
    (2, NULL, 3, '<p>What is <strong>classical conditioning</strong>? <span class="arrow">&rArr;</span> Classical conditioning is a type of learning in which a neutral stimulus is repeatedly paired with a stimulus that naturally produces a particular response, until eventually the neutral stimulus alone is enough to elicit that response.</p>'),
    (2, 26, 4, '<p>What is <strong>operant conditioning</strong>? <span class="arrow">&rArr;</span> Operant conditioning is a type of learning in which behavior is modified by its consequences. Positive consequences (rewards) increase the likelihood of the behavior being repeated, while negative consequences (punishments) decrease the likelihood of the behavior being repeated.</p>'),
    (2, NULL, 5, '<p>What is <strong>motivation</strong>? <span class="arrow">&rArr;</span> Motivation is the internal state or condition that activates and directs behavior towards a goal.</p>');

INSERT INTO notes (document_id, parent_note, order_of_appearance, note_content)
VALUES
    (2, 29, 6, '<p>What is <strong>memory</strong>? <span class="arrow">&rArr;</span> Memory is the ability of the brain to store and retrieve information over time.</p>'),
    (2, 29, 7, '<p>What is the <strong>difference between short-term and long-term memory</strong>? <span class="arrow">&rArr;</span> Short-term memory is temporary and can hold a limited amount of information for a brief period of time, while long-term memory has a much larger capacity and can hold information for a longer period of time.</p>'),
    (2, 30, 8, '<p>What are the <strong>three stages of memory</strong>? <span class="arrow">&rArr;</span> The three stages of memory are <strong>encoding</strong> (processing information into memory), <strong>storage</strong> (retaining information over time), and <strong>retrieval</strong> (recovering information from memory).</p>'),
    (2, 30, 9, '<p>What is <strong>social psychology</strong>? <span class="arrow">&rArr;</span> Social psychology is the scientific study of how people think, feel, and behave in social situations.</p>'),
    (2, NULL, 10, '<p>What is the <strong>fundamental attribution error</strong>? <span class="arrow">&rArr;</span> The fundamental attribution error is the tendency to overemphasize dispositional (internal) explanations for other people\'s behavior, rather than considering situational (external) factors.</p>');

INSERT INTO notes (document_id, parent_note, order_of_appearance, note_content)
VALUES
    (3, NULL, 1, '<p>What is <strong>social psychology</strong>? <span class="arrow">&rArr;</span> Social psychology is the scientific study of how people think, feel, and behave in social situations.</p>'),
    (3, NULL, 2, '<p>What is <strong>conformity</strong>? <span class="arrow">&rArr;</span> Conformity is the tendency to adjust one\'s thoughts, feelings, or behaviors in ways that are in agreement with those of a particular individual or group, or with social norms.</p>'),
    (3, 35, 3, '<p>What is the <strong>Asch conformity experiment</strong>? <span class="arrow">&rArr;</span> The Asch conformity experiment was a study conducted in the 1950s that demonstrated the power of conformity in group situations. Participants were asked to match the length of a line to a set of comparison lines, and confederates intentionally gave incorrect answers to see if participants would conform to the group.</p>'),
    (3, 35, 4, '<p>What is <strong>compliance</strong>? <span class="arrow">&rArr;</span> Compliance is the act of conforming to a request or demand, often from someone in a position of authority.</p>'),
    (3, NULL, 5, '<p>What is <strong>obedience</strong>? <span class="arrow">&rArr;</span> Obedience is the act of following orders from someone in a position of authority, often without question or resistance.</p>');
    
INSERT INTO notes (document_id, parent_note, order_of_appearance, note_content)
VALUES
    (3, NULL, 6, '<p>What is <strong>social influence</strong>? <span class="arrow">&rArr;</span> Social influence is the process by which individuals and groups exert influence on each other, often resulting in changes in behavior, attitudes, or beliefs.</p>'),
    (3, 41, 7, '<p>What is <strong>group polarization</strong>? <span class="arrow">&rArr;</span> Group polarization is the tendency for groups to make more extreme decisions or adopt more extreme positions than individuals would on their own, often as a result of group discussion and reinforcement.</p>'),
    (3, NULL, 8, '<p>What is <strong>groupthink</strong>? <span class="arrow">&rArr;</span> Groupthink is the tendency for groups to make flawed decisions as a result of a desire for conformity, unity, and agreement, often at the expense of critical thinking and sound judgment.</p>'),
    (3, 42, 9, '<p>What is <strong>stereotype</strong>? <span class="arrow">&rArr;</span> A stereotype is a widely held, oversimplified, and often inaccurate belief about a group of people, based on their perceived characteristics.</p>'),
    (3, NULL, 10, '<p>What is <strong>prejudice</strong>? <span class="arrow">&rArr;</span> Prejudice is a negative attitude or feeling toward an individual or group, often based on their membership in a particular social group or category.</p>');


INSERT INTO notes (document_id, parent_note, order_of_appearance, note_content)
VALUES
    (5, NULL, 1, '<p>What is a <strong>vector</strong>? <span class="arrow">&rArr;</span> A vector is an object that has both magnitude and direction, represented as an array of numbers or coordinates in a certain space.</p>'),
    (5, 45, 2, '<p>What is a <strong>matrix</strong>? <span class="arrow">&rArr;</span> A matrix is a rectangular array of numbers or elements arranged in rows and columns, used for performing operations such as addition, subtraction, multiplication, and inversion.</p>'),
    (5, 46, 3, '<p>What is the <strong>dot product</strong> of two vectors? <span class="arrow">&rArr;</span> The dot product of two vectors is a scalar value equal to the product of their magnitudes and the cosine of the angle between them.</p>'),
    (5, 47, 4, '<p>What is the <strong>cross product</strong> of two vectors? <span class="arrow">&rArr;</span> The cross product of two vectors is a vector that is perpendicular to both of them and has a magnitude equal to the product of their magnitudes and the sine of the angle between them.</p>'),
    (5, NULL, 5, '<p>What is a <strong>eigenvalue</strong>? <span class="arrow">&rArr;</span> An eigenvalue of a matrix is a scalar value that, when multiplied by a corresponding eigenvector, results in a new vector that is parallel to the original eigenvector.</p>'),
    (5, NULL, 6, '<p>What is an <strong>eigenvector</strong>? <span class="arrow">&rArr;</span> An eigenvector of a matrix is a non-zero vector that, when multiplied by a corresponding eigenvalue, results in a new vector that is parallel to the original eigenvector.</p>'),
    (5, 50, 7, '<p>What is a <strong>linear transformation</strong>? <span class="arrow">&rArr;</span> A linear transformation is a function that maps vectors from one space to another in such a way that the properties of addition and scalar multiplication are preserved.</p>'),
    (5, 50, 8, '<p>What is a <strong>basis</strong> for a vector space? <span class="arrow">&rArr;</span> A basis for a vector space is a set of vectors that are linearly independent and span the entire space, meaning that any vector in the space can be written as a linear combination of the basis vectors.</p>'),
    (5, NULL, 9, '<p>What is a <strong>rank</strong> of a matrix? <span class="arrow">&rArr;</span> The rank of a matrix is the number of linearly independent rows or columns it has, and is equal to the dimension of the vector space spanned by its rows or columns.</p>'),
    (5, NULL, 10, '<p>What is a <strong>system of linear equations</strong>? <span class="arrow">&rArr;</span> A system of linear equations is a set of equations that can be written in the form Ax = b, where A is a matrix of coefficients, x is a vector of unknowns, and b is a vector of known values</p>');


INSERT INTO notes (document_id, parent_note, order_of_appearance, note_content)
VALUES
    (6, NULL, 1, '<p>What is <strong>microeconomics</strong>? <span class="arrow">&rArr;</span> Microeconomics is the study of the behavior of individual consumers, firms, and industries in specific markets.</p>'),
    (6, 55, 2, '<p>What is <strong>demand</strong>? <span class="arrow">&rArr;</span> Demand refers to the quantity of a good or service that consumers are willing and able to buy at a given price, during a certain period of time, ceteris paribus.</p>'),
    (6, 55, 3, '<p>What is <strong>supply</strong>? <span class="arrow">&rArr;</span> Supply refers to the quantity of a good or service that producers are willing and able to sell at a given price, during a certain period of time, ceteris paribus.</p>'),
    (6, 55, 4, '<p>What is <strong>market equilibrium</strong>? <span class="arrow">&rArr;</span> Market equilibrium occurs when the quantity of a good or service demanded by consumers is equal to the quantity supplied by producers, at a given price, with no surplus or shortage.</p>'),
    (6, 58, 5, '<p>What is the <strong>law of demand</strong>? <span class="arrow">&rArr;</span> The law of demand states that, ceteris paribus, the quantity of a good or service demanded by consumers decreases as its price increases, and increases as its price decreases.</p>');
INSERT INTO notes (document_id, parent_note, order_of_appearance, note_content)
VALUES
    (6, NULL, 6, '<p>What is <strong>elasticity</strong> in microeconomics? <span class="arrow">&rArr;</span> Elasticity is a measure of the responsiveness of quantity demanded or supplied to changes in price, income, or other relevant factors.</p>'),
    (6, NULL, 7, '<p>What is <strong>monopoly</strong> in microeconomics? <span class="arrow">&rArr;</span> A monopoly is a market structure in which a single firm controls the entire supply of a particular good or service, giving it the power to set prices and limit output.</p>'),
    (6, NULL, 8, '<p>What is <strong>oligopoly</strong> in microeconomics? <span class="arrow">&rArr;</span> An oligopoly is a market structure in which a small number of large firms dominate the market, giving them significant control over prices and output.</p>'),
    (6, NULL, 9, '<p>What is <strong>perfect competition</strong> in microeconomics? <span class="arrow">&rArr;</span> Perfect competition is a market structure in which a large number of small firms compete with each other to sell a homogeneous product, with no single firm able to influence the market price.</p>'),
    (6, NULL, 10, '<p>What is <strong>market failure</strong> in microeconomics? <span class="arrow">&rArr;</span> Market failure occurs when the allocation of resources in a market is inefficient, leading to a deadweight loss and a failure to achieve allocative efficiency.</p>');

INSERT INTO notes (document_id, parent_note, order_of_appearance, note_content)
VALUES
    (7, NULL, 1, '<p>What is <strong>macroeconomics</strong>? <span class="arrow">&rArr;</span> Macroeconomics is the branch of economics that studies the performance, structure, and behavior of the entire economy, rather than individual markets or firms.</p>'),
    (7, 65, 2, '<p>What is <strong>Gross Domestic Product (GDP)</strong>? <span class="arrow">&rArr;</span> GDP is the monetary value of all final goods and services produced within a country\'s borders in a specific period of time, usually a year.</p>'),
    (7, 66, 3, '<p>What is <strong>inflation</strong>? <span class="arrow">&rArr;</span> Inflation is the rate at which the general level of prices for goods and services is rising, and, subsequently, purchasing power is falling.</p>'),
    (7, NULL, 4, '<p>What is <strong>monetary policy</strong>? <span class="arrow">&rArr;</span> Monetary policy is the process by which a central bank controls the supply of money, often through interest rates, to achieve economic goals such as price stability, full employment, and stable economic growth.</p>'),
    (7, NULL, 5, '<p>What is <strong>fiscal policy</strong>? <span class="arrow">&rArr;</span> Fiscal policy is the use of government spending and taxation to influence the economy, often with the goal of achieving full employment, price stability, and sustainable economic growth.</p>'),
    (7, 69, 6, '<p>What is <strong>aggregate demand</strong>? <span class="arrow">&rArr;</span> Aggregate demand is the total amount of goods and services that households, businesses, governments, and foreigners are willing and able to buy in a given period of time at various price levels.</p>'),
    (7, NULL, 7, '<p>What is <strong>aggregate supply</strong>? <span class="arrow">&rArr;</span> Aggregate supply is the total amount of goods and services that producers are willing and able to supply in a given period of time at various price levels.</p>'),
    (7, NULL, 8, '<p>What is <strong>economic growth</strong>? <span class="arrow">&rArr;</span> Economic growth is the increase in the production of goods and services in an economy over time, usually measured by changes in real GDP.</p>'),
    (7, NULL, 9, '<p>What is <strong>unemployment</strong>? <span class="arrow">&rArr;</span> Unemployment is the state of being without a job, usually measured as a percentage of the labor force.</p>'),
    (7, NULL, 10, '<p>What is <strong>exchange rates</strong>? <span class="arrow">&rArr;</span> Exchange rates are the prices at which one currency can be exchanged for another, often used to facilitate international trade and investment.</p>');
  
INSERT INTO notes (document_id, parent_note, order_of_appearance, note_content)
VALUES
    (17, NULL, 1, '<p>What is <strong>ethics</strong>? <span class="arrow">&rArr;</span> Ethics is the branch of philosophy that deals with moral principles and values, including concepts such as right and wrong, justice, and virtue.</p>'),
    (17, NULL, 2, '<p>What is <strong>moral relativism</strong>? <span class="arrow">&rArr;</span> Moral relativism is the belief that moral principles and values are relative to individuals or cultures, and there are no absolute or objective moral standards.</p>'),
    (17, NULL, 3, '<p>What is <strong>utilitarianism</strong>? <span class="arrow">&rArr;</span> Utilitarianism is a consequentialist ethical theory that advocates for actions that maximize overall happiness or well-being, and minimizes overall suffering or harm.</p>'),
    (17, 77, 4, '<p>What is <strong>deontology</strong>? <span class="arrow">&rArr;</span> Deontology is a non-consequentialist ethical theory that emphasizes following moral rules or duties, regardless of their consequences.</p>'),
    (17, 77, 5, '<p>What is <strong>virtue ethics</strong>? <span class="arrow">&rArr;</span> Virtue ethics is an ethical theory that emphasizes the development of moral character and virtues, such as honesty, courage, and compassion.</p>'),
    (17, 79, 6, '<p>What is <strong>the trolley problem</strong>? <span class="arrow">&rArr;</span> The trolley problem is a thought experiment in ethics that presents a dilemma of choosing between two or more actions, each of which has morally significant consequences.</p>'),
    (17, NULL, 7, '<p>What is <strong>the categorical imperative</strong>? <span class="arrow">&rArr;</span> The categorical imperative is a concept in deontological ethics that states that one should act only according to a maxim that one can will to become a universal law.</p>'),
    (17, NULL, 8, '<p>What is <strong>the principle of utility</strong>? <span class="arrow">&rArr;</span> The principle of utility is the central concept in utilitarianism, which states that actions are morally right if they promote the greatest happiness or well-being of the greatest number of people.</p>'),
    (17, NULL, 9, '<p>What is <strong>egoism</strong>? <span class="arrow">&rArr;</span> Egoism is the ethical theory that one should act in one\'s self-interest, even at the expense of others\' interests or well-being.</p>'),
    (17, NULL, 10, '<p>What is <strong>care ethics</strong>? <span class="arrow">&rArr;</span> Care ethics is an ethical theory that emphasizes the moral significance of relationships and care-giving, especially in the context of personal relationships and social justice.</p>');

INSERT INTO notes (document_id, parent_note, order_of_appearance, note_content)
VALUES
    (8, NULL, 1, '<p>What is <strong>computer science</strong>? <span class="arrow">&rArr;</span> Computer science is the study of computers and computational systems.</p>'),
    (8, NULL, 2, '<p>What is an <strong>algorithm</strong>? <span class="arrow">&rArr;</span> An algorithm is a set of instructions that a computer program follows to solve a problem or accomplish a task.</p>'),
    (8, NULL, 3, '<p>What is <strong>programming</strong>? <span class="arrow">&rArr;</span> Programming is the process of designing, writing, testing, and maintaining computer programs.</p>'),
    (8, 87, 4, '<p>What is a <strong>data structure</strong>? <span class="arrow">&rArr;</span> A data structure is a way of organizing and storing data in a computer program, so that it can be accessed and used efficiently.</p>'),
    (8, 88, 5, '<p>What is <strong>object-oriented programming</strong>? <span class="arrow">&rArr;</span> Object-oriented programming is a programming paradigm that uses objects to represent data and methods to represent actions.</p>'),
    (8, 89, 6, '<p>What is a <strong>compiler</strong>? <span class="arrow">&rArr;</span> A compiler is a program that translates source code written in a programming language into machine code that can be executed by a computer.</p>'),
    (8, 89, 7, '<p>What is a <strong>debugger</strong>? <span class="arrow">&rArr;</span> A debugger is a tool that allows a programmer to track down and fix errors in a computer program.</p>'),
    (8, 89, 8, '<p>What is <strong>software engineering</strong>? <span class="arrow">&rArr;</span> Software engineering is the process of designing, creating, testing, and maintaining software.</p>'),
    (8, NULL, 9, '<p>What is a <strong>database</strong>? <span class="arrow">&rArr;</span> A database is a collection of data that is organized in a way that allows it to be easily accessed, managed, and updated.</p>'),
    (8, NULL, 10, '<p>What is a <strong>user interface</strong>? <span class="arrow">&rArr;</span> A user interface is the part of a computer program or system that allows users to interact with it.</p>');

INSERT INTO notes (document_id, parent_note, order_of_appearance, note_content)
VALUES
    (9, NULL, 1, '<p>What is a <strong>data structure</strong>? <span class="arrow">&rArr;</span> A data structure is a way of organizing and storing data in a computer so that it can be accessed and used efficiently.</p>'),
    (9, NULL, 2, '<p>What is an <strong>algorithm</strong>? <span class="arrow">&rArr;</span> An algorithm is a step-by-step procedure for solving a problem or accomplishing a task.</p>'),
    (9, NULL, 3, '<p>What is <strong>time complexity</strong>? <span class="arrow">&rArr;</span> Time complexity is a measure of the amount of time it takes for an algorithm to run as a function of the size of the input.</p>'),
    (9, NULL, 4, '<p>What is <strong>space complexity</strong>? <span class="arrow">&rArr;</span> Space complexity is a measure of the amount of memory an algorithm requires as a function of the size of the input.</p>'),
    (9, NULL, 5, '<p>What is a <strong>linked list</strong>? <span class="arrow">&rArr;</span> A linked list is a data structure that consists of a sequence of nodes, where each node contains data and a reference to the next node in the sequence.</p>'),
    (9, NULL, 6, '<p>What is a <strong>stack</strong>? <span class="arrow">&rArr;</span> A stack is a data structure that allows elements to be inserted and removed only from the top of the stack.</p>'),
    (9, NULL, 7, '<p>What is a <strong>queue</strong>? <span class="arrow">&rArr;</span> A queue is a data structure that allows elements to be inserted at one end and removed from the other end.</p>'),
    (9, NULL, 8, '<p>What is a <strong>tree</strong>? <span class="arrow">&rArr;</span> A tree is a data structure that consists of a set of nodes connected by edges, where each node has a parent (except for the root) and zero or more children.</p>'),
    (9, NULL, 9, '<p>What is a <strong>binary search tree</strong>? <span class="arrow">&rArr;</span> A binary search tree is a binary tree in which each node has at most two children, and the value of each node is greater than or equal to the values of all nodes in its left subtree and less than or equal to the values of all nodes in its right subtree.</p>'),
    (9, NULL, 10, '<p>What is a <strong>hash table</strong>? <span class="arrow">&rArr;</span> A hash table is a data structure that stores key-value pairs, where each key is hashed to a unique index in an array, allowing for constant-time access to the value associated with the key.</p>');

INSERT INTO notes (document_id, parent_note, order_of_appearance, note_content)
VALUES
    (10, NULL, 1, '<p>What is the <strong>skeletal system</strong>? <span class="arrow">&rArr;</span> The skeletal system is the framework of bones and cartilage that supports and protects the body, as well as facilitates movement and production of blood cells.</p>'),
    (10, NULL, 2, '<p>What is the <strong>muscular system</strong>? <span class="arrow">&rArr;</span> The muscular system is responsible for movement and maintaining posture, as well as generating heat and facilitating circulation of blood and lymph throughout the body.</p>'),
    (10, NULL, 3, '<p>What is the <strong>circulatory system</strong>? <span class="arrow">&rArr;</span> The circulatory system is responsible for transporting oxygen, nutrients, and waste products throughout the body, as well as regulating body temperature and pH balance.</p>'),
    (10, NULL, 4, '<p>What is the <strong>respiratory system</strong>? <span class="arrow">&rArr;</span> The respiratory system is responsible for bringing oxygen into the body and removing carbon dioxide, as well as regulating pH balance and vocalization.</p>'),
    (10, NULL, 5, '<p>What is the <strong>digestive system</strong>? <span class="arrow">&rArr;</span> The digestive system is responsible for breaking down food into nutrients that can be absorbed by the body, as well as eliminating waste products.</p>'),
    (10, NULL, 6, '<p>What is the <strong>urinary system</strong>? <span class="arrow">&rArr;</span> The urinary system is responsible for eliminating waste products from the body and regulating electrolyte and fluid balance, as well as blood pressure and pH balance.</p>'),
    (10, NULL, 7, '<p>What is the <strong>endocrine system</strong>? <span class="arrow">&rArr;</span> The endocrine system is responsible for regulating growth, metabolism, and reproduction, as well as responding to stress and maintaining homeostasis.</p>'),
    (10, NULL, 8, '<p>What is the <strong>reproductive system</strong>? <span class="arrow">&rArr;</span> The reproductive system is responsible for producing and transporting gametes, as well as facilitating fertilization and pregnancy.</p>'),
    (10, NULL, 9, '<p>What is the <strong>immune system</strong>? <span class="arrow">&rArr;</span> The immune system is responsible for protecting the body against pathogens and foreign substances, as well as maintaining tolerance to self antigens.</p>'),
    (10, NULL, 10, '<p>What is the <strong>nervous system</strong>? <span class="arrow">&rArr;</span> The nervous system is responsible for receiving and processing sensory information, as well as generating and transmitting signals to control and coordinate body functions.</p>');

INSERT INTO notes (document_id, parent_note, order_of_appearance, note_content)
VALUES
    (11, NULL, 1, '<p>What is the <strong>prefix</strong> in medical terminology? <span class="arrow">&rArr;</span> The prefix is a word part added to the beginning of a medical term to modify its meaning.</p>'),
    (11, 115, 2, '<p>What is the <strong>suffix</strong> in medical terminology? <span class="arrow">&rArr;</span> The suffix is a word part added to the end of a medical term to modify its meaning.</p>'),
    (11, 115, 3, '<p>What is the <strong>root word</strong> in medical terminology? <span class="arrow">&rArr;</span> The root word is the main part of a medical term that gives it its core meaning.</p>'),
    (11, 115, 4, '<p>What is a <strong>combining vowel</strong> in medical terminology? <span class="arrow">&rArr;</span> A combining vowel is a vowel (usually "o") added to the end of a word root to make it easier to pronounce when combined with a suffix or another root.</p>'),
    (11, 118, 5, '<p>What is a <strong>compound word</strong> in medical terminology? <span class="arrow">&rArr;</span> A compound word is a medical term that is made up of two or more word roots combined together.</p>'),
    (11, 119, 6, '<p>What is a <strong>abbreviation</strong> in medical terminology? <span class="arrow">&rArr;</span> An abbreviation is a shortened form of a medical term or phrase that is used to save time or space when writing or typing.</p>'),
    (11, NULL, 7, '<p>What is a <strong>acronym</strong> in medical terminology? <span class="arrow">&rArr;</span> An acronym is a type of abbreviation that is formed by taking the first letter of each word in a phrase and combining them together to form a new word (e.g., AIDS).</p>'),
    (11, NULL, 8, '<p>What is a <strong>eponym</strong> in medical terminology? <span class="arrow">&rArr;</span> An eponym is a medical term that is named after a person, often a physician or researcher who discovered or described the condition.</p>'),
    (11, NULL, 9, '<p>What is a <strong>derivative</strong> in medical terminology? <span class="arrow">&rArr;</span> A derivative is a medical term that is formed from an existing term by adding a prefix or suffix, or by changing the spelling or pronunciation.</p>'),
    (11, NULL, 10, '<p>What is a <strong>synonym</strong> in medical terminology? <span class="arrow">&rArr;</span> A synonym is a medical term that has the same or similar meaning as another term.</p>');

INSERT INTO notes (document_id, parent_note, order_of_appearance, note_content)
VALUES
    (12, NULL, 1, '<p>What is <strong>world history</strong>? <span class="arrow">&rArr;</span> World history is the study of human history on a global scale, including the development of different societies, cultures, and civilizations.</p>'),
    (12, NULL, 2, '<p>What is the <strong>Neolithic Revolution</strong>? <span class="arrow">&rArr;</span> The Neolithic Revolution was a major turning point in human history, marked by the development of agriculture and the rise of settled communities.</p>'),
    (12, NULL, 3, '<p>What is <strong>imperialism</strong>? <span class="arrow">&rArr;</span> Imperialism is the policy of extending a nation\'s power and influence through colonization, use of military force, or other means.</p>'),
    (12, NULL, 4, '<p>What is the <strong>Enlightenment</strong>? <span class="arrow">&rArr;</span> The Enlightenment was a philosophical movement in 18th-century Europe that emphasized reason, individualism, and the importance of scientific inquiry.</p>'),
    (12, NULL, 5, '<p>What is the <strong>Industrial Revolution</strong>? <span class="arrow">&rArr;</span> The Industrial Revolution was a period of significant technological advancements and economic growth that began in Britain in the late 18th century and spread to other parts of the world.</p>'),
    (12, NULL, 6, '<p>What is <strong>colonialism</strong>? <span class="arrow">&rArr;</span> Colonialism is the policy or practice of acquiring and maintaining colonies, often for economic or strategic reasons.</p>'),
    (12, NULL, 7, '<p>What is <strong>nationalism</strong>? <span class="arrow">&rArr;</span> Nationalism is the ideology or belief in the importance of a shared national identity and the desire for political independence or autonomy.</p>'),
    (12, NULL, 8, '<p>What is the <strong>French Revolution</strong>? <span class="arrow">&rArr;</span> The French Revolution was a period of radical social and political upheaval in France from 1789 to 1799, marked by the overthrow of the monarchy and the rise of Napoleon Bonaparte.</p>'),
    (12, NULL, 9, '<p>What is <strong>the Cold War</strong>? <span class="arrow">&rArr;</span> The Cold War was a period of political and military tension between the Western powers, led by the United States, and the Eastern powers, led by the Soviet Union, following World War II.</p>'),
    (12, NULL, 10, '<p>What is <strong>decolonization</strong>? <span class="arrow">&rArr;</span> Decolonization is the process by which colonies gained independence from their colonizers, often through political and social movements.</p>');

INSERT INTO notes (document_id, parent_note, order_of_appearance, note_content)
VALUES
    (13, NULL, 1, '<p>What is the <strong>Renaissance</strong>? <span class="arrow">&rArr;</span> The Renaissance was a period in European history that began in Italy in the 14th century and lasted until the 17th century. It was characterized by a renewed interest in classical learning, a focus on humanism and individualism, and significant cultural achievements in art, literature, science, and philosophy.</p>'),
    (13, 135, 2, '<p>What was the <strong>Protestant Reformation</strong>? <span class="arrow">&rArr;</span> The Protestant Reformation was a religious movement that began in the 16th century and resulted in the division of Western Christianity into Catholic and Protestant branches. It was led by figures such as Martin Luther, John Calvin, and Henry VIII, who challenged the authority of the Roman Catholic Church and sought to reform or establish new Christian denominations.</p>'),
    (13, 136, 3, '<p>What was the <strong>Enlightenment</strong>? <span class="arrow">&rArr;</span> The Enlightenment was an intellectual and cultural movement that emerged in Europe in the 17th and 18th centuries. It emphasized reason, science, individualism, and human progress, and was characterized by a rejection of traditional authority and a focus on liberty, equality, and democracy.</p>'),
    (13, 137, 4, '<p>What was the <strong>French Revolution</strong>? <span class="arrow">&rArr;</span> The French Revolution was a period of radical social and political upheaval in France from 1789 to 1799. It was characterized by the overthrow of the monarchy, the establishment of a republic, and a period of violent political turmoil that included the Reign of Terror. The French Revolution had a profound impact on European and world history, and is often seen as a turning point in the development of modern politics and society.</p>'),
    (13, 137, 5, '<p>What was the <strong>Industrial Revolution</strong>? <span class="arrow">&rArr;</span> The Industrial Revolution was a period of rapid industrialization and technological advancement that began in Britain in the 18th century and spread throughout Europe and the world. It was characterized by the development of new manufacturing processes, the growth of urbanization and mass production, and significant social and economic changes that transformed the world.</p>'),
    (13, 137, 6, '<p>Who was <strong>Napoleon Bonaparte</strong>? <span class="arrow">&rArr;</span> Napoleon Bonaparte was a military and political leader of France who rose to prominence during the French Revolution and went on to become Emperor of the French from 1804 to 1814 and again in 1815. He is widely regarded as one of the greatest military commanders in history, and his campaigns and conquests had a significant impact on European and world history.</p>'),
    (13, NULL, 7, '<p>What was the <strong>Congress of Vienna</strong>? <span class="arrow">&rArr;</span> The Congress of Vienna was a series of meetings of European leaders held in Vienna, Austria in 1814-1815, in the aftermath of the Napoleonic Wars. The Congress aimed to reestablish peace and stability in Europe, and resulted in significant territorial and political changes that reshapedthe political landscape of Europe. The Congress is often seen as a turning point in the development of modern international relations and diplomacy.</p>'),
	(13, NULL, 8, '<p>What was the <strong>Scramble for Africa</strong>? <span class="arrow">⇒</span> The Scramble for Africa was a period of intense competition between European powers for control of African territories during the late 19th and early 20th centuries. It resulted in the colonization and annexation of almost the entire African continent by European powers, and had a profound impact on the history and development of Africa.</p>'),
	(13, NULL, 9, '<p>What was the <strong>First World War</strong>? <span class="arrow">⇒</span> The First World War was a global war that lasted from 1914 to 1918. It was triggered by the assassination of Archduke Franz Ferdinand of Austria-Hungary and involved the major world powers of the time. The war saw significant technological and strategic innovations, and resulted in the deaths of millions of soldiers and civilians. Its aftermath had a profound impact on the course of 20th century history.</p>'),
	(13, NULL, 10, '<p>What was the <strong>Russian Revolution</strong>? <span class="arrow">⇒</span> The Russian Revolution was a period of political and social upheaval in Russia in 1917, during which the monarchy was overthrown and replaced by a socialist government led by the Bolshevik Party, under the leadership of Vladimir Lenin. The revolution resulted in significant political and social changes in Russia and had a profound impact on the course of 20th century world history.</p>');

INSERT INTO notes (document_id, parent_note, order_of_appearance, note_content)
VALUES
    (14, NULL, 1, '<p>What is <strong>organic chemistry</strong>? <span class="arrow">&rArr;</span> Organic chemistry is the study of the structure, properties, and reactions of organic compounds, which are compounds that contain carbon atoms. It is a branch of chemistry that is focused on understanding the behavior of these carbon-based molecules.</p>'),
    (14, NULL, 2, '<p>What are <strong>alkanes</strong>? <span class="arrow">&rArr;</span> Alkanes are a family of hydrocarbons that have only single bonds between carbon atoms. They are also known as saturated hydrocarbons because they have the maximum number of hydrogen atoms that can be attached to each carbon atom. Alkanes are often used as fuels and are the simplest type of organic compounds.</p>'),
    (14, NULL, 3, '<p>What are <strong>alkenes</strong>? <span class="arrow">&rArr;</span> Alkenes are a family of hydrocarbons that have one or more double bonds between carbon atoms. They are also known as unsaturated hydrocarbons because they have fewer hydrogen atoms than alkanes. Alkenes are used in the production of plastics, fibers, and other materials.</p>'),
    (14, NULL, 4, '<p>What are <strong>alkynes</strong>? <span class="arrow">&rArr;</span> Alkynes are a family of hydrocarbons that have one or more triple bonds between carbon atoms. They are also known as unsaturated hydrocarbons because they have even fewer hydrogen atoms than alkenes. Alkynes are used in the production of synthetic rubber, plastics, and other materials.</p>'),
    (14, NULL, 5, '<p>What are <strong>aromatic compounds</strong>? <span class="arrow">&rArr;</span> Aromatic compounds are a class of organic compounds that contain a ring of atoms with alternating double bonds. They have a distinctive and often pleasant smell, and many are used in perfumes and flavorings. The most well-known aromatic compound is benzene.</p>'),
    (14, NULL, 6, '<p>What are <strong>carboxylic acids</strong>? <span class="arrow">&rArr;</span> Carboxylic acids are a class of organic compounds that contain a carboxyl group (COOH) attached to a carbon atom. They are often found in fruits and other foods, and are used in the production of soaps, detergents, and other products.</p>'),
    (14, NULL, 7, '<p>What are <strong>amines</strong>? <span class="arrow">&rArr;</span> Amines are a class of organic compounds that contain a nitrogen atom attached to one or more carbon atoms. They are found in a variety of biological molecules, including amino acids and nucleotides, and are used in the production of pharmaceuticals and other chemicals.</p>'),
    (14, NULL, 8, '<p>What are <strong>aldehydes</strong>? <span class="arrow">&rArr;</span> Aldehydes are a class of organic compounds that contain a carbonyl group (C=O) attached to a hydrogen atom and a carbon atom. They are used in the production of plastics, dyes, and other chemicals.</p>'),
	(14, NULL, 9, '<p>What are <strong>ketones</strong>? <span class="arrow">⇒</span> Ketones are a class of organic compounds that contain a carbonyl group (C=O) attached to two carbon atoms. They are often used as solvents and in the production of polymers and other materials.</p>'),
	(14, NULL, 10, '<p>What are <strong>esters</strong>? <span class="arrow">⇒</span> Esters are a class of organic compounds that are formed by the reaction of a carboxylic acid and an alcohol. They are often used in the production of fragrances, flavors, and other chemicals.</p>');

INSERT INTO notes (document_id, parent_note, order_of_appearance, note_content)
VALUES
	(15, NULL, 1, '<p>What is <strong>biochemistry</strong>? <span class="arrow">⇒</span> Biochemistry is the study of the chemical processes and substances that occur within living organisms. It combines principles from biology, chemistry, and physics to understand how biological systems function at a molecular level.</p>'),
	(15, NULL, 2, '<p>What is a <strong>protein</strong>? <span class="arrow">⇒</span> A protein is a large biomolecule that is made up of amino acids. It performs a wide range of functions within living organisms, including structural support, enzymatic catalysis, and signaling. Proteins are essential to life and are involved in virtually every process within cells.</p>'),
	(15, NULL, 3, '<p>What is <strong>DNA</strong>? <span class="arrow">⇒</span> DNA (deoxyribonucleic acid) is a molecule that carries genetic information within cells. It is made up of nucleotides, which are composed of a sugar, a phosphate group, and a nitrogenous base. DNA is responsible for the inheritance of traits from one generation to the next.</p>'),
	(15, NULL, 4, '<p>What is an <strong>enzyme</strong>? <span class="arrow">⇒</span> An enzyme is a protein that catalyzes chemical reactions within living organisms. It lowers the activation energy required for a reaction to occur, allowing it to proceed more quickly. Enzymes are highly specific, and each one typically catalyzes only one or a few related reactions.</p>'),
	(15, NULL, 5, '<p>What is <strong>RNA</strong>? <span class="arrow">⇒</span> RNA (ribonucleic acid) is a molecule that plays a key role in the process of gene expression. It is made up of nucleotides, similar to DNA, but with a different sugar and several different nitrogenous bases. RNA is involved in the transcription of genetic information from DNA and the translation of that information into proteins.</p>'),
	(15, NULL, 6, '<p>What is <strong>metabolism</strong>? <span class="arrow">⇒</span> Metabolism is the set of chemical reactions that occur within cells to maintain life. It includes processes such as the breakdown of nutrients to release energy, the synthesis of new biomolecules, and the elimination of waste products. Metabolism is regulated by enzymes and other proteins.</p>'),
	(15, NULL, 7, '<p>What is a <strong>lipid</strong>? <span class="arrow">⇒</span> A lipid is a biomolecule that is insoluble in water. It includes molecules such as fats, oils, and phospholipids. Lipids are important for energy storage, cell membrane structure, and signaling within cells.</p>'),
	(15, NULL, 8, '<p>What is <strong>glycolysis</strong>? <span class="arrow">⇒</span> Glycolysis is a metabolic pathway that converts glucose into pyruvate, releasing energy in the process. It occurs in the cytoplasm of cells and is the first step in both aerobic and anaerobic respiration. Glycolysis is regulated by a number of enzymes and is a key pathway in the metabolism of carbohydrates.</p>'),
	(15, NULL, 9, '<p>What is the <strong>Citric Acid Cycle</strong>? <span class="arrow">⇒</span> The Citric Acid Cycle, also known as the Krebs cycle, is a series of chemical reactions that occur in the mitochondria of eukaryotic cells. It is the second step in aerobic respiration and is responsible for the generation of energy in the form of ATP. The cycle involves the oxidation of acetyl-CoA to carbon dioxide, and the reduction of electron carriers such as NAD+ and FAD to NADH and FADH2.</p>'),
	(15, NULL, 10, '<p>What is <strong>gene regulation</strong>? <span class="arrow">⇒</span> Gene regulation is the process by which cells control the expression of genes. It involves a complex network of regulatory proteins, transcription factors, and signaling molecules that can either enhance or repress the transcription of genes. Gene regulation is essential for the proper development and function of cells, and disruptions in this process can lead to a variety of diseases.</p>');


INSERT INTO notes (document_id, parent_note, order_of_appearance, note_content)
VALUES
	(16, NULL, 1, '<p>What is <strong>philosophy</strong>? <span class="arrow">⇒</span> Philosophy is the study of fundamental questions about the nature of reality, existence, knowledge, values, reason, and language. It uses critical thinking, logic, and systematic approaches to explore these questions and provide reasoned arguments.</p>'),
	(16, NULL, 2, '<p>What is the <strong>mind-body problem</strong>? <span class="arrow">⇒</span> The mind-body problem is the philosophical problem of understanding the relationship between the mind and the body. It asks whether the mind and body are distinct entities or whether they are different aspects of the same thing, and how they interact with each other.</p>'),
	(16, NULL, 3, '<p>What is <strong>ethics</strong>? <span class="arrow">⇒</span> Ethics is the branch of philosophy that deals with questions of morality and how individuals ought to act. It explores concepts such as good and evil, right and wrong, and justice and fairness, and examines how moral principles apply to various situations.</p>'),
	(16, NULL, 4, '<p>What is <strong>epistemology</strong>? <span class="arrow">⇒</span> Epistemology is the branch of philosophy that deals with knowledge and belief. It asks questions such as: What can we know? How do we acquire knowledge? How certain can we be of our beliefs? Epistemology examines the nature, scope, and limits of knowledge.</p>'),
	(16, NULL, 5, '<p>What is <strong>metaphysics</strong>? <span class="arrow">⇒</span> Metaphysics is the branch of philosophy that deals with questions about the nature of reality. It asks questions such as: What is the nature of existence? What is the ultimate nature of reality? What is the relationship between mind and matter? Metaphysics examines fundamental questions about the nature of the universe.</p>'),
	(16, NULL, 6, '<p>What is <strong>logic</strong>? <span class="arrow">⇒</span> Logic is the study of reasoning and argumentation. It examines the principles of valid reasoning and the structure of arguments. Logic provides a framework for evaluating arguments and assessing the validity of conclusions.</p>'),
	(16, 170, 7, '<p>What is the <strong>problem of evil</strong>? <span class="arrow">⇒</span> The problem of evil is the philosophical problem of reconciling the existence of evil and suffering in the world with the existence of an all-powerful, all-knowing, and all-good God. It asks whether the existence of evil is compatible with the existence of God, and examines various responses to this problem.</p>'),
	(16, 170, 8, '<p>What is <strong>free will</strong>? <span class="arrow">⇒</span> Free will is the philosophical problem of understanding whether individuals have the ability to make choices that are not determined by prior causes. It asks whether individuals have the ability to act freely and whether determinism or indeterminism is true.</p>'),
	(16, NULL, 9, '<p>What is <strong>existentialism</strong>? <span class="arrow">⇒</span> Existentialism is a philosophical movement that emphasizes individual freedom and choice, and the experience of living in anuncertain and often absurd world. It focuses on questions about the meaning and purpose of human existence, and explores concepts such as authenticity, anxiety, and despair. Existentialism emphasizes personal responsibility and the importance of making meaningful choices in life.</p>'),
	(16, NULL, 10, '<p>What is <strong>free will</strong>? <span class="arrow">⇒</span> Free will is the philosophical problem of understanding whether individuals have the ability to make choices that are not determined by prior causes. It asks whether individuals have the ability to act freely and whether determinism or indeterminism is true.</p>');
    
    
INSERT INTO notes (document_id, parent_note, order_of_appearance, note_content)
VALUES
	(18, NULL, 1, '<p>What is <strong>marketing</strong>? <span class="arrow">⇒</span> Marketing is the process of identifying and satisfying customer needs by creating and delivering products and services that offer value to them. It involves understanding consumer behavior, market research, and creating a marketing mix that includes product, price, promotion, and place.</p>'),
	(18, NULL, 2, '<p>What is <strong>branding</strong>? <span class="arrow">⇒</span> Branding is the process of creating a unique name, image, and reputation for a product or service in the minds of consumers. It involves creating a consistent and compelling brand identity, and communicating it effectively to target audiences through advertising, packaging, and other marketing efforts.</p>'),
	(18, NULL, 3, '<p>What is <strong>consumer behavior</strong>? <span class="arrow">⇒</span> Consumer behavior is the study of how individuals and groups make decisions about what to buy, use, and dispose of. It involves understanding factors such as attitudes, beliefs, and values, as well as social and cultural influences, that affect consumer decision-making.</p>'),
	(18, NULL, 4, '<p>What is <strong>market research</strong>? <span class="arrow">⇒</span> Market research is the process of gathering and analyzing information about a market, including customer needs, preferences, and behaviors, as well as competitor activities and market trends. It helps businesses make informed decisions about product development, pricing, promotion, and other marketing strategies.</p>'),
	(18, NULL, 5, '<p>What is <strong>marketing mix</strong>? <span class="arrow">⇒</span> The marketing mix is a set of tools and strategies that businesses use to promote their products or services to target customers. It includes the four Ps: product, price, promotion, and place. By adjusting these elements, businesses can create a tailored marketing strategy that meets the needs of their target customers.</p>'),
	(18, NULL, 6, '<p>What is <strong>market segmentation</strong>? <span class="arrow">⇒</span> Market segmentation is the process of dividing a market into smaller groups of consumers with similar needs and characteristics. By targeting these specific segments with tailored marketing messages and strategies, businesses can more effectively reach their target customers and increase sales.</p>'),
	(18, NULL, 7, '<p>What is <strong>customer relationship management (CRM)</strong>? <span class="arrow">⇒</span> Customer relationship management is the process of managing interactions with customers throughout their lifecycle, with the goal of building long-term relationships that drive loyalty and repeat business. It involves using customer data and analytics to personalize communications and tailor marketing messages to individual customers.</p>'),
	(18, NULL, 8, '<p>What is <strong>digital marketing</strong>? <span class="arrow">⇒</span> Digital marketing is the use of digital channels, such as social media, search engines, and email, to promote products or services to target customers. It involves creating and sharing content, engaging with customers through social media, and optimizing website and search engine performance to drive traffic and conversions.</p>'),
	(18, NULL, 9, '<p>What is <strong>consumer behavior</strong>? <span class="arrow">⇒</span> Consumer behavior is the study of how individuals and groups make decisions about what to buy, use, and dispose of. It involves understanding factors such as attitudes, beliefs, and values, as well as social and cultural influences, that affect consumer decision-making.</p>'),
	(18, NULL, 10, '<p>What is <strong>market research</strong>? <span class="arrow">⇒</span> Market research is the process of gathering and analyzing information about a market, including customer needs, preferences, and behaviors, as well as competitor activities and market trends. It helps businesses make informed decisions about product development, pricing, promotion, and other marketing strategies.</p>');

INSERT INTO notes (document_id, parent_note, order_of_appearance, note_content)
VALUES
	(19, NULL, 1, '<p>What is <strong>consumer behavior</strong>? <span class="arrow">⇒</span> Consumer behavior is the study of how individuals and groups make decisions about what to buy, use, and dispose of. It involves understanding factors such as attitudes, beliefs, and values, as well as social and cultural influences, that affect consumer decision-making.</p>'),
	(19, NULL, 2, '<p>What are the <strong>factors that influence consumer behavior</strong>? <span class="arrow">⇒</span> There are several factors that influence consumer behavior, including cultural, social, personal, and psychological factors. Cultural factors include values, beliefs, and customs that are learned from family and other institutions. Social factors include reference groups, family, and social class. Personal factors include age, occupation, and lifestyle. Psychological factors include perception, motivation, and learning.</p>'),
	(19, NULL, 3, '<p>What is <strong>consumer decision-making process</strong>? <span class="arrow">⇒</span> Consumer decision-making process is the series of steps that individuals go through to make a purchase decision. It includes problem recognition, information search, evaluation of alternatives, purchase decision, and post-purchase evaluation.</p>'),
	(19, NULL, 4, '<p>What is <strong>consumer research</strong>? <span class="arrow">⇒</span> Consumer research is the process of collecting and analyzing data about consumer behavior and preferences. It is used to identify consumer needs and wants, and to develop products and services that meet those needs. It also helps businesses understand how consumers perceive their brand and how to improve their marketing strategies.</p>'),
	(19, NULL, 5, '<p>What is <strong>consumer segmentation</strong>? <span class="arrow">⇒</span> Consumer segmentation is the process of dividing a market into smaller groups of consumers with similar needs and characteristics. By targeting these specific segments with tailored marketing messages and strategies, businesses can more effectively reach their target customers and increase sales.</p>'),
	(19, NULL, 6, '<p>What is <strong>consumer satisfaction</strong>? <span class="arrow">⇒</span> Consumer satisfaction is the level of happiness or contentment that consumers experience after purchasing and using a product or service. It is an important metric for businesses to measure, as satisfied customers are more likely to become loyal and repeat customers, and to recommend the product or service to others.</p>'),
	(19, NULL, 7, '<p>What is <strong>consumer loyalty</strong>? <span class="arrow">⇒</span> Consumer loyalty is the degree to which customers are committed to a brand or company and are likely to continue purchasing their products or services. It is influenced by factors such as product quality, customer service, and brand reputation. Loyal customers are valuable to businesses as they provide a steady stream of revenue and can help attract new customers through word-of-mouth marketing.</p>'),
	(19, NULL, 8, '<p>What is <strong>consumer research</strong>? <span class="arrow">⇒</span> Consumer research is the process of collecting and analyzing data about consumer behavior and preferences. It is used to identify consumer needs and wants, and to develop products and services that meet those needs. It also helps businesses understand how consumers perceive their brand and how to improve their marketing strategies.</p>'),
	(19, NULL, 9, '<p>What is <strong>consumer segmentation</strong>? <span class="arrow">⇒</span> Consumer segmentation is the process of dividing a market into smaller groups of consumers with similar needs and characteristics. By targeting these specific segments with tailored marketing messages and strategies, businesses can more effectively reach their target customers and increase sales.</p>'),
	(19, NULL, 10, '<p>What is <strong>consumer behavior</strong>? <span class="arrow">⇒</span> Consumer behavior is the study of how individuals and groups make decisions about what to buy, use, and dispose of. It involves understanding factors such as attitudes, beliefs, and values, as well as social and cultural influences, that affect consumer decision-making.</p>');


INSERT INTO hashtags (hashtag_name) VALUES
('#studytips'),
('#lecturenotes'),
('#homeworkhelp'),
('#researchpapers'),
('#academicwriting'),
('#textbooks'),
('#onlinelearning'),
('#timemanagement'),
('#examprep'),
('#classparticipation'),
('#groupstudy'),
('#studentlife'),
('#collegeadvice'),
('#careerdevelopment'),
('#academicadvising'),
('#internshipopportunities'),
('#academicresources'),
('#collegeapplications'),
('#academicgoals'),
('#gradschoolapplications'),
('#studentfinance'),
('#mentalhealth'),
('#campusresources'),
('#academicsuccess'),
('#studyabroad'),
('#STEMeducation'),
('#librarystudy'),
('#extracurriculars'),
('#academicconferences'),
('#professorrecommendations'),
('#studentorganizations'),
('#peerreview'),
('#professionaldevelopment'),
('#publicspeaking'),
('#projectmanagement'),
('#coding'),
('#dataanalysis'),
('#researchmethodology'),
('#labexperiments'),
('#statistics'),
('#literatureanalysis'),
('#artcritique'),
('#musictheory'),
('#languagelearning'),
('#historyresearch'),
('#philosophyreading'),
('#politicalscienceanalysis'),
('#economicstheory'),
('#psychologyresearch'),
('#sociologyanalysis'),
('#anthropologyfieldwork'),
('#biologylabwork'),
('#chemistryexperiments'),
('#physicsmathematics'),
('#engineeringprojects'),
('#geologystudy'),
('#environmentalscience'),
('#architecturehistory'),
('#fashiondesign'),
('#filmstudies'),
('#journalismwriting'),
('#mediastudies'),
('#visualarts'),
('#performingarts'),
('#religiousstudies'),
('#diversityandinclusion'),
('#globalstudies'),
('#internationalrelations'),
('#lawstudies'),
('#publicpolicy'),
('#businessstudies'),
('#marketingresearch'),
('#entrepreneurship'),
('#financeandaccounting'),
('#humanresources'),
('#leadershipdevelopment'),
('#projectmanagement'),
('#supplychainmanagement'),
('#datascience'),
('#artificialintelligence'),
('#machinelearning'),
('#softwareengineering'),
('#frontenddevelopment'),
('#backenddevelopment'),
('#databasesystems'),
('#cybersecurity'),
('#networkadministration'),
('#ITprojectmanagement'),
('#UXdesign'),
('#UIdevelopment'),
('#technicalwriting'),
('#technicalcommunication'),
('#technicaltraining'),
('#technicalsupport'),
('#productmanagement'),
('#consulting'),
('#customeranalytics'),
('#ecommerce'),
('#socialmedia'),
('#digitalmarketing'),
('#graphicdesign'),
('#webdevelopment'),
('#mobiledevelopment'),
('#gamification'),
('#virtualreality'),
('#augmentedreality'),
('#videoproduction'),
('#photography'),
('#audioengineering'),
('#broadcasting'),
('#animation'),
('#gamedesign'),
('#cyberforensics'),
('#cloudcomputing'),
('#databaseadministration'),
('#ITinfrastructure'),
('#technicalsales');


insert into notes_hashtags (note_id, hashtag_id) values (155, 32);
insert into notes_hashtags (note_id, hashtag_id) values (73, 10);
insert into notes_hashtags (note_id, hashtag_id) values (124, 3);
insert into notes_hashtags (note_id, hashtag_id) values (109, 55);
insert into notes_hashtags (note_id, hashtag_id) values (188, 41);
insert into notes_hashtags (note_id, hashtag_id) values (93, 81);
insert into notes_hashtags (note_id, hashtag_id) values (187, 13);
insert into notes_hashtags (note_id, hashtag_id) values (163, 76);
insert into notes_hashtags (note_id, hashtag_id) values (3, 8);
insert into notes_hashtags (note_id, hashtag_id) values (136, 74);
insert into notes_hashtags (note_id, hashtag_id) values (100, 58);
insert into notes_hashtags (note_id, hashtag_id) values (132, 64);
insert into notes_hashtags (note_id, hashtag_id) values (49, 115);
insert into notes_hashtags (note_id, hashtag_id) values (161, 38);
insert into notes_hashtags (note_id, hashtag_id) values (141, 38);
insert into notes_hashtags (note_id, hashtag_id) values (14, 18);
insert into notes_hashtags (note_id, hashtag_id) values (171, 109);
insert into notes_hashtags (note_id, hashtag_id) values (162, 24);
insert into notes_hashtags (note_id, hashtag_id) values (19, 96);
insert into notes_hashtags (note_id, hashtag_id) values (110, 64);
insert into notes_hashtags (note_id, hashtag_id) values (124, 7);
insert into notes_hashtags (note_id, hashtag_id) values (168, 116);
insert into notes_hashtags (note_id, hashtag_id) values (169, 98);
insert into notes_hashtags (note_id, hashtag_id) values (184, 80);
insert into notes_hashtags (note_id, hashtag_id) values (91, 20);
insert into notes_hashtags (note_id, hashtag_id) values (136, 56);
insert into notes_hashtags (note_id, hashtag_id) values (62, 12);
insert into notes_hashtags (note_id, hashtag_id) values (123, 68);
insert into notes_hashtags (note_id, hashtag_id) values (124, 87);
insert into notes_hashtags (note_id, hashtag_id) values (71, 40);
insert into notes_hashtags (note_id, hashtag_id) values (162, 97);
insert into notes_hashtags (note_id, hashtag_id) values (125, 80);
insert into notes_hashtags (note_id, hashtag_id) values (112, 84);
insert into notes_hashtags (note_id, hashtag_id) values (87, 64);
insert into notes_hashtags (note_id, hashtag_id) values (162, 51);
insert into notes_hashtags (note_id, hashtag_id) values (39, 71);
insert into notes_hashtags (note_id, hashtag_id) values (178, 57);
insert into notes_hashtags (note_id, hashtag_id) values (194, 2);
insert into notes_hashtags (note_id, hashtag_id) values (51, 65);
insert into notes_hashtags (note_id, hashtag_id) values (115, 96);
insert into notes_hashtags (note_id, hashtag_id) values (97, 19);
insert into notes_hashtags (note_id, hashtag_id) values (181, 6);
insert into notes_hashtags (note_id, hashtag_id) values (56, 97);
insert into notes_hashtags (note_id, hashtag_id) values (23, 110);
insert into notes_hashtags (note_id, hashtag_id) values (20, 46);
insert into notes_hashtags (note_id, hashtag_id) values (30, 70);
insert into notes_hashtags (note_id, hashtag_id) values (174, 114);
insert into notes_hashtags (note_id, hashtag_id) values (80, 97);
insert into notes_hashtags (note_id, hashtag_id) values (154, 49);
insert into notes_hashtags (note_id, hashtag_id) values (34, 85);
insert into notes_hashtags (note_id, hashtag_id) values (123, 101);
insert into notes_hashtags (note_id, hashtag_id) values (6, 87);
insert into notes_hashtags (note_id, hashtag_id) values (23, 90);
insert into notes_hashtags (note_id, hashtag_id) values (148, 108);
insert into notes_hashtags (note_id, hashtag_id) values (152, 82);
insert into notes_hashtags (note_id, hashtag_id) values (124, 60);
insert into notes_hashtags (note_id, hashtag_id) values (178, 31);
insert into notes_hashtags (note_id, hashtag_id) values (108, 96);
insert into notes_hashtags (note_id, hashtag_id) values (52, 37);
insert into notes_hashtags (note_id, hashtag_id) values (179, 65);
insert into notes_hashtags (note_id, hashtag_id) values (43, 115);
insert into notes_hashtags (note_id, hashtag_id) values (191, 6);
insert into notes_hashtags (note_id, hashtag_id) values (25, 54);
insert into notes_hashtags (note_id, hashtag_id) values (48, 60);
insert into notes_hashtags (note_id, hashtag_id) values (126, 73);
insert into notes_hashtags (note_id, hashtag_id) values (35, 104);
insert into notes_hashtags (note_id, hashtag_id) values (156, 8);
insert into notes_hashtags (note_id, hashtag_id) values (194, 11);
insert into notes_hashtags (note_id, hashtag_id) values (8, 34);
insert into notes_hashtags (note_id, hashtag_id) values (174, 31);
insert into notes_hashtags (note_id, hashtag_id) values (161, 108);
insert into notes_hashtags (note_id, hashtag_id) values (129, 60);
insert into notes_hashtags (note_id, hashtag_id) values (108, 110);
insert into notes_hashtags (note_id, hashtag_id) values (76, 12);
insert into notes_hashtags (note_id, hashtag_id) values (119, 95);
insert into notes_hashtags (note_id, hashtag_id) values (117, 55);
insert into notes_hashtags (note_id, hashtag_id) values (2, 45);
insert into notes_hashtags (note_id, hashtag_id) values (22, 49);
insert into notes_hashtags (note_id, hashtag_id) values (107, 93);
insert into notes_hashtags (note_id, hashtag_id) values (155, 105);
insert into notes_hashtags (note_id, hashtag_id) values (134, 43);
insert into notes_hashtags (note_id, hashtag_id) values (153, 60);
insert into notes_hashtags (note_id, hashtag_id) values (186, 47);
insert into notes_hashtags (note_id, hashtag_id) values (44, 112);
insert into notes_hashtags (note_id, hashtag_id) values (193, 44);
insert into notes_hashtags (note_id, hashtag_id) values (113, 63);
insert into notes_hashtags (note_id, hashtag_id) values (87, 57);
insert into notes_hashtags (note_id, hashtag_id) values (161, 39);
insert into notes_hashtags (note_id, hashtag_id) values (76, 89);
insert into notes_hashtags (note_id, hashtag_id) values (83, 48);
insert into notes_hashtags (note_id, hashtag_id) values (58, 27);
insert into notes_hashtags (note_id, hashtag_id) values (16, 75);
insert into notes_hashtags (note_id, hashtag_id) values (146, 10);
insert into notes_hashtags (note_id, hashtag_id) values (124, 12);
insert into notes_hashtags (note_id, hashtag_id) values (97, 9);
insert into notes_hashtags (note_id, hashtag_id) values (99, 15);
insert into notes_hashtags (note_id, hashtag_id) values (81, 79);
insert into notes_hashtags (note_id, hashtag_id) values (164, 20);
insert into notes_hashtags (note_id, hashtag_id) values (41, 4);
insert into notes_hashtags (note_id, hashtag_id) values (121, 68);

insert into images (note_id, filepath, created_at) values (29, 'http://dummyimage.com/494x790.png/cc0000/ffffff', '2022-09-06 19:07:30');
insert into images (note_id, filepath, created_at) values (108, 'http://dummyimage.com/587x806.png/cc0000/ffffff', '2022-10-15 03:04:52');
insert into images (note_id, filepath, created_at) values (69, 'http://dummyimage.com/845x131.png/dddddd/000000', '2022-12-18 01:11:48');
insert into images (note_id, filepath, created_at) values (134, 'http://dummyimage.com/573x357.png/dddddd/000000', '2022-10-22 18:13:16');
insert into images (note_id, filepath, created_at) values (55, 'http://dummyimage.com/415x312.png/dddddd/000000', '2022-10-30 11:46:03');
insert into images (note_id, filepath, created_at) values (161, 'http://dummyimage.com/620x1144.png/5fa2dd/ffffff', '2023-02-25 11:14:54');
insert into images (note_id, filepath, created_at) values (16, 'http://dummyimage.com/1170x179.png/cc0000/ffffff', '2023-02-25 06:03:49');
insert into images (note_id, filepath, created_at) values (122, 'http://dummyimage.com/868x1130.png/ff4444/ffffff', '2022-05-28 05:47:59');
insert into images (note_id, filepath, created_at) values (25, 'http://dummyimage.com/870x562.png/cc0000/ffffff', '2022-10-16 20:28:33');
insert into images (note_id, filepath, created_at) values (3, 'http://dummyimage.com/119x246.png/5fa2dd/ffffff', '2023-01-11 13:55:31');
insert into images (note_id, filepath, created_at) values (20, 'http://dummyimage.com/138x1200.png/dddddd/000000', '2022-04-20 22:49:49');
insert into images (note_id, filepath, created_at) values (116, 'http://dummyimage.com/1187x449.png/5fa2dd/ffffff', '2022-10-02 03:55:43');
insert into images (note_id, filepath, created_at) values (143, 'http://dummyimage.com/556x680.png/5fa2dd/ffffff', '2023-01-18 22:53:40');
insert into images (note_id, filepath, created_at) values (60, 'http://dummyimage.com/827x829.png/ff4444/ffffff', '2023-03-21 14:45:48');
insert into images (note_id, filepath, created_at) values (8, 'http://dummyimage.com/608x351.png/dddddd/000000', '2022-06-07 09:37:45');
insert into images (note_id, filepath, created_at) values (127, 'http://dummyimage.com/891x1112.png/ff4444/ffffff', '2023-01-30 05:18:19');
insert into images (note_id, filepath, created_at) values (50, 'http://dummyimage.com/311x916.png/dddddd/000000', '2023-02-08 04:30:07');
insert into images (note_id, filepath, created_at) values (66, 'http://dummyimage.com/1242x730.png/cc0000/ffffff', '2022-10-03 11:05:03');
insert into images (note_id, filepath, created_at) values (58, 'http://dummyimage.com/1047x298.png/cc0000/ffffff', '2022-07-23 20:40:45');
insert into images (note_id, filepath, created_at) values (136, 'http://dummyimage.com/352x918.png/5fa2dd/ffffff', '2022-05-05 11:54:09');





insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (9, 254.66, 543.34, 20.88, 919.85, '2022-08-08 04:55:09', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (9, 449.18, 139.9, 174.59, 237.19, '2022-12-08 18:10:39', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (17, 913.65, 41.84, 1076.01, 1065.8, '2022-06-25 13:29:57', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (9, 607.1, 574.58, 549.43, 336.83, '2022-09-23 11:31:59', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (4, 789.49, 906.39, 869.79, 612.68, '2022-11-20 21:20:20', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (18, 238.1, 900.85, 759.12, 1161.28, '2023-02-08 14:33:18', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (16, 965.47, 57.39, 130.63, 148.71, '2022-08-11 04:01:45', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (7, 1183.04, 284.2, 245.27, 742.43, '2022-06-25 01:57:54', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (13, 564.88, 1063.92, 338.0, 316.09, '2023-01-12 22:55:10', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (4, 625.08, 914.34, 49.11, 168.59, '2023-03-25 23:56:13', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (9, 777.83, 627.92, 496.47, 355.45, '2022-10-26 19:04:01', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (20, 126.32, 1055.97, 622.82, 638.14, '2022-05-11 00:43:27', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (10, 1072.81, 480.63, 573.12, 647.88, '2022-08-31 17:41:43', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (1, 783.3, 668.59, 359.34, 736.99, '2022-05-15 06:46:11', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (10, 376.83, 90.47, 657.91, 818.08, '2022-12-11 14:51:28', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (8, 1091.54, 946.41, 880.83, 406.53, '2023-03-01 00:11:51', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (17, 547.94, 346.84, 464.8, 510.73, '2022-07-01 13:13:39', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (14, 349.59, 628.75, 824.35, 440.35, '2022-06-10 15:13:40', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (12, 833.8, 383.46, 908.74, 548.86, '2023-01-02 19:55:12', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (16, 1057.37, 173.4, 686.63, 616.82, '2022-11-20 21:50:46', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (2, 452.4, 269.13, 1165.97, 892.71, '2023-01-28 09:59:43', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (8, 835.27, 895.68, 987.14, 1126.06, '2023-03-01 15:09:26', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (2, 9.79, 222.47, 233.18, 1158.02, '2022-05-07 13:51:58', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (15, 997.01, 717.1, 1039.8, 929.01, '2022-05-18 10:06:54', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (15, 1008.31, 1130.27, 972.76, 828.3, '2023-03-20 14:11:17', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (14, 559.39, 623.63, 1090.91, 16.23, '2022-09-22 18:16:10', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (5, 756.94, 72.02, 870.83, 304.48, '2022-07-24 01:23:22', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (3, 269.29, 1165.79, 894.02, 1116.04, '2023-03-03 15:54:27', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (2, 1182.78, 855.05, 138.68, 36.97, '2023-01-01 15:18:55', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (15, 664.27, 821.97, 839.75, 353.79, '2022-08-09 10:37:25', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (13, 903.71, 120.03, 896.0, 915.51, '2023-01-16 18:31:57', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (9, 327.25, 1061.96, 983.18, 218.05, '2023-02-27 19:49:03', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (6, 101.79, 753.53, 584.63, 807.52, '2023-03-26 15:59:56', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (15, 994.63, 161.86, 957.85, 457.83, '2022-05-27 00:56:40', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (20, 1009.18, 736.04, 9.24, 187.67, '2022-11-16 18:15:00', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (17, 1013.63, 688.37, 1117.68, 147.72, '2022-08-07 16:22:48', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (10, 857.28, 240.26, 769.07, 140.12, '2022-10-12 12:17:30', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (19, 857.09, 786.69, 842.12, 1033.87, '2022-12-14 18:33:23', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (4, 917.98, 1055.65, 1074.23, 145.68, '2022-10-06 07:47:45', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (8, 975.8, 659.3, 365.56, 1185.18, '2022-10-01 02:28:54', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (9, 516.84, 1053.39, 736.36, 554.39, '2022-04-07 17:46:07', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (17, 499.92, 878.61, 224.85, 401.43, '2022-08-22 02:29:21', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (9, 1067.36, 1041.49, 683.09, 1117.41, '2023-01-15 19:28:06', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (8, 412.48, 960.5, 52.96, 1005.61, '2023-02-18 08:25:32', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (15, 1104.24, 1018.93, 795.31, 262.63, '2023-03-26 08:40:26', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (2, 85.8, 348.88, 691.25, 1054.11, '2023-03-14 17:48:04', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (13, 1091.19, 1079.83, 895.13, 304.11, '2023-01-07 13:25:26', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (1, 414.29, 1161.68, 1140.96, 1042.34, '2023-03-06 12:41:58', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (5, 81.63, 570.48, 71.26, 576.53, '2022-04-11 15:54:36', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (16, 759.01, 1166.08, 71.41, 1103.5, '2022-08-21 18:58:37', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (16, 1070.37, 29.55, 771.8, 168.3, '2023-01-08 08:05:11', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (2, 469.19, 284.72, 616.01, 789.08, '2023-03-25 16:07:17', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (14, 516.56, 559.46, 1163.83, 260.85, '2022-11-08 20:34:12', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (9, 565.85, 877.87, 583.85, 83.37, '2023-01-12 13:54:47', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (16, 450.19, 488.37, 72.02, 101.54, '2022-10-13 23:20:26', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (6, 652.74, 167.48, 940.91, 701.62, '2022-07-14 08:26:46', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (14, 562.12, 934.45, 1168.91, 344.78, '2023-02-09 16:41:45', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (11, 1075.95, 503.1, 999.37, 445.27, '2022-08-12 10:04:47', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (12, 813.95, 1110.67, 995.65, 541.57, '2022-05-25 04:20:00', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (19, 567.62, 1110.96, 460.4, 79.22, '2022-08-15 19:20:31', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (13, 925.83, 1171.9, 1036.58, 828.99, '2022-08-23 22:43:07', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (16, 988.07, 87.99, 8.11, 1016.77, '2022-06-22 19:19:41', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (10, 462.74, 35.71, 73.62, 695.92, '2022-07-20 21:49:51', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (17, 1013.29, 405.58, 523.01, 1193.21, '2022-11-24 08:19:16', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (16, 648.36, 492.03, 895.5, 693.84, '2023-01-31 20:24:15', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (8, 937.04, 1028.04, 869.13, 879.96, '2022-08-23 06:34:57', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (17, 332.77, 731.46, 1122.61, 579.09, '2022-08-09 22:48:52', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (5, 781.51, 323.92, 555.52, 77.1, '2022-10-07 13:34:34', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (19, 1121.29, 350.44, 621.66, 922.49, '2022-12-23 10:29:44', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (3, 705.88, 165.82, 175.42, 741.16, '2023-01-16 03:03:15', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (18, 375.87, 1185.54, 329.47, 670.62, '2022-06-11 19:56:00', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (16, 917.42, 888.99, 1045.9, 17.63, '2022-07-03 12:06:35', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (15, 186.98, 466.44, 873.16, 471.72, '2022-10-19 07:59:43', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (14, 227.03, 950.53, 1191.31, 232.45, '2022-12-23 01:51:40', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (14, 1185.13, 761.67, 746.5, 682.06, '2023-01-25 04:27:45', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (11, 864.48, 819.81, 1172.37, 331.37, '2022-06-07 11:08:47', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (16, 458.89, 511.35, 1043.54, 1074.08, '2022-12-24 20:12:38', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (14, 762.02, 809.89, 108.17, 913.33, '2023-02-01 15:44:44', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (6, 277.07, 32.57, 1150.67, 745.58, '2022-09-03 13:40:09', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (13, 1037.7, 436.06, 634.81, 292.93, '2023-01-30 04:38:35', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (18, 841.67, 106.89, 532.06, 1052.42, '2022-11-20 08:32:44', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (2, 727.15, 906.21, 795.65, 982.07, '2022-04-05 04:17:26', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (1, 874.01, 684.42, 951.64, 875.51, '2022-07-10 17:34:31', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (1, 467.99, 455.97, 854.03, 1018.51, '2023-03-27 10:20:11', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (18, 789.11, 265.7, 684.3, 45.21, '2022-07-21 23:29:35', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (20, 181.31, 151.34, 881.32, 691.75, '2022-08-28 04:03:23', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (3, 390.9, 772.46, 496.62, 414.82, '2023-02-01 03:30:05', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (19, 196.51, 1067.1, 432.71, 425.67, '2023-03-12 00:51:29', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (4, 45.17, 392.02, 138.73, 298.05, '2022-08-27 06:49:19', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (20, 241.85, 750.69, 616.04, 622.46, '2022-08-02 19:20:44', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (9, 977.57, 176.41, 351.66, 839.77, '2022-06-08 11:00:58', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (16, 304.01, 284.77, 1196.1, 594.59, '2023-02-07 18:48:47', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (5, 400.35, 254.21, 573.8, 1158.49, '2022-11-30 23:01:34', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (7, 968.44, 710.72, 111.71, 547.89, '2022-05-30 05:09:33', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (1, 30.72, 201.7, 36.71, 667.98, '2022-10-21 16:32:18', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (3, 626.12, 448.08, 540.83, 1137.96, '2022-11-13 04:20:24', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (15, 1041.89, 1005.37, 786.75, 756.14, '2022-04-23 06:01:49', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (14, 519.72, 581.82, 970.98, 107.56, '2022-12-28 06:22:42', '2023-04-01 21:12:07');
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (11, 474.96, 726.9, 352.28, 1185.97, '2022-04-12 23:52:33', null);
insert into occulsions (image_id, start_x, start_y, end_x, end_y, created_at, updated_at) values (7, 720.34, 823.12, 408.05, 42.4, '2022-10-29 06:57:03', '2023-04-01 21:12:07');