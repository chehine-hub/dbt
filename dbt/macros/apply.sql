{% macro apply() %}
{% set sql %}
    CREATE OR REPLACE DATABASE DB_DEMO_DBT clone CLONE_DB_DEMO_DBT;
{% endset %}

{% do run_query(sql) %}
{% do log("Changes applied successfully", info=True) %}
{% endmacro %}