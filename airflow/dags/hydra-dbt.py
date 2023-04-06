# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

from datetime import datetime

from airflow.models import DAG
from airflow.operators.dummy import DummyOperator
from airflow.providers.dbt.cloud.operators.dbt import (
    DbtCloudRunJobOperator,
)

with DAG(
    dag_id="hydra_dbt_demo",
    default_args={"dbt_cloud_conn_id": "dbt_cloud_hydra", "account_id": 159429},
    start_date=datetime(2021, 1, 1),
    schedule_interval=None,
    catchup=False,
) as dag:
    start = DummyOperator(task_id="start")
    end = DummyOperator(task_id="end")

    run_load_stg_gh_events_model = DbtCloudRunJobOperator(
        task_id="run_load_stg_gh_events",
        job_id=262905,
        check_interval=10,
        timeout=300,
    )


    test_stg_github_events = DbtCloudRunJobOperator(
        task_id="test_stg_github_events",
        job_id=262922,
        check_interval=10,
        timeout=300,
    )

    run_load_dim_gh_closed_actions = DbtCloudRunJobOperator(
        task_id="run_load_dim_gh_closed_actions",
        job_id=262919,
        check_interval=10,
        timeout=300,
    )

    test_dim_gh_closed_actions = DbtCloudRunJobOperator(
        task_id="test_dim_gh_closed_actions",
        job_id=262924,
        check_interval=10,
        timeout=300,
    )

    run_fct_gh_closed_amt = DbtCloudRunJobOperator(
        task_id="run_fct_gh_closed_amt",
        job_id=262925,
        check_interval=10,
        timeout=300,
    )

    test_fct_gh_closed_amt = DbtCloudRunJobOperator(
        task_id="test_fct_gh_closed_amt",
        job_id=262926,
        check_interval=10,
        timeout=300,
    )

    run_fct_gh_closed_lst = DbtCloudRunJobOperator(
        task_id="run_fct_gh_closed_lst",
        job_id=262927,
        check_interval=10,
        timeout=300,
    )

    test_fct_gh_closed_lst = DbtCloudRunJobOperator(
        task_id="test_fct_gh_closed_lst",
        job_id=262928,
        check_interval=10,
        timeout=300,
    )

    run_fct_gh_cmt = DbtCloudRunJobOperator(
        task_id="run_fct_gh_cmt",
        job_id=262929,
        check_interval=10,
        timeout=300,
    )

    test_fct_gh_cmt = DbtCloudRunJobOperator(
        task_id="test_fct_gh_cmt",
        job_id=262932,
        check_interval=10,
        timeout=300,
    )

    start >> run_load_stg_gh_events_model >> test_stg_github_events >> run_load_dim_gh_closed_actions >> test_dim_gh_closed_actions >> run_fct_gh_closed_amt >> test_fct_gh_closed_amt >> run_fct_gh_closed_lst >> test_fct_gh_closed_lst >> run_fct_gh_cmt >> test_fct_gh_cmt >> end