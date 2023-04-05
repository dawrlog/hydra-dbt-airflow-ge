{{ config(materialized="view") }}

select
    payload_pull_request_merged_by_login as gh_login,
    payload_action as gh_action,
    payload_pull_request_milestone_closed_at as gh_closed_at,
    current_date as dim_load_dt
from {{ ref("stg_github_events") }}
where lower(payload_action) = 'closed'
