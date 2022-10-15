with calc_employees as (
    select 
    date_part(year,current_date) - date_part(year, birth_date) age ,
    date_part(year,current_date) - date_part(year,hire_date) lengthofservice,
    first_name || ' ' || last_name name, *
    from {{source('sources','employees')}}
)
select * from calc_employees