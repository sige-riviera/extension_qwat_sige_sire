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
    n1530.n1530,
    n1540.n1540,
    n1550.n1550,
    n1560.n1560,
    n1570.n1570,
    n1580.n1580,
    n1600.n1600,
    n1610.n1610,
    n1620.n1620,
    n1630.n1630,
    n1650.n1650,
    n1660.n1660,
    n1670.n1670,
    n1680.n1680,
    n1700.n1700,
    n1710.n1710,
    n1720.n1720,
    n1730.n1730,
    n1740.n1740,
    n1750.n1750,
    n1770.n1770,
    n1780.n1780,
    n1790.n1790,
    n1800.n1800,
    n1810.n1810,
    n1820.n1820,
    n1840.n1840,
    n1850.n1850,
    n1860.n1860,
    n1870.n1870,
    n1880.n1880,
    n1890.n1890,
    n1910.n1910,
    n1920.n1920,
    n1930.n1930,
    n1940.n1940,
    n1950.n1950,
    n1960.n1960,
    n1970.n1970,
    'Resp. clientèle'::text AS n2060,
    'Resp. clientèle'::text AS n2070,
    n2080.n2080,
    n2100.n2100,
    'Resp. exploitation'::text AS n3240,
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
          WHERE vw_export_pipe.fk_distributor = 1 AND vw_export_pipe.status_active IS TRUE AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4104, 4105, 4107, 4109, 4111, 4112, 4151]))) n1320
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
	 CROSS JOIN ( SELECT 0 AS n1530) n1530
	 CROSS JOIN ( SELECT 0 AS n1540) n1540
	 CROSS JOIN ( SELECT round(sum(st_length(vw_export_pipe.geometry))) AS n1550
			FROM qwat_od.vw_export_pipe
			WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4104, 4105, 4107, 4109, 4111, 4112, 4151])) AND pipe_material_short_fr = 'F' AND (fk_installmethod != 4202 OR fk_installmethod IS NULL)) n1550
	 CROSS JOIN ( SELECT round(sum(st_length(vw_export_pipe.geometry))) AS n1560
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4106,4108])) AND pipe_material_short_fr = 'F' AND (fk_installmethod != 4202 OR fk_installmethod IS NULL)) n1560
	 CROSS JOIN ( SELECT max(pipe_material_diameter_nominal) AS n1570
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4104, 4105, 4107, 4109, 4111, 4112, 4151, 4106, 4108])) AND pipe_material_short_fr = 'F' AND (fk_installmethod != 4202 OR fk_installmethod IS NULL)) n1570
	 CROSS JOIN ( SELECT min(pipe_material_diameter_nominal) AS n1580
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4104, 4105, 4107, 4109, 4111, 4112, 4151, 4106, 4108])) AND pipe_material_short_fr = 'F' AND (fk_installmethod != 4202 OR fk_installmethod IS NULL)) n1580
	 CROSS JOIN ( SELECT 0 AS n1600) n1600
	 CROSS JOIN ( SELECT 0 AS n1610) n1610
	 CROSS JOIN ( SELECT round(sum(st_length(vw_export_pipe.geometry))) AS n1620
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4104, 4105, 4107, 4109, 4111, 4112, 4151])) AND pipe_material_short_fr = 'FAE' AND (fk_installmethod != 4202 OR fk_installmethod IS NULL)) n1620
	 CROSS JOIN ( SELECT round(sum(st_length(vw_export_pipe.geometry))) AS n1630
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4106,4108])) AND pipe_material_short_fr = 'FAE' AND (fk_installmethod != 4202 OR fk_installmethod IS NULL)) n1630
	 CROSS JOIN ( SELECT 0 AS n1650) n1650
	 CROSS JOIN ( SELECT 0 AS n1660) n1660
	 CROSS JOIN ( SELECT max(pipe_material_diameter_nominal) AS n1670
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4104, 4105, 4107, 4109, 4111, 4112, 4151, 4106, 4108])) AND pipe_material_short_fr = 'FAE' AND (fk_installmethod != 4202 OR fk_installmethod IS NULL)) n1670
	 CROSS JOIN ( SELECT min(pipe_material_diameter_nominal) AS n1680
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4104, 4105, 4107, 4109, 4111, 4112, 4151, 4106, 4108])) AND pipe_material_short_fr = 'FAE' AND (fk_installmethod != 4202 OR fk_installmethod IS NULL)) n1680
	 CROSS JOIN ( SELECT 0 AS n1700) n1700
	 CROSS JOIN ( SELECT 0 AS n1710) n1710
	 CROSS JOIN ( SELECT round(sum(st_length(vw_export_pipe.geometry))) AS n1720
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4104, 4105, 4107, 4109, 4111, 4112, 4151])) AND pipe_material_short_fr IN ('AC','ACG','ACI','ACPR') AND (fk_installmethod != 4202 OR fk_installmethod IS NULL)) n1720
	 CROSS JOIN ( SELECT round(sum(st_length(vw_export_pipe.geometry))) AS n1730
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4106,4108])) AND pipe_material_short_fr IN ('AC','ACG','ACI','ACPR') AND (fk_installmethod != 4202 OR fk_installmethod IS NULL)) n1730
	 CROSS JOIN ( SELECT max(pipe_material_diameter_nominal) AS n1740
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4104, 4105, 4107, 4109, 4111, 4112, 4151, 4106, 4108])) AND pipe_material_short_fr IN ('AC','ACG','ACI','ACPR') AND (fk_installmethod != 4202 OR fk_installmethod IS NULL)) n1740
	 CROSS JOIN ( SELECT min(pipe_material_diameter_nominal) AS n1750
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4104, 4105, 4107, 4109, 4111, 4112, 4151, 4106, 4108])) AND pipe_material_short_fr IN ('AC','ACG','ACI','ACPR') AND (fk_installmethod != 4202 OR fk_installmethod IS NULL)) n1750
	 CROSS JOIN ( SELECT 0 AS n1770) n1770
	 CROSS JOIN ( SELECT 0 AS n1780) n1780
	 CROSS JOIN ( SELECT round(sum(st_length(vw_export_pipe.geometry))) AS n1790
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4104, 4105, 4107, 4109, 4111, 4112, 4151])) AND (pipe_material_short_fr IN ('PE','PE GEROfit','PEX','PE80') OR "fk_installmethod" = 4202)) n1790
	 CROSS JOIN ( SELECT round(sum(st_length(vw_export_pipe.geometry))) AS n1800
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4106,4108])) AND (pipe_material_short_fr IN ('PE','PE GEROfit','PEX','PE80') OR "fk_installmethod" = 4202)) n1800
	 CROSS JOIN ( SELECT max(pipe_material_diameter_nominal) AS n1810
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4104, 4105, 4107, 4109, 4111, 4112, 4151, 4106, 4108])) AND (pipe_material_short_fr IN ('PE','PE GEROfit','PEX','PE80') OR "fk_installmethod" = 4202)) n1810
	 CROSS JOIN ( SELECT min(pipe_material_diameter_nominal) AS n1820
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4104, 4105, 4107, 4109, 4111, 4112, 4151, 4106, 4108])) AND (pipe_material_short_fr IN ('PE','PE GEROfit','PEX','PE80') OR "fk_installmethod" = 4202)) n1820
	 CROSS JOIN ( SELECT 0 AS n1840) n1840
	 CROSS JOIN ( SELECT 0 AS n1850) n1850
	 CROSS JOIN ( SELECT round(sum(st_length(vw_export_pipe.geometry))) AS n1860
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4104, 4105, 4107, 4109, 4111, 4112, 4151])) AND pipe_material_short_fr IN ('TAC') AND (fk_installmethod != 4202 OR fk_installmethod IS NULL)) n1860
	 CROSS JOIN ( SELECT round(sum(st_length(vw_export_pipe.geometry))) AS n1870
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4106,4108])) AND pipe_material_short_fr IN ('TAC') AND (fk_installmethod != 4202 OR fk_installmethod IS NULL)) n1870
	 CROSS JOIN ( SELECT max(pipe_material_diameter_nominal) AS n1880
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4104, 4105, 4107, 4109, 4111, 4112, 4151, 4106, 4108])) AND pipe_material_short_fr IN ('TAC') AND (fk_installmethod != 4202 OR fk_installmethod IS NULL)) n1880
	 CROSS JOIN ( SELECT min(pipe_material_diameter_nominal) AS n1890
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4104, 4105, 4107, 4109, 4111, 4112, 4151, 4106, 4108])) AND pipe_material_short_fr IN ('TAC') AND (fk_installmethod != 4202 OR fk_installmethod IS NULL)) n1890
	 CROSS JOIN ( SELECT 0 AS n1910) n1910
	 CROSS JOIN ( SELECT 0 AS n1920) n1920
	 CROSS JOIN ( SELECT round(sum(st_length(vw_export_pipe.geometry))) AS n1930
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4104, 4105, 4107, 4109, 4111, 4112, 4151])) AND pipe_material_short_fr NOT IN ('F','FAE','AC','ACG','ACI','ACPR','PE','PE GEROfit','PEX','PE80','TAC') AND (fk_installmethod != 4202 OR fk_installmethod IS NULL)) n1930
	 CROSS JOIN ( SELECT round(sum(st_length(vw_export_pipe.geometry))) AS n1940
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4106,4108])) AND pipe_material_short_fr NOT IN ('F','FAE','AC','ACG','ACI','ACPR','PE','PE GEROfit','PEX','PE80','TAC') AND (fk_installmethod != 4202 OR fk_installmethod IS NULL)) n1940
	 CROSS JOIN ( SELECT max(pipe_material_diameter_nominal) AS n1950
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4104, 4105, 4107, 4109, 4111, 4112, 4151, 4106, 4108])) AND pipe_material_short_fr NOT IN ('F','FAE','AC','ACG','ACI','ACPR','PE','PE GEROfit','PEX','PE80','TAC') AND (fk_installmethod != 4202 OR fk_installmethod IS NULL)) n1950
	 CROSS JOIN ( SELECT min(pipe_material_diameter_nominal) AS n1960
		   FROM qwat_od.vw_export_pipe
		  WHERE vw_export_pipe.fk_distributor = 1 AND (vw_export_pipe.fk_status = ANY (ARRAY[1301, 1307])) AND (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4104, 4105, 4107, 4109, 4111, 4112, 4151, 4106, 4108])) AND pipe_material_short_fr NOT IN ('F','FAE','AC','ACG','ACI','ACPR','PE','PE GEROfit','PEX','PE80','TAC') AND (fk_installmethod != 4202 OR fk_installmethod IS NULL)) n1960
	 CROSS JOIN ( SELECT 'Eventuelles remarques' AS n1970) n1970
     CROSS JOIN ( WITH reseau AS (
                 SELECT vw_export_pipe.geometry
                   FROM qwat_od.vw_export_pipe
                  WHERE (vw_export_pipe.fk_function = ANY (ARRAY[4101, 4102, 4103, 4105, 4107, 4109, 4151])) AND vw_export_pipe.fk_distributor = 1 AND vw_export_pipe.status_functional IS TRUE
                ), extremites AS (
                 SELECT vw_export_pipe.id,
                    st_startpoint(vw_export_pipe.geometry) AS pt
                   FROM qwat_od.vw_export_pipe
                  WHERE (vw_export_pipe.fk_function = ANY (ARRAY[4106, 4108])) AND vw_export_pipe.fk_distributor = 1 AND vw_export_pipe.status_functional IS TRUE
                UNION ALL
                 SELECT vw_export_pipe.id,
                    st_endpoint(vw_export_pipe.geometry) AS pt
                   FROM qwat_od.vw_export_pipe
                  WHERE (vw_export_pipe.fk_function = ANY (ARRAY[4106, 4108])) AND vw_export_pipe.fk_distributor = 1 AND vw_export_pipe.status_functional IS TRUE
                )
         SELECT count(DISTINCT e.id) AS n2080
           FROM extremites e
          WHERE (EXISTS ( SELECT 1
                   FROM reseau r
                  WHERE r.geometry && st_expand(e.pt, 0.01::double precision) AND st_dwithin(e.pt, r.geometry, 0.01::double precision)))) n2080
     CROSS JOIN ( SELECT COUNT(*) AS n2100
           FROM qwat_od.vw_export_subscriber
          WHERE fk_subscriber_type = 9403 AND status_vl_active IS TRUE) n2100
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
