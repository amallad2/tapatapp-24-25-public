[Inici](README.md) 

# Tests Unitaris

https://es.wikipedia.org/wiki/Prueba_unitaria

Un test unitari (o prova unitària) és una tècnica de verificació en desenvolupament de software que comprova el funcionament de les parts més petites i aïllades d'un programa, típicament funcions o mètodes individuals.

## Característiques principals:
- Aïllament: Proven una única unitat de codi cada vegada
- Automàtics: S'executen sense intervenció manual
- Ràpids: Han d'executar-se en qüestió de mil·lisegons
- Repetibles: Donen el mateix resultat en cada execució
- Independents: No depenen d'altres tests


## Avantatges dels tests unitaris:
- Detecten errors aviat: Abans que arribin a producció
- Documenten el codi: Mostren com s'hauria d'utilitzar cada funció
- Faciliten refactorització: Permeten canviar codi amb seguretat
- Milloren el disseny: Obliguen a escriure codi modular i testeable

## Bones pràctiques:
- Posar noms descriptius als tests (ex: test_suma_hauria_retornar_zero_amb_zeros)
- Proves petites i específiques
- No provar múltiples coses en un sol test
- Utilitzar dades de prova simples però representatives
- Provar casos límit (edge cases) a més del flux normal
- Els frameworks més comuns per a tests unitaris en Python són unittest (inclòs a la llibreria estàndard), pytest i nose2.


## Com mostrar codi amb MarkDown

Posar el codi entre ```

```
def suma(a, b):
    """Retorna la suma de dos nombres."""
    return a + b

```
