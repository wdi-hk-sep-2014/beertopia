# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{ name: 'Craft Beer'}, { name: 'Brewing Kits'}, { name: 'Ingredients'}, { name: 'Accessories'}])

Item.create(name: 'Gallon Basic Equipment', desciption: 'This set includes all equipment you need to get started on your first 1 gallon (3.8 litres) batch of beer. Brewing in 1 gallon batches can be a lot of fun and this is how we like to brew at HK Brewcraft. Why? It requires minimal storage space, it’s easier to control temperature, and you can try more recipes at the same time without worrying about storage space! It also includes a glass carboy so you can visually monitor the fermentation process.', category: categories.second, Price: '460.0', Quantity: '1')
Item.create(name: 'Airlock - Bubbler', desciption: 'The fermentation lock or airlock is a device used in the making of most fermented beverages, including beer, wine, mead, and cider, that allows the carbon dioxide released by the fermenting wort or must to escape from the fermenter, while not allowing air to enter the fermenter, thus avoiding possible bacterial contamination.', category: categories.third, Price: '35.5', Quantity: '2')
Item.create(name: 'Colombus pellets', desciption: 'Alpha Acids: 14 -16% Aroma: Pungent Others: Originally bred for its alpha value, it has also become popular for its oil profile. Great for dry hopping', category: categories.fourth, Price: '25.0', Quantity: '3')
Item.create(name: 'Pick of the month 12x', desciption: 'Best beers from around the world carefully selected from a variety of sources for your drinking pleasure!', category: categories.first, Price: '200.0', Quantity: '1')

