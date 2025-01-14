# tapatapp-24-25-public

[Descripció del Projecte](descTapatApp.md) 

Markdown , síntaxi bàsica per editar fitxers .md:  https://www.markdownguide.org/basic-syntax/

[Requeriments tècnics](req-tecnic.md) 

## Git - GitHub

[Com connectar VSCode amb un repositori a GitHub](github.md)

## Model E/R

 ![Model E/R](/BBDD/Model-E-R.png)

## Prototip 1

 ![Prototip1](/charts/diagramaPrototip1.png)

Implementació Backend amb Flask i llistes.

<code
class User:
    def __init__(self, id, username, password, email):
        self.id = id
        self.username = username
        self.password = password
        self.email = email

users = [
    User(id=1, username="usuari1", password="12345", email="usuari1@gmail.com"),
    User(id=2, username="usuari2", password="123", email="usuari2@gmail.com")
    ]
</code>
