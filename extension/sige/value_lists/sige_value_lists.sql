-- Value lists are kept during mode upgrades with PUM, so it is commented. Uncomment in case of new installation.

--UPDATE qwat_vl.status SET vl_active = true, active = true, functional = false, value_fr = 'projet', value_en = 'project', value_ro = 'Proiect', description_fr = 'L''objet est un projet validé, en attente ou en cours de réalisation.', description_ro = 'Obiectul face parte dintr-un proiect care se va face sau în curs de realizare.', description_en = 'The object is part of a project that''s planned, validaded or already in execution' WHERE id = 1306;

--UPDATE qwat_vl.status SET vl_active = true, active = false, functional = false, value_fr = 'en attente', value_en = 'waiting', description_fr = 'L''objet en attente n''est pas fonctionnel et ne contribue pas au réseau. Il nécessite des opérations pour être mis/remis en service. Dans le cas d''une conduite, il n''est pas suffisant d''ouvrir une vanne pour le mettre en service car il n’est par exemple pas raccordé au réseau.' WHERE id = 1308;

--UPDATE qwat_vl.nominal_diameter SET value_fr = 'NPS: 2 1/2 DN: 65 OD: 76.1', value_en = 'NPS: 2 1/2 DN: 65 OD: 76.1', value_ro = 'NPS: 2 1/2 DN: 65 OD: 76.1' WHERE id = 7008 AND short_fr = '65' AND value_fr LIKE '%OD: 73.03%';

--INSERT INTO qwat_vl.status(id, vl_active, short_fr, value_fr) VALUES (7091, true, 'Elgef 63', 'Elgef 63 (NPS: 2 DN: 50'));

