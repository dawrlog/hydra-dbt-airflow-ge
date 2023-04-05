{{ config(materialized="view") }}
select
    md5(concat(payload_pull_request_merged_by_login, current_date)) as surr_key,
    payload_pull_request_merged_by_login as gh_login,
    count(payload_action) as closed_amt,
    current_date as fct_load_dt
from {{ ref("stg_github_events") }}
group by payload_pull_request_merged_by_login, payload_action
having lower(payload_action) = 'closed'
