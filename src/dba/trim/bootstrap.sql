.bail on
.echo on

-- drop/create new tables
.open ./data/processed/congress-legislators.trim.sqlite
.read ./src/dba/trim/schema.sql

-- import the data
.changes on

/* we'll just import from existing vanilla data instead of
   importing from raw
*/

ATTACH DATABASE
    './data/processed/congress-legislators.vanilla.sqlite'
    AS vanilla;

INSERT INTO
    legislator
SELECT
    bioguide_id
    , type
    , last_name
    , first_name
    , state
    , party
    , district
    , senate_class
    , birthday
    , gender
    , url
    , govtrack_id
    , thomas_id
    , fec_ids
    , lis_id
    , icpsr_id
    , wikipedia_id

FROM
    vanilla.legislator
ORDER BY
    vanilla.legislator.bioguide_id;

-- index the data
.read ./src/dba/trim/indexes.sql

