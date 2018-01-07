set pages 80
break on die_count

select die_count, result, -- occurances,
       round(100 * occurances / SUM(occurances) OVER (PARTITION BY (die_count)), 2) AS pct_chance
  from result_counts
 order by die_count, result
/
