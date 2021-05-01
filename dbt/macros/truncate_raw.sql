{% macro clone_db() %}
{% set sql %}
    TRUNCATE TABLE "CLONE_DB_DEMO_DBT"."RAW"."LISTE_AGENTS"; 
{% endset %}

{% do run_query(sql) %}
{% do log("RAW table is now EMPTY", info=True) %}
{% endmacro %}