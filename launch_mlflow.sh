#! /bin/sh

# add tljh python bin to path, so mlflow can find gunicorn
export PATH="/opt/tljh/user/bin/:$PATH"

{% for var in extra_env_vars %}
    export '{{ var.name }}'="'{{ var.value }}'"
{% endfor %}

cd /opt/tljh/user/bin

./python3 mlflow server -h 0.0.0.0 \
        --backend-store-uri sqlite:////mlflow/mlflow.db \
        --default-artifact-root {{ mlflow_artifact_storage }}
