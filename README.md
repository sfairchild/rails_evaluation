## Skills test application

### App stack
* Ruby 2.4.2
* Rails 5.1.4
* sqlite
* bootstrap 4
* Font Awesome

This is a small rails app with only 2 models, a List and an Item. You can create, edit, delete and view lists. You can only create and delete items.

This test will test your coding style and ability to read the existing code. Follow the steps and submit your results.

1. Fork this repo.

2. Ensure you can build and run the application.

3. Explore existing code and make a written analysis

4. Complete the story tasks listed below. Complete the ones you feel comfortable with. If it is taking more than a few hours feel free to submit what you have.

5. Make a pull request back to this repo once you complete the below tasks.


### Story tasks

#### Story 1

As a user, I want to ensure that when a `List` and an `Item` are created, they are valid.

A valid `list` meets the following criteria.

1. It has a `name`
2. It has a `description`
3. It's `description` is longer than 5 characters

A valid `item` meets the following criteria.

1. It has a `name`

#### Story 2

As a user, I want my items to be sorted alphabetically when I view a list.

Test 1: In the list show page. Ensure the items are displayed in ascending order

Bonus Test:(Not required, but if you have time give it a shot) Create a toggle to change between ascending and descending order.

#### Story 3 

***Bonus - ___complete only if you have time___***

As a user, I would like to create tags on items. Items can have multiple tags and tags can belong to multiple items. For this exercise we will use a predefined list of tags. You can use the seed file for creating you list. Your tags will be ['important', 'nice to have', 'idea', 'task']

Test 1. When I create a new item, allow me to assign tags with a list of checkboxes.

Test 2. After an item is created, list the tags next to the item name.

