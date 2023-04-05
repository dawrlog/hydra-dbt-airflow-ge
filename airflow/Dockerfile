FROM apache/airflow


ARG CONN_DBT_CLOUD
ARG CONN_HYDRA
ENV AIRFLOW_CONN_DBT_CLOUD_HYDRA=${CONN_DBT_CLOUD}
ENV AIRFLOW_CONN_HYDRA=${CONN_HYDRA}
COPY --chown=airflow:root ./dags/ /opt/airflow/dags 
COPY ./apache-airflow-providers-dbt-cloud-3.1.0.tar.gz /opt/airflow/
COPY ./apache-airflow-providers-http-4.2.0.tar.gz /opt/airflow/
COPY ./airflow-provider-great-expectations-0.2.6.tar.gz /opt/airflow/
RUN pip install --no-cache-dir --no-build-isolation --no-dependencies /opt/airflow/apache-airflow-providers-http-4.2.0.tar.gz
RUN pip install --no-cache-dir --no-build-isolation --no-dependencies /opt/airflow/apache-airflow-providers-dbt-cloud-3.1.0.tar.gz