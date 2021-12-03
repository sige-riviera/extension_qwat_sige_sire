-- add extra fields to qwat_od tables

ALTER TABLE qwat_od.folder ADD COLUMN authority_approval_identification character varying(50);
ALTER TABLE qwat_od.folder ADD COLUMN authority_approval_description text;
ALTER TABLE qwat_od.folder ADD COLUMN exported_to_authority boolean;
ALTER TABLE qwat_od.folder ADD COLUMN export_remark text;

ALTER TABLE qwat_od.hydrant ADD COLUMN model character varying(30);
ALTER TABLE qwat_od.hydrant ADD COLUMN notification_sent boolean;
ALTER TABLE qwat_od.hydrant ADD COLUMN third_party_supply boolean DEFAULT false;

ALTER TABLE qwat_od.installation ADD COLUMN update_date date;

ALTER TABLE qwat_od.subscriber ADD COLUMN usr_external_meter boolean;
ALTER TABLE qwat_od.subscriber ADD COLUMN usr_external_meter_remark character varying(50);

ALTER TABLE qwat_od.remote ADD COLUMN sige_cable_installed boolean;
