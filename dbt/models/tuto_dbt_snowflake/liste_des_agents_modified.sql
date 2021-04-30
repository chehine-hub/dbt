{{ config(materialized='table') }}

with source_liste_agents as (
    select * from {{ source('source_db', 'liste_agents') }}
),

final as (
    select * from source_liste_agents where working_area == 'London'
)

select * from final