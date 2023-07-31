CREATE OR REPLACE FUNCTION grant_permissions()
RETURNS event_trigger AS
$$
BEGIN
  -- change these to your role and schema
  EXECUTE format('GRANT SELECT ON ALL TABLES IN SCHEMA public TO analyst');
  EXECUTE format('GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public TO analyst');
END;
$$
LANGUAGE plpgsql;


CREATE EVENT TRIGGER trigger_grant_permissions
ON ddl_command_end
WHEN TAG IN ('CREATE TABLE', 'ALTER TABLE')
EXECUTE FUNCTION grant_permissions();

