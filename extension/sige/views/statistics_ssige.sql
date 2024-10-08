-- View: usr_sige.statistics_ssige

-- DROP VIEW usr_sige.statistics_ssige;

CREATE OR REPLACE VIEW usr_sige.statistics_ssige
 AS
 SELECT 'Voir rapport annuel'::text AS n1300,
    'Voir rapport annuel'::text AS n1310,
    'Voir rapport annuel'::text AS n1320,
    n1370.n1370,
    n1410.n1410,
    n1420.n1420,
    n1440.n1440,
    n1450.n1450,
    'Pas encore communiqué à SSIGE, pas encore implémenté dans Postgis'::text AS n1530,
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
   FROM (SELECT round(sum(st_length(vw_export_pipe.geometry))) AS n1370
           FROM qwat_od.vw_export_pipe
          WHERE vw_export_pipe.fk_distributor = 1 AND vw_export_pipe.status_active IS TRUE AND (vw_export_pipe.fk_function = ANY (ARRAY[4106, 4108]))) n1370
     CROSS JOIN ( SELECT count(*) AS n1410
           FROM qwat_od.vw_export_valve
          WHERE vw_export_valve.fk_distributor = 1 AND vw_export_valve.status_active IS TRUE AND vw_export_valve.fk_status != 1307 AND (vw_export_valve.fk_valve_function <> ALL (ARRAY[6105, 6108]))) n1410
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
          WHERE vw_export_leak.repair_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.repair_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4101, 4102, 4103, 4105, 4107, 4109, 4112]))) n3250
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3260
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.repair_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.repair_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4101, 4102, 4103, 4105, 4107, 4109, 4112])) AND (vw_export_leak.fk_cause = ANY (ARRAY[9101, 9102]))) n3260
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3270
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.repair_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.repair_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4101, 4102, 4103, 4105, 4107, 4109, 4112])) AND vw_export_leak.fk_cause = 9104) n3270
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3280
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.repair_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.repair_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4101, 4102, 4103, 4105, 4107, 4109, 4112])) AND vw_export_leak.fk_cause = 9103) n3280
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3290
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.repair_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.repair_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4101, 4102, 4103, 4105, 4107, 4109, 4112])) AND vw_export_leak.fk_cause = 9105) n3290
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3300
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.repair_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.repair_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4101, 4102, 4103, 4105, 4107, 4109, 4112])) AND vw_export_leak.fk_cause = 9106) n3300
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3310
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.repair_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.repair_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4101, 4102, 4103, 4105, 4107, 4109, 4112])) AND (vw_export_leak.fk_cause = ANY (ARRAY[101, 102, 103]))) n3310
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3320
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.repair_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.repair_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4108, 4106]))) n3320
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3330
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.repair_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.repair_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4108, 4106])) AND (vw_export_leak.fk_cause = ANY (ARRAY[9101, 9102]))) n3330
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3340
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.repair_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.repair_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4108, 4106])) AND vw_export_leak.fk_cause = 9104) n3340
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3350
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.repair_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.repair_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4108, 4106])) AND vw_export_leak.fk_cause = 9103) n3350
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3360
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.repair_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.repair_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4108, 4106])) AND vw_export_leak.fk_cause = 9105) n3360
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3370
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.repair_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.repair_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4108, 4106])) AND vw_export_leak.fk_cause = 9106) n3370
     CROSS JOIN ( SELECT count(vw_export_leak.id) AS n3380
           FROM qwat_od.vw_export_leak
          WHERE vw_export_leak.repair_date >= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-01-01'::text, 'YYYY-MM-DD'::text) AND vw_export_leak.repair_date <= to_date(((date_part('year'::text, 'now'::text::date) - 1::double precision)::text) || '-12-31'::text, 'YYYY-MM-DD'::text) AND (vw_export_leak.pipe_fk_function = ANY (ARRAY[4108, 4106])) AND (vw_export_leak.fk_cause = ANY (ARRAY[101, 102, 103]))) n3380;

ALTER TABLE usr_sige.statistics_ssige
    OWNER TO sige;
