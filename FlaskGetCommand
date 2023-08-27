from flask import Flask, jsonify
app = Flask(__name__)
@app.route('/get_command', methods=['GET'])
def get_command():
    # Retourne le nom du script à exécuter
    return jsonify({'script': 'mon_script.sh'})
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
