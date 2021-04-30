with source_liste_agents as (
    SELECT * FROM {{ source('sample_db', 'sample_table') }}
)

final as (
    SELECT * FROM source_liste_agents
)

SELECT * FROM final