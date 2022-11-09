from flask_app.config.mysqlconnection import connectToMySQL

#controla todas las acciones de ninja
class Ninja:

    def __init__(self, data):
        #data = {Diccionario con todos los datos} (columnas tabla sql, siempre tienen q coincidir)
        self.id = data['id']
        self.first_name = data['first_name']
        self.last_name = data['last_name']
        self.age = data['age']
        self.created_at = data['created_at']
        self.updated_at = data['updated_at']
    

    #para guardar un nuevo ninja
    @classmethod
    def save(cls, formulario):
        query = "INSERT into ninjas (first_name, last_name, age, dojo_id) VALUES (%(first_name)s, %(last_name)s, %(age)s, %(dojo_id)s)"
        result = connectToMySQL('esquema_dojos_y_ninjas').query_db(query, formulario)
        return result
