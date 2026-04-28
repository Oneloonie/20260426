#!/bin/bash

# Restore Airflow connections and variables
echo "Restoring Airflow connections and variables..."

docker exec -i airflow-airflow-webserver-1 \
    airflow connections import /opt/airflow/connections.json

docker exec -i airflow-airflow-webserver-1 \
    airflow variables import /opt/airflow/variables.json

echo "Restore complete."
