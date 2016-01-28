1. SELECT * FROM states

2. SELECT * FROM regions

3. SELECT state_name, population
   FROM states

4. SELECT state_name, population
   FROM states
   ORDER BY population DESC;

5. SELECT state_name
   FROM states
   WHERE region_id = 7;

6. SELECT state_name, population_density
   FROM states
   WHERE population_density > 50
   ORDER BY population_density ASC;

   (or you can leave off the 'ASC', since the default order is ascending)

7. SELECT state_name
   FROM states
   WHERE population > 1000000 AND population < 1500000;

8. SELECT state_name, region_id
   FROM states
   ORDER BY region_id ASC;

   (or you can leave off the 'ASC', since the default order is ascending)

9. SELECT region_name
   FROM regions
   WHERE region_name LIKE "%Central%";

10. SELECT region_name, state_name
    FROM states
    INNER JOIN regions
    ON states.region_id = regions.id
    ORDER BY region_id ASC;

    (or you can leave off the 'ASC', since the default order is ascending)

![schema design](/week-8/database-intro/outfits_schema.png)

**Reflection**

**What are databases for?**

  Databases are used to store large collections of data; they are organized to allow for easy access to the data.

**What is a one-to-many relationship?**

  A one-to-many relationship means that an entity belongs to only one group, but that group contains many entities. For example, a person is born in one country, but a country has many people that were born in it.

**What is a primary key? What is a foreign key? How can you determine which is which?**

  A primary key is a unique key used to identify individual entries in the table (meaning no two entries in the table can have the same value for that field). A foreign key is a field in a table that is the primary key in another table, and is used to connect two tables together. The easiest way to tell them apart is to ask yourself if it uniquely identifies the entries in that particular table.

**How can you select information out of a SQL database? What are some general guidelines for that?**

  First, you specify the information you want to select/display, by listing the column names that hold the information you want and using the keyword SELECT. (If you want to select all fields, you can use '*' instead of listing them all out.)

  Then you specify which table(s) contain those columns by listing the table names and using the keyword FROM. (After this you will also need to join the tables if the information you want is split between different connected tables.)

  Then you specify any conditions if you want to select only entries that fit a certain criteria using the keyword WHERE. (You can also set multiple conditions using the keywords AND, if you want both conditions met, and OR, if you want either condition met.)

  Then you can specify which field you would like to order the results by usings the keywords ORDER BY along with ASC to order from least to greatest and DESC to order from greatest to least. (You can list multiple fields to order by-it will order the overall results by the first field listed, then if there are multiple entries that have the same value for that field, it will order those by the next field listed and so on.)