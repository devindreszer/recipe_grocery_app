# Object Model
# User
* email
* password

## Recipe
* belongs_to :user
* has_many :ingredients
* name
* image
* rating
* servings
* prep_time
* is_custom
* is_active
* in_cookbook

## Ingredient
* belongs_to recipe
* quantity
* measurement
* name
* alternate_ingredient?

## Grocery_list
* has_many :ingredients
* has_many :recipes (can be nil)
* quantity
* measurement
* name
* is_purchased
