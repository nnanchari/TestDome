/* 7. Users And RolesSQL CONSTRAINTS PUBLIC
The following two tables are used to define users and their respective roles:

TABLE users
  id INTEGER NOT NULL PRIMARY KEY,
  userName VARCHAR(50) NOT NULL

TABLE roles
  id INTEGER NOT NULL PRIMARY KEY,
  role VARCHAR(20) NOT NULL
The users_roles table should contain the mapping between each user and their roles. Each user can have many roles, and each role can have many users.

Modify the provided SQLite create table statement so that:

Only users from the users table can exist within users_roles.
Only roles from the roles table can exist within users_roles.
A user can only have a specific role once. */


CREATE TABLE users_roles (
  userId INTEGER not null,
  roleId INTEGER not null,
  foreign key(userid) references users(id),
  foreign key(roleid) references roles(id),
  unique (userid,roleid)
);