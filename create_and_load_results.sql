CREATE TABLE result_counts
 (die_count  NUMBER NOT NULL,
  result     NUMBER NOT NULL,
  occurances NUMBER NOT NULL)
/

-- for one die
INSERT INTO result_counts
SELECT 1 AS die_count, result, 
       COUNT(*) AS occurances
  FROM (SELECT d1.value AS result
          FROM die_faces d1)
 GROUP BY result
/

-- for two die
INSERT INTO result_counts
SELECT 2 AS die_count, result, 
       COUNT(*) AS occurances
  FROM (SELECT d1.value + d2.value AS result
          FROM die_faces d1,
               die_faces d2)
 GROUP BY result
/

-- for three die
INSERT INTO result_counts
SELECT 3 AS die_count, result, 
       COUNT(*) AS occurances
  FROM (SELECT d1.value + d2.value + d3.value AS result
          FROM die_faces d1,
               die_faces d2,
               die_faces d3)
 GROUP BY result
/

-- for four die
INSERT INTO result_counts
SELECT 4 AS die_count, result, 
       COUNT(*) AS occurances
  FROM (SELECT d1.value + d2.value + d3.value + d4.value AS result
          FROM die_faces d1,
               die_faces d2,
               die_faces d3,
               die_faces d4)
 GROUP BY result
/

-- for five die
INSERT INTO result_counts
SELECT 5 AS die_count, result, 
       COUNT(*) AS occurances
  FROM (SELECT d1.value + d2.value + d3.value + d4.value + d5.value AS result
          FROM die_faces d1,
               die_faces d2,
               die_faces d3,
               die_faces d4,
               die_faces d5)
 GROUP BY result
/

-- for six die
INSERT INTO result_counts
SELECT 6 AS die_count, result, 
       COUNT(*) AS occurances
  FROM (SELECT d1.value + d2.value + d3.value + d4.value + d5.value + d6.value AS result
          FROM die_faces d1,
               die_faces d2,
               die_faces d3,
               die_faces d4,
               die_faces d5,
               die_faces d6)
 GROUP BY result
/

COMMIT
/

