{% macro clone_db() %}
{% set sql %}
    COPY INTO ...;
{% endset %}

{% do run_query(sql) %}
{% do log("Database cloned Successfully", info=True) %}
{% endmacro %}