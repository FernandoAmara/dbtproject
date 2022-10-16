select count(*) count, company_name, contact_name from
{{ref('customers')}}
group by company_name, contact_name
having count > 1

/*este teste deve falhar
select count(*) count, company_name, contact_name from
{{source('sources','customers')}}
group by company_name, contact_name
having count > 1
*/