# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([{ name: 'Craft Beer'}, { name: 'Brewing Kits'}, { name: 'Ingredients'}, { name: 'Accessories'}])

Item.create(name: 'Gallon Basic Equipment', description: 'This set includes all equipment you need to get started on your first 1 gallon (3.8 litres) batch of beer. Brewing in 1 gallon batches can be a lot of fun and this is how we like to brew at HK Brewcraft. Why? It requires minimal storage space, it’s easier to control temperature, and you can try more recipes at the same time without worrying about storage space! It also includes a glass carboy so you can visually monitor the fermentation process.', category: categories.second, price: '460.0',)
Item.create(name: 'Airlock - Bubbler', description: 'The fermentation lock or airlock is a device used in the making of most fermented beverages, including beer, wine, mead, and cider, that allows the carbon dioxide released by the fermenting wort or must to escape from the fermenter, while not allowing air to enter the fermenter, thus avoiding possible bacterial contamination.', category: categories.third, price: '35.5')
Item.create(name: 'Colombus pellets', description: 'Alpha Acids: 14 -16% Aroma: Pungent Others: Originally bred for its alpha value, it has also become popular for its oil profile. Great for dry hopping', category: categories.fourth, price: '25.0')
Item.create(name: 'Pick of the month 12x', description: 'Best beers from around the world carefully selected from a variety of sources for your drinking pleasure!', category: categories.first, price: '200.0')

Brewery.create(name: 'The Roundhouse - Taproom', description: 'The first ever Taproom in Hong Kong, serving 25 types of CRAFT BEER of Draft, along with a beautiful pairing of Authentic Texas Barbecue.', address: 'No. 62 Peel Street, Central, Hong Kong', phone: '2366 4880')
Brewery.create(name: 'Craft Brew & Co', description: 'CRAFT BREW & CO. is a beacon for enthusiasts and junkies,  where you can indulge in all that is great about craft beer and leave behind the grey world of mass market beers. No Carlsberg. No Stella. No San Miguel. Just the world’s best beers.', address: '17 Old Bailey Street, Central, Hong Kong', phone: '2885 0821')
Brewery.create(name: 'The Bottleshop', description: 'TWe real beer lovers are the David to the Goliath, the Neo to the Matrix, the Billy Elliot to the Royal Ballet School, the Susan Boyle to the Brits Got Talent... The Bottle Shop supply awesome beers to all our fellow enthusiasts throughout Hong Kong. We are confident we have the right beers for you, check out our website, and tell your friends about us. Lets sink the Titanic, and raise the sailboats...', address: 'The Bottle Shop GF, 114 Man Nin Street, Sai Kung, N.T. Hong Kong', phone: '2791 1600')
Brewery.create(name: 'The Roundhouse - Taproom', description: 'The first ever Taproom in Hong Kong, serving 25 types of CRAFT BEER of Draft, along with a beautiful pairing of Authentic Texas Barbecue.', address: 'No. 62 Peel Street, Central, Hong Kong', phone: '2366 4880')
