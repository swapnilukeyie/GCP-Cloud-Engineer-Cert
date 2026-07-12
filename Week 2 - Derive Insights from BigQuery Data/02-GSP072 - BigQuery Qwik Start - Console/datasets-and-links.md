# 🔗 Datasets & Useful Links — GSP072

## Lab & Course Links

| Resource | Link |
|---|---|
| Skill Badge Course: Derive Insights from BigQuery Data | https://www.cloudskillsboost.google/course_templates/623 |
| Lab (GSP072): BigQuery Qwik Start - Console | https://www.cloudskillsboost.google/focuses/2412?parent=catalog |
| BigQuery Console | https://console.cloud.google.com/bigquery |

## Tools & Services (deep-dive links)

| Tool | Link |
|---|---|
| BigQuery quickstart — query a public dataset (console) | https://cloud.google.com/bigquery/docs/quickstarts/query-public-dataset-console |
| Loading CSV data from Cloud Storage | https://cloud.google.com/bigquery/docs/loading-data-cloud-storage-csv |
| Specifying a schema | https://cloud.google.com/bigquery/docs/schemas |
| Estimating query costs (the Query Validator) | https://cloud.google.com/bigquery/docs/best-practices-costs |
| BigQuery REST API & client libraries | https://cloud.google.com/bigquery/docs/reference/rest |
| gcloud CLI overview | https://cloud.google.com/sdk/gcloud |

## Datasets Used in This Lab

### 1. US Natality sample (BigQuery public dataset) — *Task 2 source*
- **BigQuery table:** `bigquery-public-data.samples.natality`
- **What it contains:** US birth-rate records — birth weight, state, year, gestation weeks, and more.
- Browse other public datasets via **+ Add → Public Datasets** in the console.

### 2. US baby names 2014 (Social Security Administration) — *Task 4 source*
- **GCS file:** `gs://spls/gsp072/baby-names/yob2014.txt` (~7 MB, CSV despite the .txt extension)
- **Columns:** `name:string, gender:string, count:integer`
- **Original source:** https://www.ssa.gov/oact/babynames/limits.html

### 3. Objects created during the lab

| Object | Created in | Contents |
|---|---|---|
| Dataset `babynames` | Task 3 | Holds the loaded table |
| Table `babynames.names_2014` | Task 4 | 2014 US baby names with gender and count |

## Files in This Folder

| File | Purpose |
|---|---|
| `README.md` | Full beginner-friendly walkthrough with diagrams, tools intro, and CLI alternatives |
| `solutions.sql` | Both queries plus console steps documented as comments |
| `datasets-and-links.md` | This file — dataset references and links |
