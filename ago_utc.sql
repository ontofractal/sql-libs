CREATE OR REPLACE FUNCTION ago_utc(ago_interval TEXT)
  RETURNS TIMESTAMP
AS
$$
SELECT now() AT TIME ZONE 'UTC' - ago_interval::INTERVAL
$$
  LANGUAGE SQL
  IMMUTABLE
  RETURNS NULL ON NULL INPUT;
