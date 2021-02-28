## BDD_GONIO_V8
Base de données de relevés goniométriques

Paramètres obligatoires :
- Coordonnées (Y/X) d'un point
- Azimut (en degrés)
- Distance

Paramètres facultatif
- Date/heure du relevé
- Fréquence
- API
- Code couleur du relevé
- Nom du capteur

L'outil calcule un point de chute pour chaque relevé.
Export des relevés en KML, importable sur GlobalMapper


## ConvCoord
Convertisseur de coordonnées
Prend en charge la conversion de coordonnées depuis et vers les formats :

- geo décimales
- geo degrés minutes secondes
- lambert
- UTM
- MGRS


## importMassif
Import massif de symboles personnalisés dans Global Mapper
Génération d'une masse de points vers un fichier KML