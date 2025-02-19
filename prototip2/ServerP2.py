import dadesServer as dades
from dadesServer import User,Child,Tap,Status,Role,Treatment

# Exemple d'ús de la llista d'usuaris
'''for x in dades.users:
    print(x)

# Exemple d'ús de la classe User
a= User(id=1, username="Kurl", password="12345", email="prova2@gmail.com")
print(a)'''

############  DAOs  ############

class UserDAO:
    def __init__(self):
        self.users = dades.users

    def get_all_users(self):
        return [user.__dict__ for user in self.users]

    def get_user_by_username(self, username):
        for user in self.users:
            if user.username == username:
                return user.__dict__
        return None

class ChildDAO:
    def __init__(self):
        self.children = children

    def get_all_children(self):
        return [child.__dict__ for child in self.children]

    def get_children_by_user_id(self, user_id):
        child_ids = [rel["child_id"] for rel in relation_user_child if rel["user_id"] == user_id]
        return [child.__dict__ for child in self.children if child.id in child_ids]