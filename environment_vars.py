c.Spawner.environment = {
        'MLFLOW_TRACKING_URI': 'http://localhost:5000',
        # 'MLFLOW_TRACKING_USERNAME': '{{ mlflow_user }}',
        # 'MLFLOW_TRACKING_PASSWORD': '{{ mlflow_pass }}',
        {% for var in extra_env_vars %}
                '{{ var.name }}': '{{ var.value }}'
        {% endfor %}
}