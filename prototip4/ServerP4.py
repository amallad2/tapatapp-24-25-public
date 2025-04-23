from flask import Flask, request, jsonify
from DAOUser import DAOUser

app = Flask(__name__)

@app.route('/login', methods=['POST'])
def login():
    data = request.get_json()
    identifier = data.get('username')  # username or email
    password = data.get('password')
    dao_user = DAOUser()
    user = dao_user.validate_user(identifier, password)
    if user:
        return jsonify({
            "id": user['id'],
            "username": user['username'],
            "email": user['email'],
            "token": user['token'],
            "idrole": "2",  # Example role ID
            "msg": "Usuari Ok",
            "coderesponse": "1"
        }), 200
    else:
        return jsonify({
            "coderesponse": "0",
            "msg": "No validat"
        }), 400

if __name__ == '__main__':
    app.run(debug=True)