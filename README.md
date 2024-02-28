MySQL Database on XAMPP is necessary to use the app
* Database-name:chaucheritadb
* The DB must have at least one table for 'categorias':
```
CREATE TABLE categoria (
  id int(11) NOT NULL,
  NOMBRE varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  TIPO int(11) DEFAULT NULL
)
```
> The table can be created using the app using the persistence.xml file. (value="create-tables must be discommented)
* The app was created on Eclipse using ApacheTomcat v8.5 Server
