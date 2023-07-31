CREATE USER user1 WITH PASSWORD 'password1';

-- grant role from `create_role.sql` script to user
GRANT analyst TO user1;

-- expiring user access
ALTER ROLE user1 WITH PASSWORD 'password2' VALID UNTIL '2023-08-01';