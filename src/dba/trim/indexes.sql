CREATE INDEX legislator_ix_bioguide_id ON legislator(bioguide_id);
CREATE INDEX legislator_ix_last_first_name ON legislator(last_name, first_name);
CREATE INDEX legislator_ix_birthday ON legislator(birthday);
CREATE INDEX legislator_ix_state_district ON legislator(state, district);
CREATE INDEX legislator_ix_party_type ON legislator(party, type);
CREATE INDEX legislator_ix_govtrack_id ON legislator(govtrack_id);
CREATE INDEX legislator_ix_thomas_id ON legislator(thomas_id);
