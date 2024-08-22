-- View: usr_sige.statistics_ger

-- DROP VIEW usr_sige.statistics_ger;

CREATE OR REPLACE VIEW usr_sige.statistics_ger
 AS
 
 WITH target_year AS (
    SELECT CASE 
               WHEN current_database() = 'qwat_prod' THEN EXTRACT(YEAR FROM CURRENT_DATE)::integer
               WHEN current_database() LIKE 'qwat_prod_statistics%' THEN SUBSTRING(current_database() FROM '(\d{4})')::integer
               ELSE NULL
           END AS year
)
SELECT 
    round(sum(st_length(vw_export_pipe.geometry))) AS "Longueur 2D de conduites réseau installées [km]",
    (SELECT year FROM target_year) AS "Année"
FROM qwat_od.vw_export_pipe
WHERE vw_export_pipe.fk_distributor = 1 
  AND vw_export_pipe.status_active IS TRUE 
  AND vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4105, 4107, 4109, 4112,4151])
  AND vw_export_pipe.year = (SELECT year FROM target_year);

ALTER TABLE usr_sige.statistics_ger
    OWNER TO sige;
