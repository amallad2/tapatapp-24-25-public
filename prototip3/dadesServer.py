# Dades d'exemple amb List 
# Clase User 
class User:
    def __init__(self, id, username, password, email, token):
        self.id = id
        self.username = username
        self.password = password
        self.email = email
        self.token = token
    
    def __str__(self):
        return self.username + ":" + self.password + ":" + self.email

# Clase Child
class Child:
    def __init__(self, id, child_name, sleep_average, treatment_id, time):
        self.id = id
        self.child_name = child_name
        self.sleep_average = sleep_average
        self.treatment_id = treatment_id
        self.time = time

# Clase Tap
class Tap:
    def __init__(self, id, child_id, status_id, user_id, init, end):
        self.id = id
        self.child_id = child_id
        self.status_id = status_id
        self.user_id = user_id
        self.init = init
        self.end = end

# Clase Status
class Status:
    def __init__(self, id, name):
        self.id = id
        self.name = name

# Clase Role
class Role:
    def __init__(self, id, type_rol):
        self.id = id
        self.type_rol = type_rol

# Clase Treatment
class Treatment:
    def __init__(self, id, name):
        self.id = id
        self.name = name



users = [
    User(id=1, username="mare", password="12345", email="prova@gmail.com",token ="token12345"),
    User(id=2, username="pare", password="123", email="prova2@gmail.com",token ="token67890")
]

# Crear les classes Child, Tap, Role, Status i Treatment

children = [
    Child(id=1, child_name="Carol Child", sleep_average=8, treatment_id=1, time=6),
    Child(id=2, child_name="Jaco Child", sleep_average=10, treatment_id=2, time=6)
]

taps = [
    Tap(id=1, child_id=1, status_id=1, user_id=1, init="2024-12-18T19:42:43", end="2024-12-18T20:42:43"),
    Tap(id=2, child_id=2, status_id=2, user_id=2, init="2024-12-18T21:42:43", end="2024-12-18T22:42:43")
]

relation_user_child = [
    {"user_id": 1, "child_id": 1, "rol_id": 1},
    {"user_id": 1, "child_id": 2, "rol_id": 1},
    {"user_id": 1, "child_id": 1, "rol_id": 2},
    {"user_id": 2, "child_id": 2, "rol_id": 1},
    {"user_id": 2, "child_id": 2, "rol_id": 2}
]

roles = [
    Role(id=1, type_rol='Admin'),
    Role(id=2, type_rol='Tutor Mare Pare'),
    Role(id=3, type_rol='Cuidador'),
    Role(id=4, type_rol='Seguiment')
]

statuses = [
    Status(id=1, name="sleep"),
    Status(id=2, name="awake"),
    Status(id=3, name="yes_eyepatch"),
    Status(id=4, name="no_eyepatch")
]

treatments = [
    Treatment(id=1, name='Hour'),
    Treatment(id=2, name='percentage')
]

class DAOUser:
    @staticmethod
    def login(identifier, password):
        for user in users:
            if (user.username == identifier or user.email == identifier) and user.password == password:
                return user
        return None

    @staticmethod
    def get_user_role(user_id):
        return [relation['rol_id'] for relation in relation_user_child if relation['user_id'] == user_id]

    @staticmethod
    def get_all_users():
        return users

class DAOChild:
    @staticmethod
    def get_children_by_user_id(user_id):
        child_ids = [relation['child_id'] for relation in relation_user_child if relation['user_id'] == user_id]
        return [child for child in children if child.id in child_ids]