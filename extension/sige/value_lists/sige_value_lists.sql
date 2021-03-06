-- Value lists are kept during mode upgrades with PUM, so it is commented. Uncomment in case of new installation.

--UPDATE qwat_vl.status SET vl_active = true, active = true, functional = false, value_fr = 'projet', value_en = 'project', value_ro = 'Proiect', description_fr = 'L''objet est un projet validé, en attente ou en cours de réalisation.', description_ro = 'Obiectul face parte dintr-un proiect care se va face sau în curs de realizare.', description_en = 'The object is part of a project that''s planned, validaded or already in execution' WHERE id = 1306;

--UPDATE qwat_vl.status SET vl_active = true, active = false, functional = false, value_fr = 'en attente', value_en = 'waiting', description_fr = 'L''objet en attente n''est pas fonctionnel et ne contribue pas au réseau. Il nécessite des opérations pour être mis/remis en service. Dans le cas d''une conduite, il n''est pas suffisant d''ouvrir une vanne pour le mettre en service car il n’est par exemple pas raccordé au réseau.' WHERE id = 1308;

--INSERT INTO qwat_vl.status(id, vl_active, short_fr, value_fr) VALUES (7091, true, 'Elgef 63', 'Elgef 63 (NPS: 2 DN: 50'));

--INSERT INTO qwat_vl.part_type(id, vl_active, value_fr) VALUES (9251, true, 'débit permanent');
