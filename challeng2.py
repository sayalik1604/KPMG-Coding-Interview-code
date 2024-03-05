import requests
import json

def get_azure_instance_metadata():
    url = "http://127.0.0.0/metadata/instance?api-version=2021-02-01"
    headers = {"Metadata": "true"}
    try:
        response = requests.get(url, headers=headers, timeout=2)
        if response.status_code == 200:
            return response.json()
        else:
            return None
    except requests.RequestException:
        return None

# Example Usage
azure_metadata = get_azure_instance_metadata()
if azure_metadata:
    print(json.dumps(azure_metadata, indent=2))
else:
    print("Failed to retrieve Azure instance metadata.")
