with source_liste_agents as (
    select * from {{ source('sample_db', 'sample_table') }}
),

final as (
    select * from source_liste_agents
)

select * from final