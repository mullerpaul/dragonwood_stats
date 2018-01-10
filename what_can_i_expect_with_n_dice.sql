select die_count, result, ROUND(100*this_result_or_better_prob,3) as result_or_better_pct_chance
from result_counts
order by die_count, result
/
