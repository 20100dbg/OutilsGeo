//importer la carto de base
IMPORT FILENAME="%SCRIPT_FOLDER%..\SCAN\alsace2.tif"

//On peut importer un vecteur ville
IMPORT FILENAME="%SCRIPT_FOLDER%..\VECTEURS\villes_ouest.kmz"

//import du fichier relais.csv
//4326 = geo WGS84
IMPORT_ASCII FILENAME="%SCRIPT_FOLDER%..\IMPORT\relais.csv" TYPE=POINT_ONLY COORD_FORMAT=MGRS COORD_DELIM=AUTO COORD_ORDER=MGRS INC_ELEV_COORDS=NO INC_COORD_LINE_ATTRS=YES COL_HEADERS=YES PROJ="EPSG:4326"

//affecter le symbole relais à la couche relais
EDIT_VECTOR FILENAME="relais.csv" SHAPE_TYPE="POINTS" POINT_TYPE="relais"

//fusion de la couche relais avec le fichier relais_data.csv
JOIN_TABLE FILENAME="%SCRIPT_FOLDER%..\IMPORT\relais_data.csv" LAYER_NAME="relais.csv" JOIN_FILE_ATTR_NAME="OBJECTID" JOIN_LAYER_ATTR_NAME="OBJECTID" FILE_DELIM="SEMICOLON"

//Creation d'une zone tampon autour de chaque relais
EDIT_VECTOR FILENAME="relais.csv" BUFFER_ATTR="RAYON" BUFFER_ATTR_UNITS="METERS"

//définition du style de la zone tampon
EDIT_VECTOR FILENAME="relais.csv Buffer Areas" STYLE_ATTR="LINE_STYLE=SOLID" STYLE_ATTR="LINE_WIDTH=2" STYLE_ATTR="LINE_COLOR=RGB(255,0,0)"

//ajout d'un nom aux zones tampons
//CALC_ATTR FILENAME="relais.csv Buffer Areas" TYPE="APPEND" NEW_ATTR="<Feature Name>" SOURCE_ATTR="LOCALITE" VALUE_ATTR="NORME" SEP_STR=" / "

//utilisation d'une formule pour le même résultat : 
//CALC_ATTR_FORMULA FILENAME="relais.csv Buffer Areas" NEW_ATTR="<Feature Name>" FORMULA="LOCALITE + ' / ' +  NORME"

//Sauvegarde du résultat dans un GMW
SAVE_WORKSPACE FILENAME="%SCRIPT_FOLDER%..\IMPORT\resultat_script.gmw"