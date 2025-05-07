import os
from flask import Flask, request, jsonify, send_from_directory

app = Flask(__name__)

# Configuración de la carpeta para guardar imágenes
UPLOAD_FOLDER = 'C:/Users/amallad2/Documents/tapatapppublic/tapatapp-24-25-public/ImagesServerShowUpload/img'
os.makedirs(UPLOAD_FOLDER, exist_ok=True)
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

@app.route('/upload', methods=['POST'])
def upload_image():
    if 'image' not in request.files:
        return jsonify({"msg": "No se encontró ninguna imagen"}), 400

    file = request.files['image']
    if file.filename == '':
        return jsonify({"msg": "El nombre del archivo está vacío"}), 400

    # Guardar la imagen en la carpeta configurada
    file_path = os.path.join(app.config['UPLOAD_FOLDER'], file.filename)
    file.save(file_path)
    return jsonify({"msg": "Imagen subida correctamente", "path": file_path}), 200

@app.route('/image/<filename>', methods=['GET'])
def get_image(filename):
    try:
        return send_from_directory(app.config['UPLOAD_FOLDER'], filename)
    except FileNotFoundError:
        return jsonify({"msg": "Imagen no encontrada"}), 404

if __name__ == '__main__':
    app.run(debug=True)