[Inici](README.md)
# Prototip 1

## Diagrama d'Arquitectura

 ![Prototip1](/charts/diagramaPrototip1-v2.png)

Implementació Backend amb Flask i les dades amb una llista.

## HTTP Request / Response

Necessitem coneixer com es formen les peticions i respostes Http

[Http Request / Response](https://docs.google.com/document/d/1fnAIsfJJZqlMDvWakbqL_R68UjNa1QhgHB6NNKx2TNM)

## Definició dels EndPoints del WebService
Definició dels <b>EndPoints del Servei Web</b>:

Què necessitem per cada End-point

Definició dels <b>EndPoints del Servei Web</b>:

Què necessitem per cada End-point

Host:  http://192.168.144.199:10050  

| Descripció  | End-point     | Method     |Tipus de petició|Parametres|
| :---        |  :---        |  :---        |  :---         |  :---     |  
| Obtenir dades d'un usuari  | /prototip1/getuser|GET | application/json   |  username (string) | 

Afegir tots els codis de Resposta i els possibles jsons de sortida.
Si la petició és GET afegir URL per provar totes les possibles sortides.

Resposta JSON per Usuari trobat:  
Code Response Http: 200
<br/> Response Body: { "email": "prova@gmail.com",   "id": 1,   "password":  "12345",   "username": "usuari1" } 

Code Response Http: 400
<br/> Response Body: { "description":  "Usuari no trobat" ,   "code": 1} 
<br/> Response Body: { "description":  "Falta paràmetre Username",   "code": 2 } 
<br/> Response Body: { "description":  "Server Error",   "code": 3 }

## Diagrames de classes Prototip 1

### Server / Backend
![Diagrama de classes Server](/charts/DiagClassesP1Server.png)

### Client / FrontEnd

 Exemples de Requests amb Python:  [Activitat 3.2 Computacio Al Nuvol - HTTP Request](https://docs.google.com/document/d/1G0CPwD9SptF7_FzutV8cV6rNp89WRvci)

 ![Diagrama de classes Client](/charts/DiagClassesP1Client.png)

 Una altra possibilitat de Diagrama de Classes de Client amb més control sobre la resposta

 ![Diagrama de classes Client](/charts/DiagClassesP1Client-v2.png)
