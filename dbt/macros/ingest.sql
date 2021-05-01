{% macro ingest() %}
{% set sql %}
COPY INTO "DB_DEMO_DBT"."RAW"."LISTE_AGENTS" 
FROM @"DB_DEMO_DBT"."RAW"."STAGE_DEMO_DBT" 
FILE_FORMAT = "DB_DEMO_DBT"."RAW"."CSV";
{% endset %}

{% do run_query(sql) %}
{% do log("Data ingested successfully", info=True) %}
{% endmacro %}