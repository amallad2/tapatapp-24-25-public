import hashlib

def hash_text(text, algorithm='sha256'):
    """
    Genera el hash d'un text utilitzant l'algorisme especificat.
    
    :param text: El text a hashejar.
    :param algorithm: L'algorisme de hash (per defecte 'sha256').
    :return: El hash generat en format hexadecimal.
    """
    try:
        # Crear un objecte hash utilitzant l'algorisme especificat
        hash_object = hashlib.new(algorithm)
        # Codificar el text a bytes i actualitzar l'objecte hash
        hash_object.update(text.encode('utf-8'))
        # Retornar el hash en format hexadecimal
        return hash_object.hexdigest()
    except ValueError:
        return f"Algorisme '{algorithm}' no suportat."

# Exemple d'ús
if __name__ == "__main__":
    text = input("Introdueix el text a hashejar: ")
    algorithm = input("Introdueix l'algorisme de hash (sha256, sha1, md5, etc.): ") or 'sha256'
    hashed_text = hash_text(text, algorithm)
    print(f"El hash generat és: {hashed_text}")

