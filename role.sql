CREATE ROLE admin_role;
CREATE ROLE moderator_role;
CREATE ROLE user_role;

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO admin_role;
GRANT SELECT, INSERT, UPDATE, DELETE ON Posts, Comments TO moderator_role;
GRANT SELECT, INSERT ON Posts, Comments TO user_role;

CREATE USER admin_user WITH PASSWORD 'admin_pass';
CREATE USER moderator_user WITH PASSWORD 'moderator_pass';
CREATE USER regular_user WITH PASSWORD 'user_pass';

GRANT admin_role TO admin_user;
GRANT moderator_role TO moderator_user;
GRANT user_role TO regular_user;