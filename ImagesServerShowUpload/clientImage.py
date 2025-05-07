import tkinter as tk
from tkinter import filedialog, messagebox, simpledialog  # Importar simpledialog
import requests
from PIL import Image, ImageTk
import os

SERVER_URL = "http://127.0.0.1:5000"

def upload_image():
    # Seleccionar archivo
    file_path = filedialog.askopenfilename(filetypes=[("Image files", "*.jpg *.jpeg *.png")])
    if not file_path:
        return

    try:
        # Subir imagen al servidor
        with open(file_path, 'rb') as file:
            response = requests.post(f"{SERVER_URL}/upload", files={"image": file})
        
        if response.status_code == 200:
            data = response.json()
            messagebox.showinfo("Éxito", f"Imagen subida correctamente: {data['path']}")
        else:
            messagebox.showerror("Error", f"No se pudo subir la imagen: {response.json().get('msg', 'Error desconocido')}")
    except Exception as e:
        messagebox.showerror("Error", f"Error al subir la imagen: {str(e)}")

def show_image():
    # Pedir el nombre del archivo
    filename = simpledialog.askstring("Mostrar imagen", "Introduce el nombre del archivo:")  # Usar simpledialog.askstring
    if not filename:
        return

    try:
        # Descargar la imagen del servidor
        response = requests.get(f"{SERVER_URL}/image/{filename}", stream=True)
        if response.status_code == 200:
            # Guardar temporalmente la imagen descargada
            temp_path = os.path.join("temp_image.jpg")
            with open(temp_path, 'wb') as temp_file:
                temp_file.write(response.content)

            # Mostrar la imagen en la interfaz
            img = Image.open(temp_path)
            img = img.resize((300, 300))  # Redimensionar para que quepa en la ventana
            img_tk = ImageTk.PhotoImage(img)
            image_label.config(image=img_tk)
            image_label.image = img_tk
        else:
            messagebox.showerror("Error", f"No se pudo obtener la imagen: {response.json().get('msg', 'Error desconocido')}")
    except Exception as e:
        messagebox.showerror("Error", f"Error al mostrar la imagen: {str(e)}")

# Crear la ventana principal
root = tk.Tk()
root.title("Cliente de Imágenes")

# Botones para subir y mostrar imágenes
upload_button = tk.Button(root, text="Subir Imagen", command=upload_image)
upload_button.pack(pady=10)

show_button = tk.Button(root, text="Mostrar Imagen", command=show_image)
show_button.pack(pady=10)

# Etiqueta para mostrar la imagen
image_label = tk.Label(root)
image_label.pack(pady=10)

# Ejecutar la aplicación
root.mainloop()