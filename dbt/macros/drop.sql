{% macro drop() %}
{% set sql %}
    DROP DATABASE CLONE_DB_DEMO_DBT;
{% endset %}

{% do run_query(sql) %}
{% do log("Clone Dropped successfully", info=True) %}
{% endmacro %}