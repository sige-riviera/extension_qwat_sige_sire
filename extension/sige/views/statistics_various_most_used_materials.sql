-- View: usr_sige.statistics_various_most_used_materials

-- DROP VIEW usr_sige.statistics_various_most_used_materials;

CREATE OR REPLACE VIEW usr_sige.statistics_various_most_used_materials AS
SELECT pm.id,pm._displayname_fr,COUNT(pipe.fk_material) AS count
FROM qwat_od.pipe pipe
FULL OUTER JOIN qwat_vl.pipe_material pm ON pipe.fk_material = pm.id
GROUP BY _displayname_fr,pm.id
ORDER BY count DESC;

ALTER TABLE usr_sige.statistics_various_most_used_materials
    OWNER TO sige;
