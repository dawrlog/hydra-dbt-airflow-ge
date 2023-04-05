{{ config(materialized="incremental") }}
select
    id,
    coalesce("type", '-1') as type,
    coalesce("actor.id", '-1') as actor_id,
    coalesce("actor.login", '-1') as actor_login,
    coalesce("actor.gravatar_id", '-1') as actor_gravatar_id,
    coalesce("actor.url", '-1') as actor_url,
    coalesce("actor.avatar_url", '-1') as actor_avatar_url,
    coalesce("repo.id", '-1') as repo_id,
    coalesce("repo.name", '-1') as repo_name,
    coalesce("repo.url", '-1') as repo_url,
    coalesce("payload.action", '-1') as payload_action,
    public as public,
    cast(coalesce(created_at, '31/12/9999') as date) as created_at,
    coalesce("payload.size", '-1') as payload_size,
    coalesce("payload.push_id", '-1') as payload_push_id,
    coalesce("payload.commits", '-1') as payload_commits,
    coalesce("payload.before", '-1') as payload_before,
    coalesce("payload.head", '-1') as payload_head,
    coalesce("payload.ref", '-1') as payload_ref,
    coalesce("payload.distinct_size", '-1') as payload_distinct_size,
    coalesce("payload.ref_type", '-1') as payload_ref_type,
    coalesce("payload.master_branch", '-1') as payload_master_branch,
    coalesce("payload.pusher_type", '-1') as payload_pusher_type,
    coalesce("payload.description", '-1') as payload_description,
    coalesce(
        "payload.pull_request._links.statuses.href", '-1'
    ) as payload_pull_request__links_statuses_href,
    "payload.pull_request.merged" as payload_pull_request_merged,
    coalesce(
        "payload.pull_request.changed_files", '-1'
    ) as payload_pull_request_changed_files,
    coalesce("payload.pull_request.deletions", '-1') as payload_pull_request_deletions,
    coalesce("payload.pull_request.additions", '-1') as payload_pull_request_additions,
    coalesce("payload.pull_request.commits", '-1') as payload_pull_request_commits,
    coalesce(
        "payload.pull_request.review_comments", '-1'
    ) as payload_pull_request_review_comments,
    coalesce("payload.pull_request.comments", '-1') as payload_pull_request_comments,
    coalesce("payload.pull_request.merged_by", '-1') as payload_pull_request_merged_by,
    coalesce(
        "payload.pull_request.mergeable_state", '-1'
    ) as payload_pull_request_mergeable_state,
    coalesce("payload.pull_request.mergeable", '-1') as payload_pull_request_mergeable,
    coalesce("payload.number", '-1') as payload_number,
    coalesce("payload.pull_request.url", '-1') as payload_pull_request_url,
    coalesce("payload.pull_request.id", '-1') as payload_pull_request_id,
    coalesce("payload.pull_request.html_url", '-1') as payload_pull_request_html_url,
    coalesce("payload.pull_request.diff_url", '-1') as payload_pull_request_diff_url,
    coalesce("payload.pull_request.patch_url", '-1') as payload_pull_request_patch_url,
    coalesce("payload.pull_request.issue_url", '-1') as payload_pull_request_issue_url,
    coalesce("payload.pull_request.number", '-1') as payload_pull_request_number,
    coalesce("payload.pull_request.state", '-1') as payload_pull_request_state,
    "payload.pull_request.locked" as payload_pull_request_locked,
    coalesce("payload.pull_request.title", '-1') as payload_pull_request_title,
    coalesce(
        "payload.pull_request.user.login", '-1'
    ) as payload_pull_request_user_login,
    coalesce("payload.pull_request.user.id", '-1') as payload_pull_request_user_id,
    coalesce(
        "payload.pull_request.user.avatar_url", '-1'
    ) as payload_pull_request_user_avatar_url,
    coalesce(
        "payload.pull_request.user.gravatar_id", '-1'
    ) as payload_pull_request_user_gravatar_id,
    coalesce("payload.pull_request.user.url", '-1') as payload_pull_request_user_url,
    coalesce(
        "payload.pull_request.user.html_url", '-1'
    ) as payload_pull_request_user_html_url,
    coalesce(
        "payload.pull_request.user.followers_url", '-1'
    ) as payload_pull_request_user_followers_url,
    coalesce(
        "payload.pull_request.user.following_url", '-1'
    ) as payload_pull_request_user_following_url,
    coalesce(
        "payload.pull_request.user.gists_url", '-1'
    ) as payload_pull_request_user_gists_url,
    coalesce(
        "payload.pull_request.user.starred_url", '-1'
    ) as payload_pull_request_user_starred_url,
    coalesce(
        "payload.pull_request.user.subscriptions_url", '-1'
    ) as payload_pull_request_user_subscriptions_url,
    coalesce(
        "payload.pull_request.user.organizations_url", '-1'
    ) as payload_pull_request_user_organizations_url,
    coalesce(
        "payload.pull_request.user.repos_url", '-1'
    ) as payload_pull_request_user_repos_url,
    coalesce(
        "payload.pull_request.user.events_url", '-1'
    ) as payload_pull_request_user_events_url,
    coalesce(
        "payload.pull_request.user.received_events_url", '-1'
    ) as payload_pull_request_user_received_events_url,
    coalesce("payload.pull_request.user.type", '-1') as payload_pull_request_user_type,
    "payload.pull_request.user.site_admin" as payload_pull_request_user_site_admin,
    coalesce("payload.pull_request.body", '-1') as payload_pull_request_body,
    coalesce(
        "payload.pull_request.created_at", '-1'
    ) as payload_pull_request_created_at,
    coalesce(
        "payload.pull_request.updated_at", '-1'
    ) as payload_pull_request_updated_at,
    coalesce("payload.pull_request.closed_at", '-1') as payload_pull_request_closed_at,
    coalesce("payload.pull_request.merged_at", '-1') as payload_pull_request_merged_at,
    coalesce(
        "payload.pull_request.merge_commit_sha", '-1'
    ) as payload_pull_request_merge_commit_sha,
    coalesce("payload.pull_request.assignee", '-1') as payload_pull_request_assignee,
    coalesce("payload.pull_request.milestone", '-1') as payload_pull_request_milestone,
    coalesce(
        "payload.pull_request.commits_url", '-1'
    ) as payload_pull_request_commits_url,
    coalesce(
        "payload.pull_request.review_comments_url", '-1'
    ) as payload_pull_request_review_comments_url,
    coalesce(
        "payload.pull_request.review_comment_url", '-1'
    ) as payload_pull_request_review_comment_url,
    coalesce(
        "payload.pull_request.comments_url", '-1'
    ) as payload_pull_request_comments_url,
    coalesce(
        "payload.pull_request.statuses_url", '-1'
    ) as payload_pull_request_statuses_url,
    coalesce(
        "payload.pull_request.head.label", '-1'
    ) as payload_pull_request_head_label,
    coalesce("payload.pull_request.head.ref", '-1') as payload_pull_request_head_ref,
    coalesce("payload.pull_request.head.sha", '-1') as payload_pull_request_head_sha,
    coalesce(
        "payload.pull_request.head.user.login", '-1'
    ) as payload_pull_request_head_user_login,
    coalesce(
        "payload.pull_request.head.user.id", '-1'
    ) as payload_pull_request_head_user_id,
    coalesce(
        "payload.pull_request.head.user.avatar_url", '-1'
    ) as payload_pull_request_head_user_avatar_url,
    coalesce(
        "payload.pull_request.head.user.gravatar_id", '-1'
    ) as payload_pull_request_head_user_gravatar_id,
    coalesce(
        "payload.pull_request.head.user.url", '-1'
    ) as payload_pull_request_head_user_url,
    coalesce(
        "payload.pull_request.head.user.html_url", '-1'
    ) as payload_pull_request_head_user_html_url,
    coalesce(
        "payload.pull_request.head.user.followers_url", '-1'
    ) as payload_pull_request_head_user_followers_url,
    coalesce(
        "payload.pull_request.head.user.following_url", '-1'
    ) as payload_pull_request_head_user_following_url,
    coalesce(
        "payload.pull_request.head.user.gists_url", '-1'
    ) as payload_pull_request_head_user_gists_url,
    coalesce(
        "payload.pull_request.head.user.starred_url", '-1'
    ) as payload_pull_request_head_user_starred_url,
    coalesce(
        "payload.pull_request.head.user.subscriptions_url", '-1'
    ) as payload_pull_request_head_user_subscriptions_url,
    coalesce(
        "payload.pull_request.head.user.organizations_url", '-1'
    ) as payload_pull_request_head_user_organizations_url,
    coalesce(
        "payload.pull_request.head.user.repos_url", '-1'
    ) as payload_pull_request_head_user_repos_url,
    coalesce(
        "payload.pull_request.head.user.events_url", '-1'
    ) as payload_pull_request_head_user_events_url,
    coalesce(
        "payload.pull_request.head.user.received_events_url", '-1'
    ) as payload_pull_request_head_user_received_events_url,
    coalesce(
        "payload.pull_request.head.user.type", '-1'
    ) as payload_pull_request_head_user_type,
    "payload.pull_request.head.user.site_admin"
    as payload_pull_request_head_user_site_admin,
    coalesce(
        "payload.pull_request.head.repo.id", '-1'
    ) as payload_pull_request_head_repo_id,
    coalesce(
        "payload.pull_request.head.repo.name", '-1'
    ) as payload_pull_request_head_repo_name,
    coalesce(
        "payload.pull_request.head.repo.full_name", '-1'
    ) as payload_pull_request_head_repo_full_name,
    coalesce(
        "payload.pull_request.head.repo.owner.login", '-1'
    ) as payload_pull_request_head_repo_owner_login,
    coalesce(
        "payload.pull_request.head.repo.owner.id", '-1'
    ) as payload_pull_request_head_repo_owner_id,
    coalesce(
        "payload.pull_request.head.repo.owner.avatar_url", '-1'
    ) as payload_pull_request_head_repo_owner_avatar_url,
    coalesce(
        "payload.pull_request.head.repo.owner.gravatar_id", '-1'
    ) as payload_pull_request_head_repo_owner_gravatar_id,
    coalesce(
        "payload.pull_request.head.repo.owner.url", '-1'
    ) as payload_pull_request_head_repo_owner_url,
    coalesce(
        "payload.pull_request.head.repo.owner.html_url", '-1'
    ) as payload_pull_request_head_repo_owner_html_url,
    coalesce(
        "payload.pull_request.head.repo.owner.followers_url", '-1'
    ) as payload_pull_request_head_repo_owner_followers_url,
    coalesce(
        "payload.pull_request.head.repo.owner.following_url", '-1'
    ) as payload_pull_request_head_repo_owner_following_url,
    coalesce(
        "payload.pull_request.head.repo.owner.gists_url", '-1'
    ) as payload_pull_request_head_repo_owner_gists_url,
    coalesce(
        "payload.pull_request.head.repo.owner.starred_url", '-1'
    ) as payload_pull_request_head_repo_owner_starred_url,
    coalesce(
        "payload.pull_request.head.repo.owner.subscriptions_url", '-1'
    ) as payload_pull_request_head_repo_owner_subscriptions_url,
    coalesce(
        "payload.pull_request.head.repo.owner.organizations_url", '-1'
    ) as payload_pull_request_head_repo_owner_organizations_url,
    coalesce(
        "payload.pull_request.head.repo.owner.repos_url", '-1'
    ) as payload_pull_request_head_repo_owner_repos_url,
    coalesce(
        "payload.pull_request.head.repo.owner.events_url", '-1'
    ) as payload_pull_request_head_repo_owner_events_url,
    coalesce(
        "payload.pull_request.head.repo.owner.received_events_url", '-1'
    ) as payload_pull_request_head_repo_owner_received_events_url,
    coalesce(
        "payload.pull_request.head.repo.owner.type", '-1'
    ) as payload_pull_request_head_repo_owner_type,
    "payload.pull_request.head.repo.owner.site_admin"
    as payload_pull_request_head_repo_owner_site_admin,
    "payload.pull_request.head.repo.private" as payload_pull_request_head_repo_private,
    coalesce(
        "payload.pull_request.head.repo.html_url", '-1'
    ) as payload_pull_request_head_repo_html_url,
    coalesce(
        "payload.pull_request.head.repo.description", '-1'
    ) as payload_pull_request_head_repo_description,
    "payload.pull_request.head.repo.fork" as payload_pull_request_head_repo_fork,
    coalesce(
        "payload.pull_request.head.repo.url", '-1'
    ) as payload_pull_request_head_repo_url,
    coalesce(
        "payload.pull_request.head.repo.forks_url", '-1'
    ) as payload_pull_request_head_repo_forks_url,
    coalesce(
        "payload.pull_request.head.repo.keys_url", '-1'
    ) as payload_pull_request_head_repo_keys_url,
    coalesce(
        "payload.pull_request.head.repo.collaborators_url", '-1'
    ) as payload_pull_request_head_repo_collaborators_url,
    coalesce(
        "payload.pull_request.head.repo.teams_url", '-1'
    ) as payload_pull_request_head_repo_teams_url,
    coalesce(
        "payload.pull_request.head.repo.hooks_url", '-1'
    ) as payload_pull_request_head_repo_hooks_url,
    coalesce(
        "payload.pull_request.head.repo.issue_events_url", '-1'
    ) as payload_pull_request_head_repo_issue_events_url,
    coalesce(
        "payload.pull_request.head.repo.events_url", '-1'
    ) as payload_pull_request_head_repo_events_url,
    coalesce(
        "payload.pull_request.head.repo.assignees_url", '-1'
    ) as payload_pull_request_head_repo_assignees_url,
    coalesce(
        "payload.pull_request.head.repo.branches_url", '-1'
    ) as payload_pull_request_head_repo_branches_url,
    coalesce(
        "payload.pull_request.head.repo.tags_url", '-1'
    ) as payload_pull_request_head_repo_tags_url,
    coalesce(
        "payload.pull_request.head.repo.blobs_url", '-1'
    ) as payload_pull_request_head_repo_blobs_url,
    coalesce(
        "payload.pull_request.head.repo.git_tags_url", '-1'
    ) as payload_pull_request_head_repo_git_tags_url,
    coalesce(
        "payload.pull_request.head.repo.git_refs_url", '-1'
    ) as payload_pull_request_head_repo_git_refs_url,
    coalesce(
        "payload.pull_request.head.repo.trees_url", '-1'
    ) as payload_pull_request_head_repo_trees_url,
    coalesce(
        "payload.pull_request.head.repo.statuses_url", '-1'
    ) as payload_pull_request_head_repo_statuses_url,
    coalesce(
        "payload.pull_request.head.repo.languages_url", '-1'
    ) as payload_pull_request_head_repo_languages_url,
    coalesce(
        "payload.pull_request.head.repo.stargazers_url", '-1'
    ) as payload_pull_request_head_repo_stargazers_url,
    coalesce(
        "payload.pull_request.head.repo.contributors_url", '-1'
    ) as payload_pull_request_head_repo_contributors_url,
    coalesce(
        "payload.pull_request.head.repo.subscribers_url", '-1'
    ) as payload_pull_request_head_repo_subscribers_url,
    coalesce(
        "payload.pull_request.head.repo.subscription_url", '-1'
    ) as payload_pull_request_head_repo_subscription_url,
    coalesce(
        "payload.pull_request.head.repo.commits_url", '-1'
    ) as payload_pull_request_head_repo_commits_url,
    coalesce(
        "payload.pull_request.head.repo.git_commits_url", '-1'
    ) as payload_pull_request_head_repo_git_commits_url,
    coalesce(
        "payload.pull_request.head.repo.comments_url", '-1'
    ) as payload_pull_request_head_repo_comments_url,
    coalesce(
        "payload.pull_request.head.repo.issue_comment_url", '-1'
    ) as payload_pull_request_head_repo_issue_comment_url,
    coalesce(
        "payload.pull_request.head.repo.contents_url", '-1'
    ) as payload_pull_request_head_repo_contents_url,
    coalesce(
        "payload.pull_request.head.repo.compare_url", '-1'
    ) as payload_pull_request_head_repo_compare_url,
    coalesce(
        "payload.pull_request.head.repo.merges_url", '-1'
    ) as payload_pull_request_head_repo_merges_url,
    coalesce(
        "payload.pull_request.head.repo.archive_url", '-1'
    ) as payload_pull_request_head_repo_archive_url,
    coalesce(
        "payload.pull_request.head.repo.downloads_url", '-1'
    ) as payload_pull_request_head_repo_downloads_url,
    coalesce(
        "payload.pull_request.head.repo.issues_url", '-1'
    ) as payload_pull_request_head_repo_issues_url,
    coalesce(
        "payload.pull_request.head.repo.pulls_url", '-1'
    ) as payload_pull_request_head_repo_pulls_url,
    coalesce(
        "payload.pull_request.head.repo.milestones_url", '-1'
    ) as payload_pull_request_head_repo_milestones_url,
    coalesce(
        "payload.pull_request.head.repo.notifications_url", '-1'
    ) as payload_pull_request_head_repo_notifications_url,
    coalesce(
        "payload.pull_request.head.repo.labels_url", '-1'
    ) as payload_pull_request_head_repo_labels_url,
    coalesce(
        "payload.pull_request.head.repo.releases_url", '-1'
    ) as payload_pull_request_head_repo_releases_url,
    coalesce(
        "payload.pull_request.head.repo.created_at", '-1'
    ) as payload_pull_request_head_repo_created_at,
    coalesce(
        "payload.pull_request.head.repo.updated_at", '-1'
    ) as payload_pull_request_head_repo_updated_at,
    coalesce(
        "payload.pull_request.head.repo.pushed_at", '-1'
    ) as payload_pull_request_head_repo_pushed_at,
    coalesce(
        "payload.pull_request.head.repo.git_url", '-1'
    ) as payload_pull_request_head_repo_git_url,
    coalesce(
        "payload.pull_request.head.repo.ssh_url", '-1'
    ) as payload_pull_request_head_repo_ssh_url,
    coalesce(
        "payload.pull_request.head.repo.clone_url", '-1'
    ) as payload_pull_request_head_repo_clone_url,
    coalesce(
        "payload.pull_request.head.repo.svn_url", '-1'
    ) as payload_pull_request_head_repo_svn_url,
    coalesce(
        "payload.pull_request.head.repo.homepage", '-1'
    ) as payload_pull_request_head_repo_homepage,
    coalesce(
        "payload.pull_request.head.repo.size", '-1'
    ) as payload_pull_request_head_repo_size,
    coalesce(
        "payload.pull_request.head.repo.stargazers_count", '-1'
    ) as payload_pull_request_head_repo_stargazers_count,
    coalesce(
        "payload.pull_request.head.repo.watchers_count", '-1'
    ) as payload_pull_request_head_repo_watchers_count,
    coalesce(
        "payload.pull_request.head.repo.language", '-1'
    ) as payload_pull_request_head_repo_language,
    "payload.pull_request.head.repo.has_issues"
    as payload_pull_request_head_repo_has_issues,
    "payload.pull_request.head.repo.has_downloads"
    as payload_pull_request_head_repo_has_downloads,
    "payload.pull_request.head.repo.has_wiki"
    as payload_pull_request_head_repo_has_wiki,
    "payload.pull_request.head.repo.has_pages"
    as payload_pull_request_head_repo_has_pages,
    coalesce(
        "payload.pull_request.head.repo.forks_count", '-1'
    ) as payload_pull_request_head_repo_forks_count,
    coalesce(
        "payload.pull_request.head.repo.mirror_url", '-1'
    ) as payload_pull_request_head_repo_mirror_url,
    coalesce(
        "payload.pull_request.head.repo.open_issues_count", '-1'
    ) as payload_pull_request_head_repo_open_issues_count,
    coalesce(
        "payload.pull_request.head.repo.forks", '-1'
    ) as payload_pull_request_head_repo_forks,
    coalesce(
        "payload.pull_request.head.repo.open_issues", '-1'
    ) as payload_pull_request_head_repo_open_issues,
    coalesce(
        "payload.pull_request.head.repo.watchers", '-1'
    ) as payload_pull_request_head_repo_watchers,
    coalesce(
        "payload.pull_request.head.repo.default_branch", '-1'
    ) as payload_pull_request_head_repo_default_branch,
    coalesce(
        "payload.pull_request.base.label", '-1'
    ) as payload_pull_request_base_label,
    coalesce("payload.pull_request.base.ref", '-1') as payload_pull_request_base_ref,
    coalesce("payload.pull_request.base.sha", '-1') as payload_pull_request_base_sha,
    coalesce(
        "payload.pull_request.base.user.login", '-1'
    ) as payload_pull_request_base_user_login,
    coalesce(
        "payload.pull_request.base.user.id", '-1'
    ) as payload_pull_request_base_user_id,
    coalesce(
        "payload.pull_request.base.user.avatar_url", '-1'
    ) as payload_pull_request_base_user_avatar_url,
    coalesce(
        "payload.pull_request.base.user.gravatar_id", '-1'
    ) as payload_pull_request_base_user_gravatar_id,
    coalesce(
        "payload.pull_request.base.user.url", '-1'
    ) as payload_pull_request_base_user_url,
    coalesce(
        "payload.pull_request.base.user.html_url", '-1'
    ) as payload_pull_request_base_user_html_url,
    coalesce(
        "payload.pull_request.base.user.followers_url", '-1'
    ) as payload_pull_request_base_user_followers_url,
    coalesce(
        "payload.pull_request.base.user.following_url", '-1'
    ) as payload_pull_request_base_user_following_url,
    coalesce(
        "payload.pull_request.base.user.gists_url", '-1'
    ) as payload_pull_request_base_user_gists_url,
    coalesce(
        "payload.pull_request.base.user.starred_url", '-1'
    ) as payload_pull_request_base_user_starred_url,
    coalesce(
        "payload.pull_request.base.user.subscriptions_url", '-1'
    ) as payload_pull_request_base_user_subscriptions_url,
    coalesce(
        "payload.pull_request.base.user.organizations_url", '-1'
    ) as payload_pull_request_base_user_organizations_url,
    coalesce(
        "payload.pull_request.base.user.repos_url", '-1'
    ) as payload_pull_request_base_user_repos_url,
    coalesce(
        "payload.pull_request.base.user.events_url", '-1'
    ) as payload_pull_request_base_user_events_url,
    coalesce(
        "payload.pull_request.base.user.received_events_url", '-1'
    ) as payload_pull_request_base_user_received_events_url,
    coalesce(
        "payload.pull_request.base.user.type", '-1'
    ) as payload_pull_request_base_user_type,
    "payload.pull_request.base.user.site_admin"
    as payload_pull_request_base_user_site_admin,
    coalesce(
        "payload.pull_request.base.repo.id", '-1'
    ) as payload_pull_request_base_repo_id,
    coalesce(
        "payload.pull_request.base.repo.name", '-1'
    ) as payload_pull_request_base_repo_name,
    coalesce(
        "payload.pull_request.base.repo.full_name", '-1'
    ) as payload_pull_request_base_repo_full_name,
    coalesce(
        "payload.pull_request.base.repo.owner.login", '-1'
    ) as payload_pull_request_base_repo_owner_login,
    coalesce(
        "payload.pull_request.base.repo.owner.id", '-1'
    ) as payload_pull_request_base_repo_owner_id,
    coalesce(
        "payload.pull_request.base.repo.owner.avatar_url", '-1'
    ) as payload_pull_request_base_repo_owner_avatar_url,
    coalesce(
        "payload.pull_request.base.repo.owner.gravatar_id", '-1'
    ) as payload_pull_request_base_repo_owner_gravatar_id,
    coalesce(
        "payload.pull_request.base.repo.owner.url", '-1'
    ) as payload_pull_request_base_repo_owner_url,
    coalesce(
        "payload.pull_request.base.repo.owner.html_url", '-1'
    ) as payload_pull_request_base_repo_owner_html_url,
    coalesce(
        "payload.pull_request.base.repo.owner.followers_url", '-1'
    ) as payload_pull_request_base_repo_owner_followers_url,
    coalesce(
        "payload.pull_request.base.repo.owner.following_url", '-1'
    ) as payload_pull_request_base_repo_owner_following_url,
    coalesce(
        "payload.pull_request.base.repo.owner.gists_url", '-1'
    ) as payload_pull_request_base_repo_owner_gists_url,
    coalesce(
        "payload.pull_request.base.repo.owner.starred_url", '-1'
    ) as payload_pull_request_base_repo_owner_starred_url,
    coalesce(
        "payload.pull_request.base.repo.owner.subscriptions_url", '-1'
    ) as payload_pull_request_base_repo_owner_subscriptions_url,
    coalesce(
        "payload.pull_request.base.repo.owner.organizations_url", '-1'
    ) as payload_pull_request_base_repo_owner_organizations_url,
    coalesce(
        "payload.pull_request.base.repo.owner.repos_url", '-1'
    ) as payload_pull_request_base_repo_owner_repos_url,
    coalesce(
        "payload.pull_request.base.repo.owner.events_url", '-1'
    ) as payload_pull_request_base_repo_owner_events_url,
    coalesce(
        "payload.pull_request.base.repo.owner.received_events_url", '-1'
    ) as payload_pull_request_base_repo_owner_received_events_url,
    coalesce(
        "payload.pull_request.base.repo.owner.type", '-1'
    ) as payload_pull_request_base_repo_owner_type,
    "payload.pull_request.base.repo.owner.site_admin"
    as payload_pull_request_base_repo_owner_site_admin,
    "payload.pull_request.base.repo.private" as payload_pull_request_base_repo_private,
    coalesce(
        "payload.pull_request.base.repo.html_url", '-1'
    ) as payload_pull_request_base_repo_html_url,
    coalesce(
        "payload.pull_request.base.repo.description", '-1'
    ) as payload_pull_request_base_repo_description,
    "payload.pull_request.base.repo.fork" as payload_pull_request_base_repo_fork,
    coalesce(
        "payload.pull_request.base.repo.url", '-1'
    ) as payload_pull_request_base_repo_url,
    coalesce(
        "payload.pull_request.base.repo.forks_url", '-1'
    ) as payload_pull_request_base_repo_forks_url,
    coalesce(
        "payload.pull_request.base.repo.keys_url", '-1'
    ) as payload_pull_request_base_repo_keys_url,
    coalesce(
        "payload.pull_request.base.repo.collaborators_url", '-1'
    ) as payload_pull_request_base_repo_collaborators_url,
    coalesce(
        "payload.pull_request.base.repo.teams_url", '-1'
    ) as payload_pull_request_base_repo_teams_url,
    coalesce(
        "payload.pull_request.base.repo.hooks_url", '-1'
    ) as payload_pull_request_base_repo_hooks_url,
    coalesce(
        "payload.pull_request.base.repo.issue_events_url", '-1'
    ) as payload_pull_request_base_repo_issue_events_url,
    coalesce(
        "payload.pull_request.base.repo.events_url", '-1'
    ) as payload_pull_request_base_repo_events_url,
    coalesce(
        "payload.pull_request.base.repo.assignees_url", '-1'
    ) as payload_pull_request_base_repo_assignees_url,
    coalesce(
        "payload.pull_request.base.repo.branches_url", '-1'
    ) as payload_pull_request_base_repo_branches_url,
    coalesce(
        "payload.pull_request.base.repo.tags_url", '-1'
    ) as payload_pull_request_base_repo_tags_url,
    coalesce(
        "payload.pull_request.base.repo.blobs_url", '-1'
    ) as payload_pull_request_base_repo_blobs_url,
    coalesce(
        "payload.pull_request.base.repo.git_tags_url", '-1'
    ) as payload_pull_request_base_repo_git_tags_url,
    coalesce(
        "payload.pull_request.base.repo.git_refs_url", '-1'
    ) as payload_pull_request_base_repo_git_refs_url,
    coalesce(
        "payload.pull_request.base.repo.trees_url", '-1'
    ) as payload_pull_request_base_repo_trees_url,
    coalesce(
        "payload.pull_request.base.repo.statuses_url", '-1'
    ) as payload_pull_request_base_repo_statuses_url,
    coalesce(
        "payload.pull_request.base.repo.languages_url", '-1'
    ) as payload_pull_request_base_repo_languages_url,
    coalesce(
        "payload.pull_request.base.repo.stargazers_url", '-1'
    ) as payload_pull_request_base_repo_stargazers_url,
    coalesce(
        "payload.pull_request.base.repo.contributors_url", '-1'
    ) as payload_pull_request_base_repo_contributors_url,
    coalesce(
        "payload.pull_request.base.repo.subscribers_url", '-1'
    ) as payload_pull_request_base_repo_subscribers_url,
    coalesce(
        "payload.pull_request.base.repo.subscription_url", '-1'
    ) as payload_pull_request_base_repo_subscription_url,
    coalesce(
        "payload.pull_request.base.repo.commits_url", '-1'
    ) as payload_pull_request_base_repo_commits_url,
    coalesce(
        "payload.pull_request.base.repo.git_commits_url", '-1'
    ) as payload_pull_request_base_repo_git_commits_url,
    coalesce(
        "payload.pull_request.base.repo.comments_url", '-1'
    ) as payload_pull_request_base_repo_comments_url,
    coalesce(
        "payload.pull_request.base.repo.issue_comment_url", '-1'
    ) as payload_pull_request_base_repo_issue_comment_url,
    coalesce(
        "payload.pull_request.base.repo.contents_url", '-1'
    ) as payload_pull_request_base_repo_contents_url,
    coalesce(
        "payload.pull_request.base.repo.compare_url", '-1'
    ) as payload_pull_request_base_repo_compare_url,
    coalesce(
        "payload.pull_request.base.repo.merges_url", '-1'
    ) as payload_pull_request_base_repo_merges_url,
    coalesce(
        "payload.pull_request.base.repo.archive_url", '-1'
    ) as payload_pull_request_base_repo_archive_url,
    coalesce(
        "payload.pull_request.base.repo.downloads_url", '-1'
    ) as payload_pull_request_base_repo_downloads_url,
    coalesce(
        "payload.pull_request.base.repo.issues_url", '-1'
    ) as payload_pull_request_base_repo_issues_url,
    coalesce(
        "payload.pull_request.base.repo.pulls_url", '-1'
    ) as payload_pull_request_base_repo_pulls_url,
    coalesce(
        "payload.pull_request.base.repo.milestones_url", '-1'
    ) as payload_pull_request_base_repo_milestones_url,
    coalesce(
        "payload.pull_request.base.repo.notifications_url", '-1'
    ) as payload_pull_request_base_repo_notifications_url,
    coalesce(
        "payload.pull_request.base.repo.labels_url", '-1'
    ) as payload_pull_request_base_repo_labels_url,
    coalesce(
        "payload.pull_request.base.repo.releases_url", '-1'
    ) as payload_pull_request_base_repo_releases_url,
    coalesce(
        "payload.pull_request.base.repo.created_at", '-1'
    ) as payload_pull_request_base_repo_created_at,
    coalesce(
        "payload.pull_request.base.repo.updated_at", '-1'
    ) as payload_pull_request_base_repo_updated_at,
    coalesce(
        "payload.pull_request.base.repo.pushed_at", '-1'
    ) as payload_pull_request_base_repo_pushed_at,
    coalesce(
        "payload.pull_request.base.repo.git_url", '-1'
    ) as payload_pull_request_base_repo_git_url,
    coalesce(
        "payload.pull_request.base.repo.ssh_url", '-1'
    ) as payload_pull_request_base_repo_ssh_url,
    coalesce(
        "payload.pull_request.base.repo.clone_url", '-1'
    ) as payload_pull_request_base_repo_clone_url,
    coalesce(
        "payload.pull_request.base.repo.svn_url", '-1'
    ) as payload_pull_request_base_repo_svn_url,
    coalesce(
        "payload.pull_request.base.repo.homepage", '-1'
    ) as payload_pull_request_base_repo_homepage,
    coalesce(
        "payload.pull_request.base.repo.size", '-1'
    ) as payload_pull_request_base_repo_size,
    coalesce(
        "payload.pull_request.base.repo.stargazers_count", '-1'
    ) as payload_pull_request_base_repo_stargazers_count,
    coalesce(
        "payload.pull_request.base.repo.watchers_count", '-1'
    ) as payload_pull_request_base_repo_watchers_count,
    coalesce(
        "payload.pull_request.base.repo.language", '-1'
    ) as payload_pull_request_base_repo_language,
    "payload.pull_request.base.repo.has_issues"
    as payload_pull_request_base_repo_has_issues,
    "payload.pull_request.base.repo.has_downloads"
    as payload_pull_request_base_repo_has_downloads,
    "payload.pull_request.base.repo.has_wiki"
    as payload_pull_request_base_repo_has_wiki,
    "payload.pull_request.base.repo.has_pages"
    as payload_pull_request_base_repo_has_pages,
    coalesce(
        "payload.pull_request.base.repo.forks_count", '-1'
    ) as payload_pull_request_base_repo_forks_count,
    coalesce(
        "payload.pull_request.base.repo.mirror_url", '-1'
    ) as payload_pull_request_base_repo_mirror_url,
    coalesce(
        "payload.pull_request.base.repo.open_issues_count", '-1'
    ) as payload_pull_request_base_repo_open_issues_count,
    coalesce(
        "payload.pull_request.base.repo.forks", '-1'
    ) as payload_pull_request_base_repo_forks,
    coalesce(
        "payload.pull_request.base.repo.open_issues", '-1'
    ) as payload_pull_request_base_repo_open_issues,
    coalesce(
        "payload.pull_request.base.repo.watchers", '-1'
    ) as payload_pull_request_base_repo_watchers,
    coalesce(
        "payload.pull_request.base.repo.default_branch", '-1'
    ) as payload_pull_request_base_repo_default_branch,
    coalesce(
        "payload.pull_request._links.self.href", '-1'
    ) as payload_pull_request__links_self_href,
    coalesce(
        "payload.pull_request._links.html.href", '-1'
    ) as payload_pull_request__links_html_href,
    coalesce(
        "payload.pull_request._links.issue.href", '-1'
    ) as payload_pull_request__links_issue_href,
    coalesce(
        "payload.pull_request._links.comments.href", '-1'
    ) as payload_pull_request__links_comments_href,
    coalesce(
        "payload.pull_request._links.review_comments.href", '-1'
    ) as payload_pull_request__links_review_comments_href,
    coalesce(
        "payload.pull_request._links.review_comment.href", '-1'
    ) as payload_pull_request__links_review_comment_href,
    coalesce(
        "payload.pull_request._links.commits.href", '-1'
    ) as payload_pull_request__links_commits_href,
    coalesce("org.avatar_url", '-1') as org_avatar_url,
    coalesce("org.url", '-1') as org_url,
    coalesce("org.gravatar_id", '-1') as org_gravatar_id,
    coalesce("org.login", '-1') as org_login,
    coalesce("org.id", '-1') as org_id,
    coalesce(
        "payload.comment.user.received_events_url", '-1'
    ) as payload_comment_user_received_events_url,
    coalesce("payload.comment.user.type", '-1') as payload_comment_user_type,
    coalesce("payload.comment.body", '-1') as payload_comment_body,
    coalesce("payload.comment.updated_at", '-1') as payload_comment_updated_at,
    coalesce("payload.comment.created_at", '-1') as payload_comment_created_at,
    coalesce("payload.comment.commit_id", '-1') as payload_comment_commit_id,
    coalesce("payload.comment.path", '-1') as payload_comment_path,
    coalesce("payload.comment.line", '-1') as payload_comment_line,
    coalesce("payload.comment.position", '-1') as payload_comment_position,
    "payload.comment.user.site_admin" as payload_comment_user_site_admin,
    coalesce("payload.comment.url", '-1') as payload_comment_url,
    coalesce("payload.comment.html_url", '-1') as payload_comment_html_url,
    coalesce("payload.comment.id", '-1') as payload_comment_id,
    coalesce("payload.comment.user.login", '-1') as payload_comment_user_login,
    coalesce("payload.comment.user.id", '-1') as payload_comment_user_id,
    coalesce(
        "payload.comment.user.avatar_url", '-1'
    ) as payload_comment_user_avatar_url,
    coalesce(
        "payload.comment.user.gravatar_id", '-1'
    ) as payload_comment_user_gravatar_id,
    coalesce("payload.comment.user.url", '-1') as payload_comment_user_url,
    coalesce("payload.comment.user.html_url", '-1') as payload_comment_user_html_url,
    coalesce(
        "payload.comment.user.followers_url", '-1'
    ) as payload_comment_user_followers_url,
    coalesce(
        "payload.comment.user.following_url", '-1'
    ) as payload_comment_user_following_url,
    coalesce("payload.comment.user.gists_url", '-1') as payload_comment_user_gists_url,
    coalesce(
        "payload.comment.user.starred_url", '-1'
    ) as payload_comment_user_starred_url,
    coalesce(
        "payload.comment.user.subscriptions_url", '-1'
    ) as payload_comment_user_subscriptions_url,
    coalesce(
        "payload.comment.user.organizations_url", '-1'
    ) as payload_comment_user_organizations_url,
    coalesce("payload.comment.user.repos_url", '-1') as payload_comment_user_repos_url,
    coalesce(
        "payload.comment.user.events_url", '-1'
    ) as payload_comment_user_events_url,
    coalesce("payload.issue.assignee", '-1') as payload_issue_assignee,
    "payload.issue.locked" as payload_issue_locked,
    coalesce("payload.issue.state", '-1') as payload_issue_state,
    coalesce("payload.issue.labels", '-1') as payload_issue_labels,
    "payload.issue.user.site_admin" as payload_issue_user_site_admin,
    coalesce("payload.issue.milestone", '-1') as payload_issue_milestone,
    coalesce("payload.issue.comments", '-1') as payload_issue_comments,
    coalesce("payload.issue.body", '-1') as payload_issue_body,
    coalesce("payload.issue.closed_at", '-1') as payload_issue_closed_at,
    coalesce("payload.issue.updated_at", '-1') as payload_issue_updated_at,
    coalesce("payload.issue.created_at", '-1') as payload_issue_created_at,
    coalesce("payload.issue.url", '-1') as payload_issue_url,
    coalesce("payload.issue.labels_url", '-1') as payload_issue_labels_url,
    coalesce("payload.issue.comments_url", '-1') as payload_issue_comments_url,
    coalesce("payload.issue.events_url", '-1') as payload_issue_events_url,
    coalesce("payload.issue.html_url", '-1') as payload_issue_html_url,
    coalesce("payload.issue.id", '-1') as payload_issue_id,
    coalesce("payload.issue.number", '-1') as payload_issue_number,
    coalesce("payload.issue.title", '-1') as payload_issue_title,
    coalesce("payload.issue.user.login", '-1') as payload_issue_user_login,
    coalesce("payload.issue.user.id", '-1') as payload_issue_user_id,
    coalesce("payload.issue.user.avatar_url", '-1') as payload_issue_user_avatar_url,
    coalesce("payload.issue.user.gravatar_id", '-1') as payload_issue_user_gravatar_id,
    coalesce("payload.issue.user.url", '-1') as payload_issue_user_url,
    coalesce("payload.issue.user.html_url", '-1') as payload_issue_user_html_url,
    coalesce(
        "payload.issue.user.followers_url", '-1'
    ) as payload_issue_user_followers_url,
    coalesce(
        "payload.issue.user.following_url", '-1'
    ) as payload_issue_user_following_url,
    coalesce("payload.issue.user.gists_url", '-1') as payload_issue_user_gists_url,
    coalesce("payload.issue.user.starred_url", '-1') as payload_issue_user_starred_url,
    coalesce(
        "payload.issue.user.subscriptions_url", '-1'
    ) as payload_issue_user_subscriptions_url,
    coalesce(
        "payload.issue.user.organizations_url", '-1'
    ) as payload_issue_user_organizations_url,
    coalesce("payload.issue.user.repos_url", '-1') as payload_issue_user_repos_url,
    coalesce("payload.issue.user.events_url", '-1') as payload_issue_user_events_url,
    coalesce(
        "payload.issue.user.received_events_url", '-1'
    ) as payload_issue_user_received_events_url,
    coalesce("payload.issue.user.type", '-1') as payload_issue_user_type,
    coalesce("payload.pages", '-1') as payload_pages,
    coalesce("payload.comment.issue_url", '-1') as payload_comment_issue_url,
    coalesce("payload.issue.pull_request.url", '-1') as payload_issue_pull_request_url,
    coalesce(
        "payload.issue.pull_request.html_url", '-1'
    ) as payload_issue_pull_request_html_url,
    coalesce(
        "payload.issue.pull_request.patch_url", '-1'
    ) as payload_issue_pull_request_patch_url,
    coalesce(
        "payload.issue.pull_request.diff_url", '-1'
    ) as payload_issue_pull_request_diff_url,
    coalesce(
        "payload.pull_request.merged_by.repos_url", '-1'
    ) as payload_pull_request_merged_by_repos_url,
    coalesce(
        "payload.pull_request.merged_by.events_url", '-1'
    ) as payload_pull_request_merged_by_events_url,
    coalesce(
        "payload.pull_request.merged_by.starred_url", '-1'
    ) as payload_pull_request_merged_by_starred_url,
    coalesce(
        "payload.pull_request.merged_by.gists_url", '-1'
    ) as payload_pull_request_merged_by_gists_url,
    coalesce(
        "payload.pull_request.merged_by.following_url", '-1'
    ) as payload_pull_request_merged_by_following_url,
    coalesce(
        "payload.pull_request.merged_by.followers_url", '-1'
    ) as payload_pull_request_merged_by_followers_url,
    coalesce(
        "payload.pull_request.merged_by.html_url", '-1'
    ) as payload_pull_request_merged_by_html_url,
    coalesce(
        "payload.pull_request.merged_by.url", '-1'
    ) as payload_pull_request_merged_by_url,
    "payload.pull_request.merged_by.site_admin"
    as payload_pull_request_merged_by_site_admin,
    coalesce(
        "payload.pull_request.merged_by.type", '-1'
    ) as payload_pull_request_merged_by_type,
    coalesce(
        "payload.pull_request.merged_by.received_events_url", '-1'
    ) as payload_pull_request_merged_by_received_events_url,
    coalesce(
        "payload.pull_request.merged_by.id", '-1'
    ) as payload_pull_request_merged_by_id,
    coalesce(
        "payload.pull_request.merged_by.login", '-1'
    ) as payload_pull_request_merged_by_login,
    coalesce(
        "payload.pull_request.merged_by.gravatar_id", '-1'
    ) as payload_pull_request_merged_by_gravatar_id,
    coalesce(
        "payload.pull_request.merged_by.avatar_url", '-1'
    ) as payload_pull_request_merged_by_avatar_url,
    coalesce(
        "payload.pull_request.merged_by.subscriptions_url", '-1'
    ) as payload_pull_request_merged_by_subscriptions_url,
    coalesce(
        "payload.pull_request.merged_by.organizations_url", '-1'
    ) as payload_pull_request_merged_by_organizations_url,
    coalesce("payload.member.following_url", '-1') as payload_member_following_url,
    coalesce("payload.member.gists_url", '-1') as payload_member_gists_url,
    coalesce("payload.member.starred_url", '-1') as payload_member_starred_url,
    "payload.member.site_admin" as payload_member_site_admin,
    coalesce("payload.member.type", '-1') as payload_member_type,
    coalesce(
        "payload.member.received_events_url", '-1'
    ) as payload_member_received_events_url,
    coalesce("payload.member.events_url", '-1') as payload_member_events_url,
    coalesce("payload.member.repos_url", '-1') as payload_member_repos_url,
    coalesce(
        "payload.member.organizations_url", '-1'
    ) as payload_member_organizations_url,
    coalesce(
        "payload.member.subscriptions_url", '-1'
    ) as payload_member_subscriptions_url,
    coalesce("payload.member.login", '-1') as payload_member_login,
    coalesce("payload.member.id", '-1') as payload_member_id,
    coalesce("payload.member.avatar_url", '-1') as payload_member_avatar_url,
    coalesce("payload.member.gravatar_id", '-1') as payload_member_gravatar_id,
    coalesce("payload.member.url", '-1') as payload_member_url,
    coalesce("payload.member.html_url", '-1') as payload_member_html_url,
    coalesce("payload.member.followers_url", '-1') as payload_member_followers_url,
    "payload.forkee.has_wiki" as payload_forkee_has_wiki,
    "payload.forkee.has_pages" as payload_forkee_has_pages,
    "payload.forkee.public" as payload_forkee_public,
    coalesce("payload.forkee.default_branch", '-1') as payload_forkee_default_branch,
    coalesce("payload.forkee.watchers", '-1') as payload_forkee_watchers,
    coalesce("payload.forkee.open_issues", '-1') as payload_forkee_open_issues,
    coalesce("payload.forkee.forks", '-1') as payload_forkee_forks,
    coalesce(
        "payload.forkee.open_issues_count", '-1'
    ) as payload_forkee_open_issues_count,
    coalesce("payload.forkee.mirror_url", '-1') as payload_forkee_mirror_url,
    coalesce("payload.forkee.forks_count", '-1') as payload_forkee_forks_count,
    coalesce("payload.forkee.id", '-1') as payload_forkee_id,
    coalesce("payload.forkee.name", '-1') as payload_forkee_name,
    coalesce("payload.forkee.full_name", '-1') as payload_forkee_full_name,
    coalesce("payload.forkee.owner.login", '-1') as payload_forkee_owner_login,
    coalesce("payload.forkee.owner.id", '-1') as payload_forkee_owner_id,
    coalesce(
        "payload.forkee.owner.avatar_url", '-1'
    ) as payload_forkee_owner_avatar_url,
    coalesce(
        "payload.forkee.owner.gravatar_id", '-1'
    ) as payload_forkee_owner_gravatar_id,
    coalesce("payload.forkee.owner.url", '-1') as payload_forkee_owner_url,
    coalesce("payload.forkee.owner.html_url", '-1') as payload_forkee_owner_html_url,
    coalesce(
        "payload.forkee.owner.followers_url", '-1'
    ) as payload_forkee_owner_followers_url,
    coalesce(
        "payload.forkee.owner.following_url", '-1'
    ) as payload_forkee_owner_following_url,
    coalesce("payload.forkee.owner.gists_url", '-1') as payload_forkee_owner_gists_url,
    coalesce(
        "payload.forkee.owner.starred_url", '-1'
    ) as payload_forkee_owner_starred_url,
    coalesce(
        "payload.forkee.owner.subscriptions_url", '-1'
    ) as payload_forkee_owner_subscriptions_url,
    coalesce(
        "payload.forkee.owner.organizations_url", '-1'
    ) as payload_forkee_owner_organizations_url,
    coalesce("payload.forkee.owner.repos_url", '-1') as payload_forkee_owner_repos_url,
    coalesce(
        "payload.forkee.owner.events_url", '-1'
    ) as payload_forkee_owner_events_url,
    coalesce(
        "payload.forkee.owner.received_events_url", '-1'
    ) as payload_forkee_owner_received_events_url,
    coalesce("payload.forkee.owner.type", '-1') as payload_forkee_owner_type,
    "payload.forkee.owner.site_admin" as payload_forkee_owner_site_admin,
    "payload.forkee.private" as payload_forkee_private,
    coalesce("payload.forkee.html_url", '-1') as payload_forkee_html_url,
    coalesce("payload.forkee.description", '-1') as payload_forkee_description,
    "payload.forkee.fork" as payload_forkee_fork,
    coalesce("payload.forkee.url", '-1') as payload_forkee_url,
    coalesce("payload.forkee.forks_url", '-1') as payload_forkee_forks_url,
    coalesce("payload.forkee.keys_url", '-1') as payload_forkee_keys_url,
    coalesce(
        "payload.forkee.collaborators_url", '-1'
    ) as payload_forkee_collaborators_url,
    coalesce("payload.forkee.teams_url", '-1') as payload_forkee_teams_url,
    coalesce("payload.forkee.hooks_url", '-1') as payload_forkee_hooks_url,
    coalesce(
        "payload.forkee.issue_events_url", '-1'
    ) as payload_forkee_issue_events_url,
    coalesce("payload.forkee.events_url", '-1') as payload_forkee_events_url,
    coalesce("payload.forkee.assignees_url", '-1') as payload_forkee_assignees_url,
    coalesce("payload.forkee.branches_url", '-1') as payload_forkee_branches_url,
    coalesce("payload.forkee.tags_url", '-1') as payload_forkee_tags_url,
    coalesce("payload.forkee.blobs_url", '-1') as payload_forkee_blobs_url,
    coalesce("payload.forkee.git_tags_url", '-1') as payload_forkee_git_tags_url,
    coalesce("payload.forkee.git_refs_url", '-1') as payload_forkee_git_refs_url,
    coalesce("payload.forkee.trees_url", '-1') as payload_forkee_trees_url,
    coalesce("payload.forkee.statuses_url", '-1') as payload_forkee_statuses_url,
    coalesce("payload.forkee.languages_url", '-1') as payload_forkee_languages_url,
    coalesce("payload.forkee.stargazers_url", '-1') as payload_forkee_stargazers_url,
    coalesce(
        "payload.forkee.contributors_url", '-1'
    ) as payload_forkee_contributors_url,
    coalesce("payload.forkee.subscribers_url", '-1') as payload_forkee_subscribers_url,
    coalesce(
        "payload.forkee.subscription_url", '-1'
    ) as payload_forkee_subscription_url,
    coalesce("payload.forkee.commits_url", '-1') as payload_forkee_commits_url,
    coalesce("payload.forkee.git_commits_url", '-1') as payload_forkee_git_commits_url,
    coalesce("payload.forkee.comments_url", '-1') as payload_forkee_comments_url,
    coalesce(
        "payload.forkee.issue_comment_url", '-1'
    ) as payload_forkee_issue_comment_url,
    coalesce("payload.forkee.contents_url", '-1') as payload_forkee_contents_url,
    coalesce("payload.forkee.compare_url", '-1') as payload_forkee_compare_url,
    coalesce("payload.forkee.merges_url", '-1') as payload_forkee_merges_url,
    coalesce("payload.forkee.archive_url", '-1') as payload_forkee_archive_url,
    coalesce("payload.forkee.downloads_url", '-1') as payload_forkee_downloads_url,
    coalesce("payload.forkee.issues_url", '-1') as payload_forkee_issues_url,
    coalesce("payload.forkee.pulls_url", '-1') as payload_forkee_pulls_url,
    coalesce("payload.forkee.milestones_url", '-1') as payload_forkee_milestones_url,
    coalesce(
        "payload.forkee.notifications_url", '-1'
    ) as payload_forkee_notifications_url,
    coalesce("payload.forkee.labels_url", '-1') as payload_forkee_labels_url,
    coalesce("payload.forkee.releases_url", '-1') as payload_forkee_releases_url,
    coalesce("payload.forkee.created_at", '-1') as payload_forkee_created_at,
    coalesce("payload.forkee.updated_at", '-1') as payload_forkee_updated_at,
    coalesce("payload.forkee.pushed_at", '-1') as payload_forkee_pushed_at,
    coalesce("payload.forkee.git_url", '-1') as payload_forkee_git_url,
    coalesce("payload.forkee.ssh_url", '-1') as payload_forkee_ssh_url,
    coalesce("payload.forkee.clone_url", '-1') as payload_forkee_clone_url,
    coalesce("payload.forkee.svn_url", '-1') as payload_forkee_svn_url,
    coalesce("payload.forkee.homepage", '-1') as payload_forkee_homepage,
    coalesce("payload.forkee.size", '-1') as payload_forkee_size,
    coalesce(
        "payload.forkee.stargazers_count", '-1'
    ) as payload_forkee_stargazers_count,
    coalesce("payload.forkee.watchers_count", '-1') as payload_forkee_watchers_count,
    coalesce("payload.forkee.language", '-1') as payload_forkee_language,
    "payload.forkee.has_issues" as payload_forkee_has_issues,
    "payload.forkee.has_downloads" as payload_forkee_has_downloads,
    coalesce(
        "payload.comment.original_position", '-1'
    ) as payload_comment_original_position,
    coalesce(
        "payload.comment.original_commit_id", '-1'
    ) as payload_comment_original_commit_id,
    coalesce("payload.comment.diff_hunk", '-1') as payload_comment_diff_hunk,
    coalesce(
        "payload.comment.pull_request_url", '-1'
    ) as payload_comment_pull_request_url,
    coalesce(
        "payload.comment._links.pull_request.href", '-1'
    ) as payload_comment__links_pull_request_href,
    coalesce(
        "payload.comment._links.html.href", '-1'
    ) as payload_comment__links_html_href,
    coalesce(
        "payload.comment._links.self.href", '-1'
    ) as payload_comment__links_self_href,
    "payload.issue.assignee.site_admin" as payload_issue_assignee_site_admin,
    coalesce("payload.issue.assignee.type", '-1') as payload_issue_assignee_type,
    coalesce(
        "payload.issue.assignee.received_events_url", '-1'
    ) as payload_issue_assignee_received_events_url,
    coalesce(
        "payload.issue.assignee.events_url", '-1'
    ) as payload_issue_assignee_events_url,
    coalesce(
        "payload.issue.assignee.repos_url", '-1'
    ) as payload_issue_assignee_repos_url,
    coalesce(
        "payload.issue.assignee.following_url", '-1'
    ) as payload_issue_assignee_following_url,
    coalesce(
        "payload.issue.assignee.followers_url", '-1'
    ) as payload_issue_assignee_followers_url,
    coalesce(
        "payload.issue.assignee.html_url", '-1'
    ) as payload_issue_assignee_html_url,
    coalesce("payload.issue.assignee.url", '-1') as payload_issue_assignee_url,
    coalesce(
        "payload.issue.assignee.gravatar_id", '-1'
    ) as payload_issue_assignee_gravatar_id,
    coalesce(
        "payload.issue.assignee.avatar_url", '-1'
    ) as payload_issue_assignee_avatar_url,
    coalesce("payload.issue.assignee.id", '-1') as payload_issue_assignee_id,
    coalesce("payload.issue.assignee.login", '-1') as payload_issue_assignee_login,
    coalesce(
        "payload.issue.assignee.organizations_url", '-1'
    ) as payload_issue_assignee_organizations_url,
    coalesce(
        "payload.issue.assignee.subscriptions_url", '-1'
    ) as payload_issue_assignee_subscriptions_url,
    coalesce(
        "payload.issue.assignee.starred_url", '-1'
    ) as payload_issue_assignee_starred_url,
    coalesce(
        "payload.issue.assignee.gists_url", '-1'
    ) as payload_issue_assignee_gists_url,
    coalesce(
        "payload.release.author.events_url", '-1'
    ) as payload_release_author_events_url,
    coalesce(
        "payload.release.author.received_events_url", '-1'
    ) as payload_release_author_received_events_url,
    coalesce("payload.release.body", '-1') as payload_release_body,
    coalesce("payload.release.zipball_url", '-1') as payload_release_zipball_url,
    coalesce("payload.release.tarball_url", '-1') as payload_release_tarball_url,
    coalesce("payload.release.assets", '-1') as payload_release_assets,
    coalesce("payload.release.published_at", '-1') as payload_release_published_at,
    coalesce("payload.release.created_at", '-1') as payload_release_created_at,
    "payload.release.prerelease" as payload_release_prerelease,
    "payload.release.author.site_admin" as payload_release_author_site_admin,
    coalesce("payload.release.author.type", '-1') as payload_release_author_type,
    coalesce("payload.release.url", '-1') as payload_release_url,
    coalesce("payload.release.assets_url", '-1') as payload_release_assets_url,
    coalesce("payload.release.upload_url", '-1') as payload_release_upload_url,
    coalesce("payload.release.html_url", '-1') as payload_release_html_url,
    coalesce("payload.release.id", '-1') as payload_release_id,
    coalesce("payload.release.tag_name", '-1') as payload_release_tag_name,
    coalesce(
        "payload.release.target_commitish", '-1'
    ) as payload_release_target_commitish,
    coalesce("payload.release.name", '-1') as payload_release_name,
    "payload.release.draft" as payload_release_draft,
    coalesce("payload.release.author.login", '-1') as payload_release_author_login,
    coalesce("payload.release.author.id", '-1') as payload_release_author_id,
    coalesce(
        "payload.release.author.avatar_url", '-1'
    ) as payload_release_author_avatar_url,
    coalesce(
        "payload.release.author.gravatar_id", '-1'
    ) as payload_release_author_gravatar_id,
    coalesce("payload.release.author.url", '-1') as payload_release_author_url,
    coalesce(
        "payload.release.author.html_url", '-1'
    ) as payload_release_author_html_url,
    coalesce(
        "payload.release.author.followers_url", '-1'
    ) as payload_release_author_followers_url,
    coalesce(
        "payload.release.author.following_url", '-1'
    ) as payload_release_author_following_url,
    coalesce(
        "payload.release.author.gists_url", '-1'
    ) as payload_release_author_gists_url,
    coalesce(
        "payload.release.author.starred_url", '-1'
    ) as payload_release_author_starred_url,
    coalesce(
        "payload.release.author.subscriptions_url", '-1'
    ) as payload_release_author_subscriptions_url,
    coalesce(
        "payload.release.author.organizations_url", '-1'
    ) as payload_release_author_organizations_url,
    coalesce(
        "payload.release.author.repos_url", '-1'
    ) as payload_release_author_repos_url,
    coalesce(
        "payload.issue.milestone.closed_issues", '-1'
    ) as payload_issue_milestone_closed_issues,
    coalesce("payload.issue.milestone.state", '-1') as payload_issue_milestone_state,
    coalesce(
        "payload.issue.milestone.creator.repos_url", '-1'
    ) as payload_issue_milestone_creator_repos_url,
    coalesce(
        "payload.issue.milestone.creator.organizations_url", '-1'
    ) as payload_issue_milestone_creator_organizations_url,
    coalesce(
        "payload.issue.milestone.creator.subscriptions_url", '-1'
    ) as payload_issue_milestone_creator_subscriptions_url,
    coalesce(
        "payload.issue.milestone.creator.starred_url", '-1'
    ) as payload_issue_milestone_creator_starred_url,
    coalesce(
        "payload.issue.milestone.creator.events_url", '-1'
    ) as payload_issue_milestone_creator_events_url,
    coalesce(
        "payload.issue.milestone.closed_at", '-1'
    ) as payload_issue_milestone_closed_at,
    coalesce("payload.issue.milestone.due_on", '-1') as payload_issue_milestone_due_on,
    coalesce(
        "payload.issue.milestone.updated_at", '-1'
    ) as payload_issue_milestone_updated_at,
    coalesce(
        "payload.issue.milestone.created_at", '-1'
    ) as payload_issue_milestone_created_at,
    coalesce(
        "payload.issue.milestone.creator.gists_url", '-1'
    ) as payload_issue_milestone_creator_gists_url,
    coalesce(
        "payload.issue.milestone.creator.following_url", '-1'
    ) as payload_issue_milestone_creator_following_url,
    coalesce(
        "payload.issue.milestone.creator.followers_url", '-1'
    ) as payload_issue_milestone_creator_followers_url,
    coalesce(
        "payload.issue.milestone.creator.html_url", '-1'
    ) as payload_issue_milestone_creator_html_url,
    coalesce(
        "payload.issue.milestone.creator.url", '-1'
    ) as payload_issue_milestone_creator_url,
    coalesce(
        "payload.issue.milestone.creator.gravatar_id", '-1'
    ) as payload_issue_milestone_creator_gravatar_id,
    coalesce(
        "payload.issue.milestone.creator.avatar_url", '-1'
    ) as payload_issue_milestone_creator_avatar_url,
    coalesce(
        "payload.issue.milestone.creator.id", '-1'
    ) as payload_issue_milestone_creator_id,
    coalesce(
        "payload.issue.milestone.creator.login", '-1'
    ) as payload_issue_milestone_creator_login,
    coalesce(
        "payload.issue.milestone.description", '-1'
    ) as payload_issue_milestone_description,
    coalesce("payload.issue.milestone.title", '-1') as payload_issue_milestone_title,
    coalesce("payload.issue.milestone.number", '-1') as payload_issue_milestone_number,
    coalesce("payload.issue.milestone.id", '-1') as payload_issue_milestone_id,
    coalesce(
        "payload.issue.milestone.labels_url", '-1'
    ) as payload_issue_milestone_labels_url,
    coalesce("payload.issue.milestone.url", '-1') as payload_issue_milestone_url,
    coalesce(
        "payload.issue.milestone.creator.type", '-1'
    ) as payload_issue_milestone_creator_type,
    coalesce(
        "payload.issue.milestone.creator.received_events_url", '-1'
    ) as payload_issue_milestone_creator_received_events_url,
    "payload.issue.milestone.creator.site_admin"
    as payload_issue_milestone_creator_site_admin,
    coalesce(
        "payload.issue.milestone.open_issues", '-1'
    ) as payload_issue_milestone_open_issues,
    coalesce(
        "payload.pull_request.assignee.subscriptions_url", '-1'
    ) as payload_pull_request_assignee_subscriptions_url,
    coalesce(
        "payload.pull_request.assignee.starred_url", '-1'
    ) as payload_pull_request_assignee_starred_url,
    coalesce(
        "payload.pull_request.assignee.gists_url", '-1'
    ) as payload_pull_request_assignee_gists_url,
    coalesce(
        "payload.pull_request.assignee.following_url", '-1'
    ) as payload_pull_request_assignee_following_url,
    coalesce(
        "payload.pull_request.assignee.followers_url", '-1'
    ) as payload_pull_request_assignee_followers_url,
    coalesce(
        "payload.pull_request.assignee.gravatar_id", '-1'
    ) as payload_pull_request_assignee_gravatar_id,
    coalesce(
        "payload.pull_request.assignee.avatar_url", '-1'
    ) as payload_pull_request_assignee_avatar_url,
    coalesce(
        "payload.pull_request.assignee.repos_url", '-1'
    ) as payload_pull_request_assignee_repos_url,
    coalesce(
        "payload.pull_request.assignee.url", '-1'
    ) as payload_pull_request_assignee_url,
    coalesce(
        "payload.pull_request.assignee.html_url", '-1'
    ) as payload_pull_request_assignee_html_url,
    coalesce(
        "payload.pull_request.assignee.received_events_url", '-1'
    ) as payload_pull_request_assignee_received_events_url,
    coalesce(
        "payload.pull_request.assignee.login", '-1'
    ) as payload_pull_request_assignee_login,
    "payload.pull_request.assignee.site_admin"
    as payload_pull_request_assignee_site_admin,
    coalesce(
        "payload.pull_request.assignee.type", '-1'
    ) as payload_pull_request_assignee_type,
    coalesce(
        "payload.pull_request.assignee.events_url", '-1'
    ) as payload_pull_request_assignee_events_url,
    coalesce(
        "payload.pull_request.assignee.id", '-1'
    ) as payload_pull_request_assignee_id,
    coalesce(
        "payload.pull_request.assignee.organizations_url", '-1'
    ) as payload_pull_request_assignee_organizations_url,
    coalesce(
        "payload.pull_request.milestone.description", '-1'
    ) as payload_pull_request_milestone_description,
    coalesce(
        "payload.pull_request.milestone.title", '-1'
    ) as payload_pull_request_milestone_title,
    coalesce(
        "payload.pull_request.milestone.number", '-1'
    ) as payload_pull_request_milestone_number,
    coalesce(
        "payload.pull_request.milestone.id", '-1'
    ) as payload_pull_request_milestone_id,
    coalesce(
        "payload.pull_request.milestone.labels_url", '-1'
    ) as payload_pull_request_milestone_labels_url,
    coalesce(
        "payload.pull_request.milestone.due_on", '-1'
    ) as payload_pull_request_milestone_due_on,
    coalesce(
        "payload.pull_request.milestone.creator.starred_url", '-1'
    ) as payload_pull_request_milestone_creator_starred_url,
    coalesce(
        "payload.pull_request.milestone.creator.received_events_url", '-1'
    ) as payload_pull_request_milestone_creator_received_events_url,
    coalesce(
        "payload.pull_request.milestone.closed_at", '-1'
    ) as payload_pull_request_milestone_closed_at,
    coalesce(
        "payload.pull_request.milestone.url", '-1'
    ) as payload_pull_request_milestone_url,
    coalesce(
        "payload.pull_request.milestone.creator.gists_url", '-1'
    ) as payload_pull_request_milestone_creator_gists_url,
    coalesce(
        "payload.pull_request.milestone.state", '-1'
    ) as payload_pull_request_milestone_state,
    coalesce(
        "payload.pull_request.milestone.closed_issues", '-1'
    ) as payload_pull_request_milestone_closed_issues,
    coalesce(
        "payload.pull_request.milestone.open_issues", '-1'
    ) as payload_pull_request_milestone_open_issues,
    coalesce(
        "payload.pull_request.milestone.creator.organizations_url", '-1'
    ) as payload_pull_request_milestone_creator_organizations_url,
    coalesce(
        "payload.pull_request.milestone.creator.subscriptions_url", '-1'
    ) as payload_pull_request_milestone_creator_subscriptions_url,
    coalesce(
        "payload.pull_request.milestone.creator.events_url", '-1'
    ) as payload_pull_request_milestone_creator_events_url,
    coalesce(
        "payload.pull_request.milestone.creator.repos_url", '-1'
    ) as payload_pull_request_milestone_creator_repos_url,
    coalesce(
        "payload.pull_request.milestone.updated_at", '-1'
    ) as payload_pull_request_milestone_updated_at,
    coalesce(
        "payload.pull_request.milestone.created_at", '-1'
    ) as payload_pull_request_milestone_created_at,
    coalesce(
        "payload.pull_request.milestone.creator.type", '-1'
    ) as payload_pull_request_milestone_creator_type,
    "payload.pull_request.milestone.creator.site_admin"
    as payload_pull_request_milestone_creator_site_admin,
    coalesce(
        "payload.pull_request.milestone.creator.login", '-1'
    ) as payload_pull_request_milestone_creator_login,
    coalesce(
        "payload.pull_request.milestone.creator.id", '-1'
    ) as payload_pull_request_milestone_creator_id,
    coalesce(
        "payload.pull_request.milestone.creator.avatar_url", '-1'
    ) as payload_pull_request_milestone_creator_avatar_url,
    coalesce(
        "payload.pull_request.milestone.creator.gravatar_id", '-1'
    ) as payload_pull_request_milestone_creator_gravatar_id,
    coalesce(
        "payload.pull_request.milestone.creator.url", '-1'
    ) as payload_pull_request_milestone_creator_url,
    coalesce(
        "payload.pull_request.milestone.creator.html_url", '-1'
    ) as payload_pull_request_milestone_creator_html_url,
    coalesce(
        "payload.pull_request.milestone.creator.followers_url", '-1'
    ) as payload_pull_request_milestone_creator_followers_url,
    coalesce(
        "payload.pull_request.milestone.creator.following_url", '-1'
    ) as payload_pull_request_milestone_creator_following_url
from public.github_events
