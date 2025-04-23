import hashlib

# Text a codificar
text = "12345"

# Codificar el text a bytes i calcular l'MD5
md5_hash = hashlib.md5(text.encode())

# Mostrar el resultat en format hexadecimal
print("MD5:", md5_hash.hexdigest())