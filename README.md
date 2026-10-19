# outer-joins-ministore
Uso de INNER, LEFT, RIGHT y FULL OUTER JOINs
•	¿Por qué usaste LEFT JOIN para la Consulta 1 y no INNER JOIN? ¿Qué se perdería si usaras INNER JOIN?
Porque al usar LEFT JOIN puedo visualizar aquellos productos del catálogo que nunca fueron vendidos, los cuales se identifican con NULL, dato que se pierde al usar INNER JOIN porque solo muestra los productos vendidos.
•	¿Por qué usaste RIGHT JOIN para la Consulta 2? ¿Qué tabla está a la izquierda y cuál a la derecha en tu consulta?
Porque tomo como prioridad las ventas registradas y en este caso queda la tabla ventas a la izquierda y productos a la derecha.
•	¿Qué representan los valores NULL en cada resultado? Explicá con un ejemplo concreto de los datos qué significa que venta_id sea NULL en la Consulta 1 y que producto_id de productos sea NULL en la Consulta 2.
Los valores NULL significan que no hay registros en la base de datos, ya sea de un producto no cargado o una venta no registrada. En este caso, una venta_id en la consulta 1 significa que no se registran ventas de determinados productos y en la Consulta 2 significa que hay ventas realizadas de productos no registrados en el catálogo.
•	¿Cuándo usarías FULL OUTER JOIN en un caso real de negocio?
Usaría FULL OUTER JOIN para obtener la visualización completa de ventas y productos que estén en la base de datos (registros) y también de aquellos que figuren en el registro de ventas pero sin estar cargados en la base de datos.
