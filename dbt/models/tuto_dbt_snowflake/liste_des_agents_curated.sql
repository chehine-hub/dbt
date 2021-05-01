{{ config(materialized='table') }}

with source_liste_agents as (
    select * from {{ source('source_db', 'liste_agents') }}
),

final as (
    select agent_name, agent_code, working_area from source_liste_agents
)

select * from final