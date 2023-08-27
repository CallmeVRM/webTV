import requests
import os

response = requests.get('http://server_address:5000/get_command')
data = response.json()

script_name = data.get('script')

if script_name == 'mon_script.sh':
    os.system(f'bash /chemin/vers/mon_script.sh')
