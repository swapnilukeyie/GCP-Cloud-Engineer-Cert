-- ============================================================================
-- GSP072: BigQuery Qwik Start - Console
-- All queries in execution order. Console-only steps are noted in comments.
-- ============================================================================


-- ----------------------------------------------------------------------------
-- SETUP (Cloud Shell, optional): confirm identity and project.
--   gcloud auth list
--   gcloud config list project
-- ----------------------------------------------------------------------------


-- ----------------------------------------------------------------------------
-- TASK 2: Query a public dataset — the 10 heaviest US birth weights from the
-- natality sample. Note the Query Validator's green check + bytes estimate
-- before running (that is your cost preview).
-- ----------------------------------------------------------------------------
#standardSQL
SELECT
  weight_pounds, state, year, gestation_weeks
FROM
  `bigquery-public-data.samples.natality`
ORDER BY weight_pounds DESC LIMIT 10;


-- ----------------------------------------------------------------------------
-- TASK 3 (console): Create dataset `babynames`
--   Explorer > View actions (three dots) next to the project > Create dataset
--   Dataset ID: babynames, all other fields default.
-- CLI equivalent:
--   bq mk --dataset $GOOGLE_CLOUD_PROJECT:babynames
-- ----------------------------------------------------------------------------


-- ----------------------------------------------------------------------------
-- TASK 4 (console): Load ~7 MB of US Social Security baby-name data into a
-- new table.
--   View actions on babynames > Create table:
--     Create table from : Google Cloud Storage
--     File              : spls/gsp072/baby-names/yob2014.txt
--     File format       : CSV        (extension .txt doesn't matter)
--     Table             : names_2014
--     Schema (Edit as text): name:string,gender:string,count:integer
-- CLI equivalent:
--   bq load --source_format=CSV babynames.names_2014 \
--     gs://spls/gsp072/baby-names/yob2014.txt \
--     name:string,gender:string,count:integer
-- ----------------------------------------------------------------------------


-- ----------------------------------------------------------------------------
-- TASK 5 (console): Preview — click names_2014 > Preview tab.
-- CLI equivalent: bq head -n 10 babynames.names_2014
-- ----------------------------------------------------------------------------


-- ----------------------------------------------------------------------------
-- TASK 6: Query your custom table — top 5 boys' names of 2014.
-- Identical mechanics to the public-dataset query; only the table changes.
-- ----------------------------------------------------------------------------
#standardSQL
SELECT
  name, count
FROM
  `babynames.names_2014`
WHERE
  gender = 'M'
ORDER BY count DESC LIMIT 5;
