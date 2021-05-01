{% macro clone_db() %}
{% set sql %}
    CREATE DATABASE CLONE_RAW_DB clone RAW_DB;
{% endset %}

{% do run_query(sql) %}
{% do log("Database cloned Successfully", info=True) %}
{% endmacro %}
