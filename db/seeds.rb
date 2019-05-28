# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Pet.destroy_all

Pet.create(name: "Bark Twain", category: "dog", breed: "Rat Terrier", age: "8", gender: "male", color: "black and white", nick_name: "Barky", img_url: "rat_terrier.jpg")
Pet.create(name: "Chewbarka", category: "dog", breed: "Whippet", age: "7", gender: "female", color: "black and white", nick_name: "Chewy", img_url: "whippet.jpeg")
Pet.create(name: "Droolius Caesar", category: "dog", breed: "Beagle", age: "6", gender: "male", color: "black, tan, and white", nick_name: "Emperor", img_url: "beagle.jpg")
Pet.create(name: "Franz Fur-dinand", category: "dog", breed: "Bulldog", age: "5", gender: "female", color: "tan and white", nick_name: "Frankie", img_url: "bulldog.jpg")
Pet.create(name: "Hairy Paw-ter", category: "dog", breed: "Yorkie", age: "4", gender: "male", color: "brown and gray", nick_name: "Mr. Magic", img_url: "yorkie.jpg")
Pet.create(name: "Kareem Abdul Ja-Bark", category: "dog", breed: "Corgie", age: "3", gender: "female", color: "golden brown and white", nick_name: "Karrie", img_url: "corgi.jpg")
Pet.create(name: "Mary Puppins", category: "dog", breed: "Chinese Crested", age: "2", gender: "male", color: "black and gray", nick_name: "MarMar", img_url: "chinesecrested.jpg")
Pet.create(name: "The Notorious D.O.G.", category: "dog", breed: "Dachshund", age: "1", gender: "female", color: "dark tan", nick_name: "Biggie", img_url: "dachshund.jpeg")
Pet.create(name: "Orville Redenbarker", category: "dog", breed: "Bull Terrier", age: "2", gender: "male", color: "white", nick_name: "Cosmidog", img_url: "bull_terrier.jpg")
Pet.create(name: "Ozzy Pawsborne", category: "dog", breed: "Greyhound", age: "3", gender: "female", color: "black and white", nick_name: "Oz", img_url: "greyhound.jpg")

Pet.create(name: "Cat Stevens", category: "cat", breed: "Persian", age: "3", gender: "female", color: "dark gray", nick_name: "Abby Dee", img_url: "persian.jpg")
Pet.create(name: "Puma Thurman", category: "cat", breed: "Siamese", age: "4", gender: "male", color: "white", nick_name: "Pu", img_url: "siamese.jpg")
Pet.create(name: "Ally Cat", category: "cat", breed: "British Shorthair", age: "5", gender: "female", color: "light black", nick_name: "Catty", img_url: "britishshorthair.jpg")
Pet.create(name: "Cat Benatar", category: "cat", breed: "Abyssinian", age: "6", gender: "male", color: "light tan", nick_name: "Benz", img_url: "abyssinian.jpg")
Pet.create(name: "Cindy Clawford", category: "cat", breed: "Bengal", age: "5", gender: "female", color: "light tan with darker spots", nick_name: "Moddy", img_url: "bengal.jpg")
Pet.create(name: "Oprah Whisker", category: "cat", breed: "Ocicat", age: "4", gender: "male", color: "white with black markings", nick_name: "Opie", img_url: "ocicat.jpg")
Pet.create(name: "Pawdry Hepburn", category: "cat", breed: "Toyger", age: "3", gender: "female", color: "orangey tan and black", nick_name: "Pawley", img_url: "toyger.jpg")
Pet.create(name: "Fleas Witherspoon", category: "cat", breed: "Minskin", age: "2", gender: "male", color: "light tan", nick_name: "Flea", img_url: "minskin.jpg")
Pet.create(name: "Catrick Swayze", category: "cat", breed: "Highlander", age: "1", gender: "female", color: "black striped", nick_name: "Sway", img_url: "highlander.jpg")
Pet.create(name: "Schrodinger", category: "cat", breed: "Bombay", age: "8", gender: "male", color: "black", nick_name: "Schrodey", img_url: "bombay.jpg")

Pet.create(name: "Tweety", category: "bird", breed: "Canary", age: "", gender: "male", color: "yellow", nick_name: "Tweet Tweet", img_url: "canary.png")
Pet.create(name: "Mr. Beaks", category: "bird", breed: "Blue Macaw", age: "5", gender: "male", color: "black and blue", nick_name: "Beaky", img_url: "bluemacaw.jpg")
Pet.create(name: "Lopsy Lou", category: "bird", breed: "Calopsita", age: "2", gender: "male", color: "gray, yellow, white and red", nick_name: "Loppy", img_url: "calopsita.jpg")
Pet.create(name: "Shelly", category: "turtle", breed: "Painted Turtle", age: "4", gender: "female", color: "black and red", nick_name: "Shellster", img_url: "paintedturtle.jpg")
Pet.create(name: "Mario Andretti", category: "turtle", breed: "Box turtle", age: "11", gender: "male", color: "grayish black", nick_name: "Boxy", img_url: "boxturtle.jpg")
Pet.create(name: "Squirtle", category: "turtle", breed: "Spotted", age: "6", gender: "female", color: "black and yellow", nick_name: "Squirt", img_url: "spottedturtle.jpg")
Pet.create(name: "Mr. Nibbles", category: "hamster", breed: "Syrian", age: "1", gender: "male", color: "black and tan", nick_name: "Nib", img_url: "syrian.jpg")
Pet.create(name: "Hamilton", category: "hamster", breed: "Chinese", age: "2", gender: "female", color: "white and tan", nick_name: "Hammy", img_url: "chinesehamster.jpg")
Pet.create(name: "William Snakespeare", category: "snake", breed: "Corn Snake", age: "7", gender: "male", color: "orange and tan", nick_name: "Willy", img_url: "cornsnake.jpg")