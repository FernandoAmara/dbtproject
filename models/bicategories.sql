select {{retorna_campos()}} from {{ref('joins')}}
where category_name = '{{var('category')}}'