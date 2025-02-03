# tapatapp-24-25-public

[Descripció del Projecte](descTapatApp.md) 

Markdown , síntaxi bàsica per editar fitxers .md:  https://www.markdownguide.org/basic-syntax/

[Requeriments tècnics](req-tecnic.md) 

## Mermaid Diagrams

Basic Flow Chart:  https://mermaid.js.org/syntax/examples.html#basic-flowchart

## Git - GitHub

[Com connectar VSCode amb un repositori a GitHub](github.md)


## Model E/R

 ![Model E/R](/BBDD/Model-E-R.png)

## Prototip 1

 ![Prototip1](/charts/diagramaPrototip1.png)

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
<br/> Response Body: {   "email": "prova@gmail.com",   "id": 1,   "password":  "12345",   "username": "usuari1" }      |


## Diagrames de classes Prototip 1

### Server / Backend
![Diagrama de classes Server](/charts/DiagClassesP1Server.png)

### Client / FrontEnd
 ![Diagrama de classes Client](/charts/DiagClassesP1Client.png)

 
