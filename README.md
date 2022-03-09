# IntegrationServices_NorthWind_EsquemaEstrella
1. Se extrajo datos de la base de datos Northwind. 
2. Se puede ver detalladamente cada tabla con su respectiva columna y su tipo de dato en DiagramaNortwind_DataMartPedidos.png. 
3. Se uso el IDE Visual Studio 2019, se empleo SQL Server Integration Services (SSIS) el cual es un componente de Microsoft SQL Server utilizado para migración de datos. 
4. Se puede visualizar detalladamente en PantallaPrincipal.png la estructura del ETL. 
5. Se uso 1 Execute SQL Task para conectar a la base de datos NorthwindDataMartPedidos.sql. 
6. Se uso 5 Data Flow Task para cada Data Flow Task se uso un OLE DB Source, Data Conversion, OLE DB Destination respectivamente. 

Pasos para ejecutarlo:
1. Abrir Microsoft SQL Server Management Studio y ejecutar el script Northwind.sql y el script NorthwindDataMartPedidos.sql.
2. Abrir el archivo IntegrationServices_NorthWind_EsquemaEstrella.sln y ejecutarlo.
3. Finalmente comprobar con consultas que la base de datos NorthwindDataMartPedidos se ha llenado con sus respectivos datos.

Herramientas de Microsoft SQL Server Integration Services utilizadas:
1. Data Flow Task.
2. Execute SQL Task.
3. OLE DB Source.
4. OLE DB Destination.
5. Data Conversion.
