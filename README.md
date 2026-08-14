*¿Por qué usaste LEFT JOIN para la Consulta 1 y no INNER JOIN? ¿Qué se perdería si usaras INNER JOIN?
En la primera consulta la pregunta asociada es "¿Qué productos del catálogo nunca fueron vendidos?  Mostrá todos los productos y sus ventas asociadas."
Por lo tanto se me solicitaba mostrar todos los productos del catalogo por lo tanto esta tabla debia de estar completo sin embargo se requerian aquellos que tenian 
ventas asociadas por lo que de la tabla ventas solo se requerian aquellas filas que tenian efectivamente una venta
*¿Por qué usaste RIGHT JOIN para la Consulta 2? ¿Qué tabla está a la izquierda y cuál a la derecha en tu consulta?
La segunda consulta solicita lo siguiente "¿Existen ventas registradas con productos que no figuran en nuestro catálogo? El enfasis de la consulta esta puesto 
en si existen ventas con determinada caracteristica, por ello a la derecha puse la tabla ventas, que debia de estar completa, y a la izquierda la tabla que tiene que
cumplir con las caracteristicas para unirla, es decir, productos.
*¿Qué representan los valores NULL en cada resultado? Explicá con un ejemplo concreto de los datos qué significa que venta_id sea NULL en la Consulta 1 y que producto_id de productos sea NULL en la Consulta 2.
Como dicta la teoria, los valores null indican ausencia de datos o no coincidencia de la tabla relacionada.
En la consulta 1 que venta_id sea null significa que determinado producto no tiene ventas, en la consulta 2 significa que no hay productos asociados a alguna venta 
*¿Cuándo usarías FULL OUTER JOIN en un caso real de negocio?
Usaria FULL PUTER JOIN Cuando necesito validar los datos de las tablas, auditorias oo analisis de integridad de una empresa. Como este comando me permite ver coincidencias
tanto de left como de right por ejemplo podria ver que productos tienen ventas o que ventas no tienen productos para ver errores de carga
