[Inici](README.md)
# Prototip 2

## WireFrames & Mockups

En disseny d’aplicacions, els mockups i els wireframes són elements essencials en el procés de prototipatge i definició de la interfície d’usuari (UI). Tot i que sovint es confonen, tenen objectius diferents:

**Wireframe**
Un wireframe és un esquema bàsic que representa l’estructura i la disposició dels elements en una interfície d’usuari.

- Se centra en la funcionalitat i la jerarquia de la informació.
- No inclou colors, imatges o tipografies detallades.
- S’utilitza en les primeres etapes del desenvolupament per validar l’estructura i el flux de navegació.

**Mockup**
Un mockup és una representació més detallada i visualment fidel de l’aplicació.

- Incorpora colors, tipografies, botons i altres elements gràfics.
- No acostuma a ser interactiu, però mostra clarament l’aparença final de l’app.
- S’utilitza per validar l’aspecte visual abans de passar a la fase de desenvolupament.

Diferències clau:

|**Aspecte**|	**Wireframe**|	**Mockup**|
| -------- | ------- | ------- |
|**Detall**|	Esquemàtic, en blanc i negre|	Visualment elaborat|
|**Funció**|	Definir estructura i navegació|	Mostrar l’aspecte final|
|**Interactivitat**|	No interactiu|	Tampoc interactiu (excepte en prototips)|
|**Moment d’ús**|	Primera fase del disseny|	Etapa avançada, abans del prototip|

En resum, el wireframe defineix l’esquelet de la interfície, mentre que el mockup afegeix detalls visuals per veure com quedarà l’app abans del desenvolupament.

**FEINA PER CLASSE** (05/02/25):

Fer tot flux de navegació d'usuari (Wireframes) de l'App TapatApp.

Fer ús de ChatGPT, Perplexity, Copilot, Gemini, DeepSeek .... per fer el diagrama del Flux de navegació, a sota tens un exemple amb Mermaid, si vols fer servir altres eines pel diagrama les pots fer servir.

![ChatGPT FlowChart](/img/chatgptWireframes.png)

![Mermaid Live Editor](/img/MermaidLiveEditor.png)

Per cada pantalla anota:
- Informació d'Entrada: Dades que entra l'usuari amb Click , forms, gestos
- Informació que necessita la Vista: Informació que necessita la Vista pel seu funcionament

Per exemple a la **Vista de Login**:
- Descripció: Pantalla de Login on l'usuari validarà de forma segura (Https)
- Info. Entrada que introdueix l'Usuari: Username o email, Password
- Info. Vista:  Token (opcional, necessitem per fer Login automàtic)

##  Implementació Prototip 2 
![Mermaid Live Editor](/img/p2LoginChild.png)

**Vista de Login**:
- Descripció: Pantalla de Login on l'usuari es validarà
- Info. Entrada que introdueix l'Usuari: Username o email, Password
- Info. que necessita la Vista: None

**Vista de Registre**:
- Descripció: Formulari de Registre d'Usuari 
- Info. Entrada: username, password, mail
- Info. Vista: None

**Vista de Child Taps**:
- Descripció: Vista del Child que té assignat l'Usuari amb els registres d'estat del pegat 
- Info. Entrada: None
- Info. Vista: User, Child i Taps 


##  FASES Implementació Prototip 2 Entorns Desenvolupament DAM

Publicar a GitHub i fer en un fitxer prototip2.md linkat al README.md

1. Wireframes (no posar lògica només l'arbre de navegació) de tota la Aplicació amb la descripció de cada Vista (explicar la lògica si es té clara).
2. Descripció de la part que implementareu al Prototip 2 (per exemple Vista Login i Vista Child Taps)
3. Diagrama d'arquitectura del Prototip 2
4. Diagrama de classes de Backend i Front-End
5. Implementació 


[Exemple enllaç a diagrama mermaid](/charts/mvc-generic.mermaid)
