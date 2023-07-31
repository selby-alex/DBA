# DBA
Database Administration Scripts

## Postgres DBA Scripts

### create a role
File: create_role.sql
It's easier to manage sets of permissions with a role instead of assigning permissions to each user individually. For example, if you have mutltiple analysts, you can create an `analyst` role and add each user that role.

### create user and add role
File: create_user.sql
Creating individual users allows you to add rand remove people. You can also set an expiration date to force a password rotation or a consultant out of your database.

### Dynamic Permissions
File: dynamic_permissions.sql
Whenever a table is altered or created, regrant permissions for a specific role in a specific schema.