{% macro clone_db() %}
{% set sql %}
COPY INTO "DB_DEMO_DBT"."RAW"."LISTE_AGENTS" FROM @STAGE_DEMO_DBT FILE_FORMAT = CSV;
{% endset %}

{% do run_query(sql) %}
{% do log("Database cloned Successfully", info=True) %}
{% endmacro %}