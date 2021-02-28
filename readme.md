## BDD_GONIO_V8
Base de donn�es de relev�s goniom�triques

Param�tres obligatoires :
- Coordonn�es (Y/X) d'un point
- Azimut (en degr�s)
- Distance

Param�tres facultatif
- Date/heure du relev�
- Fr�quence
- API
- Code couleur du relev�
- Nom du capteur

L'outil calcule un point de chute pour chaque relev�.
Export des relev�s en KML, importable sur GlobalMapper


## ConvCoord
Convertisseur de coordonn�es
Prend en charge la conversion de coordonn�es depuis et vers les formats :

- geo d�cimales
- geo degr�s minutes secondes
- lambert
- UTM
- MGRS


## importMassif
Import massif de symboles personnalis�s dans Global Mapper
G�n�ration d'une masse de points vers un fichier KML