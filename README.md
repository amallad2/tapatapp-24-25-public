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

