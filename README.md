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

Definició dels <b>EndPoints del Servei Web</b>:
- Descripció: Servei que consulta un User per Username
- End-point: /prototip1/getuser
- Method: GET
- Parametres: username
- Resposta:
<br/>Code 200 Ok: {id=1,"username":"userr1", "password":"123456", "email":"mail@gmail.com"} 
<br/>Code 400 No trobat: {"error": "No trobat"}