--INSERT INTO qwat_vl.part_type(id, vl_active, value_fr) VALUES (9251, true, 'débit permanent');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,code_sire,sia405code) VALUES (10001,true,'PVC','','PVC','Chlorure de polyvinyle','','Policlorură de vinil','300',6,'Kunststoff.Polyvinylchlorid.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_nominal,diameter_internal,code_sire,pressure_nominal,sia405code) VALUES (10002,true,'FAE','','','Fonte auto-étanche','','','125',125,125,4,10,'Guss.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_nominal,diameter_internal,code_sire,sia405code) VALUES (10003,true,'AC','','OL','Acier','','Oţel','700',700,700,11,'Stahl.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_nominal,diameter_internal,code_sire,sia405code) VALUES (10004,true,'ACI','','OLI','Acier inoxydable','','Oţel Inoxidabil','35',35,35,11,'Stahl.rostbestaendig');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,code_sire,sia405code) VALUES (10005,true,'PEX','','PEX','Polyéthylène réticulé','','Polietilenă reticulată','20',10,'Kunststoff.Polyethylen.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,code_sire,pressure_nominal,sia405code) VALUES (10006,true,'F','','F','Fonte','','Fontă','400',4,40,'Guss.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_nominal,diameter_internal,diameter_external,code_sire,pressure_nominal,sia405code) VALUES (10007,true,'PE GEROfit','','PE GEROfit','Polyéthylène 100 GEROfit','','Polietilenă 100 GEROfit','40',32,32.6,40,10,16,'Kunststoff.Polyethylen.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_nominal,diameter_internal,diameter_external,code_sire,pressure_nominal,sia405code) VALUES (10008,true,'PE GEROfit','','PE GEROfit','Polyéthylène 100 GEROfit','','Polietilenă 100 GEROfit','50',40,40.8,50,10,16,'Kunststoff.Polyethylen.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_nominal,diameter_internal,diameter_external,code_sire,pressure_nominal,sia405code) VALUES (10009,true,'PE GEROfit','','PE GEROfit','Polyéthylène 100 GEROfit','','Polietilenă 100 GEROfit','63',50,51.4,63,10,16,'Kunststoff.Polyethylen.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_nominal,diameter_internal,diameter_external,code_sire,pressure_nominal,sia405code) VALUES (10010,true,'PE GEROfit','','PE GEROfit','Polyéthylène 100 GEROfit','','Polietilenă 100 GEROfit','90',75,73.6,90,10,16,'Kunststoff.Polyethylen.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_nominal,diameter_internal,diameter_external,code_sire,pressure_nominal,sia405code) VALUES (10011,true,'PE GEROfit','','PE GEROfit','Polyéthylène 100 GEROfit','','Polietilenă 100 GEROfit','125',100,102.2,125,10,16,'Kunststoff.Polyethylen.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_nominal,diameter_internal,diameter_external,code_sire,pressure_nominal,sia405code) VALUES (10012,true,'PE GEROfit','','PE GEROfit','Polyéthylène 100 GEROfit','','Polietilenă 100 GEROfit','160',125,130.8,160,10,16,'Kunststoff.Polyethylen.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_nominal,diameter_internal,diameter_external,code_sire,pressure_nominal,sia405code) VALUES (10013,true,'PE GEROfit','','PE GEROfit','Polyéthylène 100 GEROfit','','Polietilenă 100 GEROfit','200',160,163.6,200,10,16,'Kunststoff.Polyethylen.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_internal,diameter_external,code_sire,pressure_nominal,sia405code) VALUES (10014,true,'PE GEROfit','','PE GEROfit','Polyéthylène 100 GEROfit','','Polietilenă 100 GEROfit','40',35.2,40,10,10,'Kunststoff.Polyethylen.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_internal,diameter_external,code_sire,pressure_nominal,sia405code) VALUES (10015,true,'PE GEROfit','','PE GEROfit','Polyéthylène 100 GEROfit','','Polietilenă 100 GEROfit','50',44,50,10,10,'Kunststoff.Polyethylen.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_internal,diameter_external,code_sire,pressure_nominal,sia405code) VALUES (10016,true,'PE GEROfit','','PE GEROfit','Polyéthylène 100 GEROfit','','Polietilenă 100 GEROfit','63',55.4,63,10,10,'Kunststoff.Polyethylen.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_internal,diameter_external,code_sire,pressure_nominal,sia405code) VALUES (10017,true,'PE GEROfit','','PE GEROfit','Polyéthylène 100 GEROfit','','Polietilenă 100 GEROfit','90',79.2,90,10,10,'Kunststoff.Polyethylen.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_internal,diameter_external,code_sire,pressure_nominal,sia405code) VALUES (10018,true,'PE GEROfit','','PE GEROfit','Polyéthylène 100 GEROfit','','Polietilenă 100 GEROfit','125',110.2,125,10,10,'Kunststoff.Polyethylen.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_internal,diameter_external,code_sire,pressure_nominal,sia405code) VALUES (10019,true,'PE GEROfit','','PE GEROfit','Polyéthylène 100 GEROfit','','Polietilenă 100 GEROfit','160',141,160,10,10,'Kunststoff.Polyethylen.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_internal,diameter_external,code_sire,pressure_nominal,sia405code) VALUES (10020,true,'PE GEROfit','','PE GEROfit','Polyéthylène 100 GEROfit','','Polietilenă 100 GEROfit','200',176.2,200,10,10,'Kunststoff.Polyethylen.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_internal,diameter_external,code_sire,pressure_nominal,sia405code) VALUES (10021,true,'PE GEROfit','','PE GEROfit','Polyéthylène 100 GEROfit','','Polietilenă 100 GEROfit','40',29,40,10,25,'Kunststoff.Polyethylen.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_internal,diameter_external,code_sire,pressure_nominal,sia405code) VALUES (10022,true,'PE GEROfit','','PE GEROfit','Polyéthylène 100 GEROfit','','Polietilenă 100 GEROfit','50',36.2,50,10,25,'Kunststoff.Polyethylen.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_internal,diameter_external,code_sire,pressure_nominal,sia405code) VALUES (10023,true,'PE GEROfit','','PE GEROfit','Polyéthylène 100 GEROfit','','Polietilenă 100 GEROfit','63',45.8,63,10,25,'Kunststoff.Polyethylen.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_internal,diameter_external,code_sire,pressure_nominal,sia405code) VALUES (10024,true,'PE GEROfit','','PE GEROfit','Polyéthylène 100 GEROfit','','Polietilenă 100 GEROfit','90',65.4,90,10,25,'Kunststoff.Polyethylen.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_internal,diameter_external,code_sire,pressure_nominal,sia405code) VALUES (10025,true,'PE GEROfit','','PE GEROfit','Polyéthylène 100 GEROfit','','Polietilenă 100 GEROfit','125',90.8,125,10,25,'Kunststoff.Polyethylen.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_internal,diameter_external,code_sire,pressure_nominal,sia405code) VALUES (10026,true,'PE GEROfit','','PE GEROfit','Polyéthylène 100 GEROfit','','Polietilenă 100 GEROfit','160',116.2,160,10,25,'Kunststoff.Polyethylen.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_internal,diameter_external,code_sire,pressure_nominal,sia405code) VALUES (10027,true,'PE GEROfit','','PE GEROfit','Polyéthylène 100 GEROfit','','Polietilenă 100 GEROfit','200',145.2,200,10,25,'Kunststoff.Polyethylen.unbekannt');

--INSERT INTO qwat_vl.pipe_material (id,vl_active,short_fr,short_en,short_ro,value_fr,value_en,value_ro,diameter,diameter_nominal,diameter_internal,code_sire,pressure_nominal,sia405code) VALUES (10028,true,'FAE','','','Fonte auto-étanche','','','80',80,80,4,25,'Guss.unbekannt');

--INSERT INTO qwat_vl.valve_function (id,vl_active,value_fr,sia405code) VALUES (6190,true,'vanne de décharge','Schieber.unbekannt');
