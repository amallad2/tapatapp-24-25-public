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

[Prototip 1](prototip1.md) 

## Prototip 2

[Prototip 2](prototip2.md) 

[Criteris Avaluació](criterisAvaluacio.md) 

## Prototip 3

### Diagrames de Seqüència

https://mermaid.js.org/syntax/sequenceDiagram.html

Els diagrames de seqüència s’utilitzen per representar la interacció entre objectes o actors en un sistema a través del temps. Es fan servir principalment en enginyeria de programari per visualitzar el flux de missatges entre els diferents components d’un sistema.

Finalitats dels diagrames de seqüència:
- **Modelar el comportament d’un sistema** → Mostren com es comuniquen els diferents elements (usuaris, sistemes, bases de dades, etc.).
- **Definir el flux de missatges i operacions** → Permeten entendre quin component crida quin mètode i en quin ordre.
- **Disseny d’arquitectura de programari** → Ajuden a estructurar les interaccions en aplicacions complexes, especialment en sistemes client-servidor o API.
- **Documentació del sistema** → Serveixen com a referència per a desenvolupadors i equips de treball.
- **Depuració i optimització** → Identifiquen possibles problemes en la comunicació entre mòduls.

Elements principals d’un diagrama de seqüència:
- **Actors/Objectes**: Representats per caixes o figures a la part superior (per exemple, "Usuari", "Servidor", "Base de Dades").
- **Línies de vida**: Representades per línies verticals que indiquen l’existència d’un objecte en un moment determinat.
- **Missatges**: Fletxes horitzontals que indiquen crides de mètodes o comunicació entre actors.
- **Activacions**: Blocs rectangulars que mostren quan un objecte està actiu processant un missatge.
- **Missatges sincrònics i asíncrons**: Representen si un missatge requereix una resposta immediata o no.

[Exercici Joc mòbil](/enunciatDiagramesSequencia.md)

### Login

1. Dissenyar el diagrama de Seqüència de Login (Classe)
2. Dissenyar el diagrama de Seqüència d'autenticació amb Token (Login automàtic)

![ChatGPT FlowChart](/charts/diagramasequenciaLogin.png)

[Diagrama de seqüència Login (Mermaid)](/charts/diagramasequenciaLogin.mermaid)

### Test Codi i Proves Unitàries

## Tests Unitaris

[Tests Unitaris](testsunitaris.md) 

## Prototip 4: Backend 

Connexió mb BBDD: Dissenya i implementa el Backend per l'aplicació TapatApp amb un prototip funcional per a que un Tutor pugui gestionar els pegats d'un infant.

Què has de fer: 
- Posada en marxa de la BBDD Mysql a l'entorn de desenvolupament amb dades per fer les proves.
- Fes el diagrama d'arquitectura del Backend (BBDD, DAOs, WebService)
- Fes el diagrama de Classes del Backend
- Implementació del Backend amb accés a BBDD
- Tests unitaris del Backend


### Descripció dels serveis de Backend

#### Servei Login
End-point:  /login    
Method: POST  
Estat: Public  
Tipus petició : application/json  
Paramètres:  
- username : (string) username o email  
- password : (string)  password  

Resposta Usuari validat Ok:  
http Response Code: 200 ok  
```
{    
    "id": 1,
    "username": "mare",
    "email": "prova@gmail.com",
    "token": "token12345",
    "idrole": "2",
    "msg": "Usuari Ok"
    "coderesponse": "1"
}
```

Resposta Usuari No validat: 
http Response Code: 400 ok
```
{
     "coderesponse": "0"
     "msg": "No validat"
}
```


#### Servei Login per Token 
End-point:  /login   
Method: POST  
Estat: Public  
Tipus petició :  application/json  
Paramètres Header: 'Authorization'   : (string) token   

Resposta Usuari validat Ok:  
http Response Code: 200 ok  
```
{
    "id": 1,
    "username": "mare",
    "email": "prova@gmail.com",
    "token": "token12345",
    "idrole": "2",
    "msg": "Usuari Ok"
    "coderesponse": "1"
}
```

Resposta Usuari No validat:   
http Response Code: 400 ok  
```
{
    "coderesponse": "0"
     "msg": "No validat"
}
```

#### Servei Child
End-point:  /child    
Method: POST  
Estat: Privat (autenticació amb Token per Header)  
Tipus petició :  application/json  
Paramètres: iduser : (int) id_user  


Resposta No Child:  
```
{ 
   "msg": "1"
    "coderesponse": "1"

  [ ]
}
```

Resposta 1 Child:  
```
{ 
   "msg": "1"
    "coderesponse": "1"

  [ {
"id": 1,
    "child_name": "Carol Child",
    "sleep_average": 8,
    "treatment_id": 1,
    "time": 6

}]
}
```

Resposta Varis Child:  
```
{ 
   "msg": "2"
    "coderesponse": "1"

  [ {
"id": 1,
    "child_name": "Carol Child",
    "sleep_average": 8,
    "treatment_id": 1,
    "time": 6

},
{
    "id": 2,
    "child_name": "Jaco Child",
    "sleep_average": 10,
    "treatment_id": 2,
    "time": 6
}
]
}
```


#### Servei Taps
End-point:  /taps    
Method: POST  
Estat: Privat (autenticació amb Token per Header)  
Tipus petició :  application/json  
Paramètres: 
- idchild : (int) id_child identificador del Child  
- data: (date) data amb format dd-mm-yyyy  (si no rebem data tornem tots els Taps)  

Resposta No Taps:  
```
{ 
   "msg": "0"
    "coderesponse": "1"

  [ ]
}

Resposta 1 Taps:
{ 
   "msg": "1"
    "coderesponse": "1"

  [ {
    "id": 1,
    "child_id": 1,
    "status_id": 1,
    "user_id": 1,
    "init": "2024-12-18T19:42:43",
    "end": "2024-12-18T20:42:43"
}
]
}
```

Resposta 2 Taps:  
```
{ 
   "msg": "2"
    "coderesponse": "1"

  [ {
    "id": 1,
    "child_id": 1,
    "status_id": 1,
    "user_id": 1,
    "init": "2024-12-18T19:42:43",
    "end": "2024-12-18T20:42:43"
},
{
    "id": 2,
    "child_id": 1,
    "status_id": 2,
    "user_id": 1,
    "init": "2024-12-18T20:42:43",
    "end": "2024-12-18T22:42:43"
}

]
}
```






