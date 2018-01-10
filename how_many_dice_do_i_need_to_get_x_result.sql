select result, die_count, ROUND(100*this_result_or_better_prob,3) as result_or_better_pct_chance
from result_counts
order by result, die_count
/
