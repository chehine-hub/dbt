{% macro clone_db() %}
{% set sql %}
    CREATE OR REPLACE DATABASE CLONE_DB_DEMO_DBT clone DB_DEMO_DBT;
{% endset %}

{% do run_query(sql) %}
{% do log("Database cloned Successfully", info=True) %}
{% endmacro %}
