with source as (

    select * from {{ source('imdb', 'title_crew') }}

),

renamed as (

    select
        tconst as title_id,
        directors,
        writers
    from source
    where tconst <> 'tconst'

)

select * from renamed