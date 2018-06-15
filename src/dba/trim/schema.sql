DROP TABLE IF EXISTS legislator;
CREATE TABLE legislator(
    bioguide_id TEXT PRIMARY KEY,
    type TEXT,
    last_name TEXT,
    first_name TEXT,
    state TEXT,
    party TEXT,
    district TEXT,
    senate_class TEXT,
    birthday TEXT,
    gender TEXT,
    url TEXT,
    govtrack_id TEXT,
    thomas_id TEXT,
    fec_ids TEXT,
    lis_id TEXT,
    icpsr_id TEXT,
    wikipedia_id TEXT
);
