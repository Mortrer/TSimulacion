* Encoding: UTF-8.
DO IF(NotaAlta>85). /* donde si la nota es mayor a 85 sea finalista y menor que sea repechaje para la variable Clasificacion..*/
COMPUTE Clasificacion=1.
ELSE.
COMPUTE Clasificacion=2.
END IF.
EXECUTE

VALUE LABELS /* para asignarle las etiquetas  de finalista y repechaje a la variable -> Clasificacion*/
/Clasificacion
1 FINALISTA
2 REPECHAJE.
EXECUTE

VALUE LABELS /*para asignarle las etiquetas  Salón A para la UVG y Salón B para la Landívar para la variable -> SalonOcupado*/
/SalonOcupado
1 SALON A
2 SALON B.
EXECUTE

DO IF(Universidad=2).
COMPUTE SalonOcupado=1.
ELSE.
COMPUTE SalonOcupado=2.
END IF.
EXECUTE