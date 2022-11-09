from flask import Flask, render_template, request, redirect
from flask_app import app

from flask_app.models.dojos import Dojo #este dojo con mayuscula es la clase Dojo de dojos.py

from flask_app.models.ninjas import Ninja #importamos ninja

@app.route('/')
def index():
    return redirect('/dojos')


@app.route('/dojos')
def dojos():
    #pendiente obtener todos los dojos
    dojos = Dojo.get_all() #obtener todos los dojos
    return render_template('index.html', dojos=dojos) #1° dojos es la variable q esta en el for de html, el 2° el valor q
    #queremos q tenga


#creamos ruta para guardar -> funcion save creada recien en dojos.py
@app.route('/create/dojo', methods=['POST'])
def create_dojo():
    #request.form = {name: Chile}
    Dojo.save(request.form)
    return redirect('/dojos')



#para desplegar el formulario
@app.route('/new/ninja')
def new_ninja():
    dojos = Dojo.get_all() #mostrar todos los dojos
    return render_template('new.html', dojos=dojos)


#para crear el nuevo ninja
@app.route('/create/ninja', methods=['POST'])
def create_ninja():
    #recibo request.form = {dojo_id:1, first_name:Elena, last_name: De Troya, age: 30}
    Ninja.save(request.form)
    return redirect('/dojos')



@app.route('/dojos/<int:id>')
def show_dojo(id):
    data = {'id': id}
    dojo = Dojo.get_dojo_with_ninjas(data)
    return render_template('dojo.html', dojo=dojo)