-- Create sonar_db database and sonar_user with password
CREATE DATABASE sonar_db;
CREATE DATABASE jira_db;

-- The jiradb database and jiradb user are created by POSTGRES_DB and POSTGRES_USER env vars in docker-compose.

CREATE USER sonar_user WITH PASSWORD 'sonar_password';
CREATE USER jira_user WITH PASSWORD 'jira_password';
-- Grant privileges to sonar_user on sonar_db
GRANT ALL PRIVILEGES ON DATABASE sonar_db TO sonar_user;
GRANT ALL PRIVILEGES ON DATABASE jira_db TO jira_user;
-- You can add more SQL commands here as needed
