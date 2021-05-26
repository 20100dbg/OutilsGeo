IMPORT FILENAME="C:\Users\Marty\Desktop\cours GM\CARTO\cartes\alsace2.tif"


//IMPORT FILENAME="C:\Users\Marty\Desktop\cours GM\CARTO\vecteurs\villes_ouest.kmz"


IMPORT_ASCII FILENAME="C:\Users\Marty\Desktop\cours GM\CARTO\import\relais.csv" TYPE=POINT_ONLY COORD_FORMAT=MGRS COORD_DELIM=AUTO COORD_ORDER=MGRS INC_ELEV_COORDS=NO INC_COORD_LINE_ATTRS=YES COL_HEADERS=YES PROJ="EPSG:4326"

//4326 = geo WGS84

JOIN_TABLE FILENAME="C:\Users\Marty\Desktop\cours GM\CARTO\import\relais_data.csv" LAYER_NAME="relais.csv" JOIN_FILE_ATTR_NAME="OBJECTID" JOIN_LAYER_ATTR_NAME="OBJECTID" FILE_DELIM="SEMICOLON"


//mettre un attribut en label ?

//changer le feature type ?
//créer un feature type perso ?

//définir un style ?

EDIT_VECTOR FILENAME="relais.csv" BUFFER_ATTR="RAYON" BUFFER_ATTR_UNITS="METERS"


SAVE_WORKSPACE FILENAME="C:\Users\Marty\Desktop\cours GM\CARTO\resultat.gmw"