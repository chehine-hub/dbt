with source_liste_agents as (
    select * from {{ source('source_db', 'liste_agents') }}
),

final as (
    select * from source_liste_agents
)

select * from final