-- View: usr_sige.statistics

-- DROP VIEW usr_sige.statistics;

CREATE OR REPLACE VIEW usr_sige.statistics
 AS
 WITH squery AS (
         SELECT
                CASE
                    WHEN current_database() = 'qwat_prod'::name THEN date_part('year'::text, 'now'::text::date)::integer
                    WHEN current_database() ~~ 'qwat_prod_statistics%'::text THEN ( SELECT statistics_metadata.archived_year
                       FROM usr_sige.statistics_metadata
                     LIMIT 1)
                    ELSE NULL::integer
                END AS target_year
        )
 SELECT current_database() AS "Base de données cible",
    squery.target_year AS "Année cible",
    c1010.c1010,
    c2000.c2000,
    n3250.n3250 + n3320.n3320 AS c1040,
    n3250.n3250 AS c1050,
    n3320.n3320 AS c1060,
    c1080.c1080,
    c2200.c2200,
    c2210.c2210,
    c2220.c2220,
    c2250.c2250,
    c1100.c1100,
    c2100.c2100,
    c2120.c2120,
    c2130.c2130,
    c2140.c2140,
    c2160.c2160,
    c2230.c2230,
    'Voir rapport annuel - voir pour calcul auto avec les DT'::text AS n1300,
    'Voir rapport annuel - voir pour calcul auto avec les DT'::text AS n1310,
    n1320.n1320,
    n1370.n1370,
    n1410.n1410,
    n1420.n1420,
    n1440.n1440,
    n1450.n1450,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1540,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1550,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1560,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1570,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1580,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1600,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1610,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1620,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1630,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1640,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1650,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1660,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1670,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1680,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1700,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1710,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1720,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1730,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1740,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1750,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1770,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1780,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1790,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1800,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1810,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1820,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1840,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1850,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1860,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1870,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1880,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1890,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1910,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1920,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1930,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1940,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1950,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1960,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1970,
    'Effectué par Resp. clientèle'::text AS n2060,
    'Effectué par Resp. clientèle'::text AS n2070,
    'Effectué par Resp. clientèle'::text AS n2080,
    'Effectué par Resp. clientèle'::text AS n2100,
    'Nouveau depuis statistique 2021'::text AS n3240,
    n3250.n3250,
    n3260.n3260,
    n3270.n3270,
    n3280.n3280,
    n3290.n3290,
    n3300.n3300,
    n3310.n3310,
    n3320.n3320,
    n3330.n3330,
    n3340.n3340,
    n3350.n3350,
    n3360.n3360,
    n3370.n3370,
    n3380.n3380
   FROM squery
     CROSS JOIN ( SELECT round(sum(st_length(vw_export_pipe.geometry)::numeric), '-1'::integer) AS c1010
           FROM qwat_od.vw_export_pipe,
            squery squery_1
          WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1302, 1308])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4106, 4108])) AND vw_export_pipe.year = squery_1.target_year) c1010
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS c1080
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.detection_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.detection_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.pipe_fk_function IS NULL) c1080
     CROSS JOIN ( SELECT round(sum(st_length(vw_export_pipe.geometry))) AS c2000
           FROM qwat_od.vw_export_pipe
          WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4104, 4105, 4107, 4109, 4111, 4112, 4151]))) c2000
     CROSS JOIN ( SELECT count(vw_export_valve.id) AS c2200
           FROM qwat_od.vw_export_valve
          WHERE vw_export_valve.fk_distributor = 1 AND vw_export_valve.fk_status = 1301 AND (vw_export_valve.fk_valve_function = 6101 OR vw_export_valve.fk_valve_function = 6103 OR vw_export_valve.fk_valve_function = 6111)) c2200
     CROSS JOIN ( SELECT count(vw_export_valve.id) AS c2210
           FROM qwat_od.vw_export_valve
          WHERE vw_export_valve.fk_distributor = 1 AND vw_export_valve.fk_status = 1301 AND vw_export_valve.fk_valve_function = 6102) c2210
     CROSS JOIN ( SELECT count(vw_export_valve.id) AS c2220
           FROM qwat_od.vw_export_valve
          WHERE vw_export_valve.fk_distributor = 1 AND vw_export_valve.fk_status = 1301 AND (vw_export_valve.fk_valve_function = 6110 OR vw_export_valve.fk_valve_function = 6112)) c2220
     CROSS JOIN ( SELECT count(vw_export_hydrant.id) AS c2250
           FROM qwat_od.vw_export_hydrant
          WHERE vw_export_hydrant.fk_distributor = 1 AND vw_export_hydrant.fk_status = 1301) c2250
     CROSS JOIN ( SELECT round((( SELECT (date_part('year'::text, 'now'::text::date) - 1::double precision)::integer::double precision - sum(vw_export_pipe.year::double precision * st_length(vw_export_pipe.geometry)) / sum(st_length(vw_export_pipe.geometry))))::numeric, 1) AS c1100
           FROM qwat_od.vw_export_pipe
          WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4105, 4107, 4109, 4112, 4151])) AND vw_export_pipe.year <> 1899) c1100
     CROSS JOIN ( SELECT count(*) AS c2100
           FROM qwat_od.vw_export_installation
          WHERE vw_export_installation.fk_distributor = 1 AND vw_export_installation.fk_status = 1301 AND vw_export_installation.installation_type = 'source'::qwat_od.installation_type AND vw_export_installation.fk_source_type IS NOT NULL AND vw_export_installation.fk_source_type = 2703) c2100
     CROSS JOIN ( SELECT count(*) + 1 AS c2120
           FROM qwat_od.vw_export_installation
          WHERE vw_export_installation.fk_distributor = 1 AND vw_export_installation.fk_status = 1301 AND vw_export_installation.installation_type = 'treatment'::qwat_od.installation_type AND vw_export_installation.filtration_membrane IS TRUE) c2120
     CROSS JOIN ( SELECT count(*) AS c2130
           FROM qwat_od.vw_export_installation
          WHERE vw_export_installation.fk_distributor = 1 AND vw_export_installation.fk_status = 1301 AND vw_export_installation.installation_type = 'tank'::qwat_od.installation_type AND vw_export_installation.storage_supply > 0::numeric) c2130
     CROSS JOIN ( SELECT round(sum(vw_export_installation.storage_total)) AS c2140
           FROM qwat_od.vw_export_installation
          WHERE vw_export_installation.fk_distributor = 1 AND vw_export_installation.fk_status = 1301 AND vw_export_installation.installation_type = 'tank'::qwat_od.installation_type) c2140
     CROSS JOIN ( SELECT count(*) AS c2160
           FROM qwat_od.vw_export_installation
          WHERE vw_export_installation.fk_distributor = 1 AND vw_export_installation.fk_status = 1301 AND vw_export_installation.installation_type = 'pressurecontrol'::qwat_od.installation_type AND vw_export_installation.fk_pressurecontrol_type = 2802) c2160
     CROSS JOIN ( SELECT count(*) AS c2230
           FROM qwat_od.vw_export_installation
          WHERE vw_export_installation.fk_distributor = 1 AND vw_export_installation.fk_status = 1301 AND vw_export_installation.installation_type = 'pump'::qwat_od.installation_type) c2230
     CROSS JOIN ( SELECT round(sum(st_length(vw_export_pipe.geometry))) AS n1320
           FROM qwat_od.vw_export_pipe
          WHERE vw_export_pipe.fk_distributor = 1 AND vw_export_pipe.status_active IS TRUE AND (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4105, 4107, 4109, 4112, 4151]))) n1320
     CROSS JOIN ( SELECT round(sum(st_length(vw_export_pipe.geometry))) AS n1370
           FROM qwat_od.vw_export_pipe
          WHERE vw_export_pipe.fk_distributor = 1 AND vw_export_pipe.status_active IS TRUE AND (vw_export_pipe.fk_function = ANY (ARRAY[4106, 4108]))) n1370
     CROSS JOIN ( SELECT count(*) AS n1410
           FROM qwat_od.vw_export_valve
          WHERE vw_export_valve.fk_distributor = 1 AND vw_export_valve.status_active IS TRUE AND (vw_export_valve.fk_valve_function <> ALL (ARRAY[6105, 6108]))) n1410
     CROSS JOIN ( SELECT count(*) AS n1420
           FROM qwat_od.vw_export_valve
          WHERE vw_export_valve.fk_distributor = 1 AND vw_export_valve.status_active IS TRUE AND (vw_export_valve.fk_valve_function = ANY (ARRAY[6105, 6108]))) n1420
     CROSS JOIN ( SELECT count(*) AS n1440
           FROM qwat_od.vw_export_hydrant
          WHERE vw_export_hydrant.pressurezone_fk_distributor = 1 AND vw_export_hydrant.status_functional IS TRUE) n1440
     CROSS JOIN ( SELECT count(*) AS n1450
           FROM qwat_od.vw_export_hydrant
          WHERE vw_export_hydrant.pressurezone_fk_distributor = 1 AND vw_export_hydrant.status_functional IS TRUE AND vw_export_hydrant.underground IS TRUE) n1450
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3250
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.detection_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.detection_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4101, 4102, 4103, 4105, 4107, 4109, 4112, 4151]))) n3250
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3260
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.detection_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.detection_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4101, 4102, 4103, 4105, 4107, 4109, 4112, 4151])) AND (vw_export_leak.fk_cause = ANY (ARRAY[9101, 9102]))) n3260
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3270
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.detection_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.detection_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4101, 4102, 4103, 4105, 4107, 4109, 4112, 4151])) AND vw_export_leak.fk_cause = 9104) n3270
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3280
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.detection_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.detection_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4101, 4102, 4103, 4105, 4107, 4109, 4112, 4151])) AND vw_export_leak.fk_cause = 9103) n3280
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3290
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.detection_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.detection_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4101, 4102, 4103, 4105, 4107, 4109, 4112, 4151])) AND vw_export_leak.fk_cause = 9105) n3290
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3300
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.detection_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.detection_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4101, 4102, 4103, 4105, 4107, 4109, 4112, 4151])) AND vw_export_leak.fk_cause = 9106) n3300
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3310
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.detection_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.detection_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4101, 4102, 4103, 4105, 4107, 4109, 4112, 4151])) AND (vw_export_leak.fk_cause = ANY (ARRAY[101, 102, 103]))) n3310
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3320
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.detection_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.detection_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4106, 4108]))) n3320
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3330
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.detection_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.detection_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4106, 4108])) AND (vw_export_leak.fk_cause = ANY (ARRAY[9101, 9102]))) n3330
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3340
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.detection_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.detection_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4106, 4108])) AND vw_export_leak.fk_cause = 9104) n3340
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3350
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.detection_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.detection_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4106, 4108])) AND vw_export_leak.fk_cause = 9103) n3350
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3360
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.detection_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.detection_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4106, 4108])) AND vw_export_leak.fk_cause = 9105) n3360
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3370
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.detection_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.detection_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4106, 4108])) AND vw_export_leak.fk_cause = 9106) n3370
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3380
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.detection_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.detection_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4106, 4108])) AND (vw_export_leak.fk_cause = ANY (ARRAY[101, 102, 103]))) n3380;

ALTER TABLE usr_sige.statistics
    OWNER TO sige;

