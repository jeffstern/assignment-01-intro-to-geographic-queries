/*
  What is the percent change in trips in Q2 2020 as compared to Q2 2019?

  Using only the table from Q2 2020 and the number calculated in the previous
  question, find the percent change of number of trips in Q2 2020 as compared
  to 2019. Remember you can do calculations in the select clause.
*/

-- Enter your SQL query here
SELECT round(((count(*)::numeric - 206354)/206354)*100,2)::text || '%' AS q2_percent_change
FROM indego_trips_2020_q2

/*
  Bonus: If you want to get fancier here, you can cast the result to a string
  and concatenate a '%' to the end. For example:

      (10 + 3.2)::text || '%' AS perc_change

  This uses the type casting (number to string) and string concatenation
  operator (`||`, double pipes) that's essentially a `+` for strings.
*/
