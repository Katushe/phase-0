**One-to-one**
![one-to-one relationship schema](/week-8/imgs/one_to_one.png)

This is a one-to-one relationship, because every person can have only one (valid) driver's license and every driver's license can belong to only one person (legally).


**Groceries**
![groceries schema](/week-8/imgs/groceries.png)

**Reflection**

**What is a one-to-one database?**

  A one-to-one database is one that contains a one-to-one relationship, this means that an entity is associated with one and only one entity in another table (and vice-versa).

**When would you use a one-to-one database? (Think generally, not in terms of the example you created).**

  The issue is that a lot of the time, when there is a one-to-one relationship it is best to keep them in the same table, with one of them as a field of the other (the one that cannot exist without the other should become the field). You would put them in separate tables when each one has its own fields that you would like to keep track of.

**What is a many-to-many database?**

  Technically, you wouldn't have a many-to-many "database". If you have a many-to-many relationship, you need to split it into two one-to-many relationships, hence the join table. A many-to-many relationshipe is one in which one entity contains many of the second entity, and the second entity can belong to many of the first.

**When would you use a many-to-many database? (Think generally, not in terms of the example you created).**

  You would use a many-to-many database when you have entities that need their own tables (because they each have their own properties/fields you want to store) but there's a many-to-many relationship between them, so you need a way to connect/join the two tables.

**What is confusing about database schemas? What makes sense?**

  I've worked with SQL before and have created database schemas before so this was mostly review for me, but it was a nice refresher on what the different types of relationships are.