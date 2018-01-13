# Dragonwood dice probabilities #
I recently played the dice and card game dragonwood for the first time and loved it!  It's not easy to find a game that is both interesting AND can be easily be understood by young kids. It was simple enough to explain in just a few minutes, and it held the attention of four kids ages 7 - 11 for an hour.

It uses six 6-sided dice with numbered faces; but the numbers are not like a normal 6-sided die.  Instead, there is one face with a 1, two faces marked 2, two faces marked 3, and the last face is a 4. You need to roll a certain number or better to capture mosters (scoring points) and the number of dice you can use is determined by the cards you hold. So to play well, you need to be able to make decisions like "Should I try to roll that 8 now with three dice, and risk losing a card if I don't get it; or should a take another card now and hopefully be able to use four dice next turn, but risk my opponents getting it first?".  The data in the charts below will help you make well-informed decisions to that kind of question.  But since getting kids to get a feel for this kind of thing is one of the great things about this game, perhaps you shouldn't print this out, or have your mobile open to this page while you play!

### How does it work? ###
After the game, I thought I should be able to figure out these odds with a pencil and paper; but its been too long since probability class and I didn't make much progress! So instead, I used SQL cross-joins to enumerate all possible results of rolling 1 dice, 2 dice, etc.  I then added up the values on the die faces in each possible outcome and counted how many times I ended up with each sum and divided by how many results were possible.  This approach should be easy to modify for dice with different face values or numbers of sides.


## The Results! ##
### How many dice should I use? ### 
If you want to roll a certain target number; but don't know how many dice you'll need to have a reasonable chance of success, use this table.  In the example above, we wanted to roll an 8 to capture a particular monster. Scroll down this chart untill you see 8 in the desired result column. There you can see that while its _possible_ with only 2 dice, the chances are pretty slim at just over 2%. If you can use 3 dice, your chances are an even 50%; but if you can manage a fourth dice, your chances go up to a pretty good 90%.  If you don't see a row for your combination of result and number of dice; that means there is **no** chance! You can't roll a 9 with only two dice for example.

Desired result|Number of dice|Your percent chance of rolling that or better with this number of dice
:---------:|:---------:|--------
         1|         1|                        100
         2|         1|                     83.333
         2|         2|                        100
         3|         1|                         50
         3|         2|                     97.222
         3|         3|                        100
         4|         1|                     16.667
         4|         2|                     86.111
         4|         3|                     99.537
         4|         4|                        100
         5|         2|                     63.889
         5|         3|                     96.759
         5|         4|                     99.923
         5|         5|                        100
         6|         2|                     36.111
         6|         3|                     88.426
         6|         4|                     99.306
         6|         5|                     99.987
         6|         6|                        100
         7|         2|                     13.889
         7|         3|                     72.222
         7|         4|                     96.836
         7|         5|                     99.859
         7|         6|                     99.998
         8|         2|                      2.778
         8|         3|                         50
         8|         4|                     90.355
         8|         5|                     99.216
         8|         6|                     99.972
         9|         3|                     27.778
         9|         4|                     78.009
         9|         5|                     97.094
         9|         6|                     99.818
        10|         3|                     11.574
        10|         4|                     60.108
        10|         5|                      91.95
        10|         6|                     99.205
        11|         3|                      3.241
        11|         4|                     39.892
        11|         5|                     82.279
        11|         6|                     97.404
        12|         3|                       .463
        12|         4|                     21.991
        12|         5|                     67.747
        12|         6|                     93.263
        13|         4|                      9.645
        13|         5|                         50
        13|         6|                      85.55
        14|         4|                      3.164
        14|         5|                     32.253
        14|         6|                     73.667
        15|         4|                       .694
        15|         5|                     17.721
        15|         6|                     58.338
        16|         4|                       .077
        16|         5|                       8.05
        16|         6|                     41.662
        17|         5|                      2.906
        17|         6|                     26.333
        18|         5|                       .784
        18|         6|                      14.45
        19|         5|                       .141
        19|         6|                      6.737
        20|         5|                       .013
        20|         6|                      2.596
        21|         6|                       .795
        22|         6|                       .182
        23|         6|                       .028
        24|         6|                       .002

### Whats the highest number I have a reasonable chance of rolling? ###
If you know how many dice you'll be rolling and want to know your chances of rolling a given number, use this chart. For example, this turn you can only manage three dice so you scroll down until you see 3 in the number of dice column then look in the target result and percent chance columns to know that you have an 88% chance of rolling a 6 or better; but only a 27% chance of a 9 or better.  You'll still have to decide if captuing that 1 point monster this turn is worth losing your card(s) and having fewer next turn!

 Number of dice|Target result|Percent chance of rolling that target or better
:----------:|:----------:|-----
         1|         1|                        100
         1|         2|                     83.333
         1|         3|                         50
         1|         4|                     16.667
         2|         2|                        100
         2|         3|                     97.222
         2|         4|                     86.111
         2|         5|                     63.889
         2|         6|                     36.111
         2|         7|                     13.889
         2|         8|                      2.778
         3|         3|                        100
         3|         4|                     99.537
         3|         5|                     96.759
         3|         6|                     88.426
         3|         7|                     72.222
         3|         8|                         50
         3|         9|                     27.778
         3|        10|                     11.574
         3|        11|                      3.241
         3|        12|                       .463
         4|         4|                        100
         4|         5|                     99.923
         4|         6|                     99.306
         4|         7|                     96.836
         4|         8|                     90.355
         4|         9|                     78.009
         4|        10|                     60.108
         4|        11|                     39.892
         4|        12|                     21.991
         4|        13|                      9.645
         4|        14|                      3.164
         4|        15|                       .694
         4|        16|                       .077
         5|         5|                        100
         5|         6|                     99.987
         5|         7|                     99.859
         5|         8|                     99.216
         5|         9|                     97.094
         5|        10|                      91.95
         5|        11|                     82.279
         5|        12|                     67.747
         5|        13|                         50
         5|        14|                     32.253
         5|        15|                     17.721
         5|        16|                       8.05
         5|        17|                      2.906
         5|        18|                       .784
         5|        19|                       .141
         5|        20|                       .013
         6|         6|                        100
         6|         7|                     99.998
         6|         8|                     99.972
         6|         9|                     99.818
         6|        10|                     99.205
         6|        11|                     97.404
         6|        12|                     93.263
         6|        13|                      85.55
         6|        14|                     73.667
         6|        15|                     58.338
         6|        16|                     41.662
         6|        17|                     26.333
         6|        18|                      14.45
         6|        19|                      6.737
         6|        20|                      2.596
         6|        21|                       .795
         6|        22|                       .182
         6|        23|                       .028
         6|        24|                       .002


