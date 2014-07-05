## OBJECT MODEL
# user
email
password

# recipe
belongs_to :user
has_many :ingredients
name
picture
rating
servings
prep time
custom
active
cookbook

# ingredient
belongs_to recipe
quantity
measurement
name
alternate ingredient?

# grocery_list
has many :ingredients
has many :recipes (can be nil)
quantity
measurement
name
purchased/own
