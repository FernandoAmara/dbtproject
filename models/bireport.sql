{{
    config(
        materialized='table',
        pre_hook=["begin; lock table {{target.schema}}.bireport;
        "],
        post_hook=["commit;
            GRANT USAGE ON SCHEMA {{target.schema}} TO GROUP biusers;
            GRANT SELECT ON TABLE {{target.schema}}.bireport TO GROUP biusers;

        "]

    )

}}
select * from {{ref('joins')}}