# hydra-airflow-dbt-expectations
Local lab to run Airflow interacting with DBT Cloud to run on Hydra clusters.


Choose postgres as connection and provide your Hydra connection credentials for the target datawarehouse. The image below is an example of these creadentials, and they are available at https://dashboard.hydras.io. 

![](./img/hydra_conn.png) 

# The following are required to proceed:
## Install Kind
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.18.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind

## Install dependencies on Garuda:

```
pacman -Sy kubectl helm docker
sudo usermod -aG docker $USER
```

## Install dependencies on official sites:

### Kubectl

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

### HELM
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash


### Docker
curl -O https://download.docker.com/linux/static/stable/x86_64/docker-23.0.2.tgz
sudo usermod -aG docker $USER

## Configure docker 

systemctl start docker.service
systemctl start docker.socket

sudo systemctl daemon-reload


# Create Kind cluster

kind create cluster --name airflow
docker update --cpus=3 -m 12g --memory-swap -1 airflow-control-plane

# Create image with local dags
docker build --pull \
--build-arg CONN_DBT_CLOUD="dbt-cloud://{YOUR DBT CLOUD ACCOUNT}:{YOUR DBT CLOUD SECRET KEY}@" \
--build-arg CONN_HYDRA="The url connection to your Hydra database" \
--tag oci_airflow_dbt_hydra:1.0 ./airflow

kind load docker-image oci_airflow_dbt_hydra:1.0 -n airflow

# Add and update the apache-airflow repository
helm repo add apache-airflow https://airflow.apache.org && helm repo update

# Deploy it locally 
helm upgrade --install hydra-dbt apache-airflow/airflow \
--set images.airflow.repository=oci_airflow_dbt_hydra \
--set images.airflow.tag=1.0 \
--namespace hydra --create-namespace

# Serve the Airflow console UI 
kubectl port-forward svc/hydra-dbt-webserver 8080:8080 --namespace hydra

# Log into the Airflow UI console with the default login credentials:
```
Default Webserver (Airflow UI) Login credentials:
    username: admin
    password: admin
Default Postgres connection credentials:
    username: postgres
    password: postgres
    port: 5432
```
