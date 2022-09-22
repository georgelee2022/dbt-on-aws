with recursive cte (id, idx, field) as (
    {{ flatten_fields(ref('stg_imdb__title_basics'), 'genres', 'title_id') }}
)

select 
    id as title_id, 
    field as genre
from cte
order by id