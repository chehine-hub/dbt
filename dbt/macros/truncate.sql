{% macro truncate() %}
{% set sql %}
    TRUNCATE TABLE "DB_DEMO_DBT"."RAW"."LISTE_AGENTS"; 
{% endset %}

{% do run_query(sql) %}
{% do log("RAW table is now EMPTY", info=True) %}
{% endmacro %}