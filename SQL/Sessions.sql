/* 4. SessionsSQL AGGREGATION PUBLIC
App usage data are kept in the following table:

TABLE sessions
  id INTEGER PRIMARY KEY,
  userId INTEGER NOT NULL,
  duration DECIMAL NOT NULL
Write a query that selects userId and average session duration for each user who has more than one session. */


select userid,avg(duration) from sessions group by userid having count(userid) >1;