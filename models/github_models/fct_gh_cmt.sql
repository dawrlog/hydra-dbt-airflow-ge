{{ config(materialized="view") }}
select distinct
    md5(
        concat(
            dim_gh_closed_actions.gh_login,
            dim_gh_closed_actions.gh_action,
            current_date
        )
    ) as surr_key,
    dim_gh_closed_actions.gh_login,
    dim_gh_closed_actions.gh_action,
    closed_amt,
    last_closed_dt,
    current_date as fct_load_dt

from {{ ref("dim_gh_closed_actions") }}
inner join
    {{ ref("fct_gh_closed_amt") }}
    on dim_gh_closed_actions.gh_login = fct_gh_closed_amt.gh_login
inner join
    {{ ref("fct_gh_closed_lst") }}
    on dim_gh_closed_actions.gh_login = fct_gh_closed_lst.gh_login
