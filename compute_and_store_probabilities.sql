---- compute probabilities ----

---- tried this UPDATE first; but got an ORA-01779.
--UPDATE (SELECT t.die_count, t.result, t.this_result_prob, t.this_result_or_better_prob, s.this_exactly, s.this_or_better 
--          FROM result_counts t,
--               (SELECT die_count, result, 
--                       occurances / SUM(occurances) OVER (PARTITION BY (die_count)) AS this_exactly,
--                       SUM(occurances) OVER (PARTITION BY die_count ORDER BY result DESC) /
--                         SUM(occurances) OVER (PARTITION BY die_count) AS this_or_better
--                  FROM result_counts) s
--         WHERE t.die_count = s.die_count
--           AND t.result    = s.result)
--   SET this_result_prob           = this_exactly,
--       this_result_or_better_prob = this_or_better
--/

MERGE INTO result_counts t
USING (SELECT die_count, result,
              occurances / SUM(occurances) OVER (PARTITION BY (die_count)) AS this_exactly,
              SUM(occurances) OVER (PARTITION BY die_count ORDER BY result DESC) /
                SUM(occurances) OVER (PARTITION BY die_count) AS this_or_better
         FROM result_counts) s
   ON (t.die_count = s.die_count AND
       t.result    = s.result)
 WHEN MATCHED THEN UPDATE SET this_result_prob           = this_exactly,
                              this_result_or_better_prob = this_or_better
/

COMMIT
/

