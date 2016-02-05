/*
User stories

I want to be able to create a new grocery list.
I want to be able to update the list: add an item with a quantity, remove an item, update the quantitites for an item.
I want to be able to display my list for reading.


Pseudocode
DEFINE grocerylist contructor, which takes in a list of grocery items
  For each item in the list
    set this.listItem to default value 1
DEFINE grocerylist prototype with the following functions:
  addItem, which takes in an item name and amount
      set this.item to amount
  deleteItem, which takes in an item name
      remove this.item
  updateItem, which takes in an item name and amount

*/

function groceryList (items) {
  if (items != undefined){
    var itemsArray = items.split(" ");
    for(var i = 0; i < itemsArray.length; i++){
    this[itemsArray[i]] = 1;
    }
  }
}

groceryList.prototype = {
  addItem: function addItem (name, amount) {
    this[name] = amount;
  },
  deleteItem: function deleteItem (name){
    delete this[name];
  },
  updateItem: function updateItem (name, newAmount) {
    this[name] = newAmount;
  },
  displayItems: function displayItems () {
    for (var item in this){
      if (typeof this[item] !== 'function'){
        console.log(item + ": " + this[item]);
      }
    }
  }
}


//Driver code
var groceries = new groceryList("oranges apples eggs");
groceries.addItem("milk", 1);
groceries.deleteItem("oranges");
groceries.updateItem("eggs", 2);
groceries.displayItems();

/*Reflection

What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

  It gave me more practice with defining/using constructors, and this was the first time I used a prototype in conjunction with 
  a constructor to add methods to an object, so I learned something new as well.

What was the most difficult part of this challenge?

  Trying to figure out how to initialize a new grocery list with items without making each item a separate argument in the 
  constructor, since it would be hard to write the constructor in a way that would work for any number of arguments. 
  I quickly thought of passing in an array but them it took me a while to think through how to iterate through that array and
  use its contents along with "this" in the right way. And then I later looked at the old Ruby challenge and saw that the input 
  there was a string of space-separated items so I changed it to resemble that, to make it easier on the "user", even though I'm 
  still turning it into an array as an intermidiary to make it into an object.

Did an array or object make more sense to use and why?

  I did use an array as an intermediary when creating the list, but it made more sense to have the actual list be an 
  object because then you can store the item as a property and its quantity as the value.
*/
