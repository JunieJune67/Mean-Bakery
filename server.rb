require 'sinatra'
load 'send.rb'
load 'pantry.rb'
    



$brochure = []


Cookie.new("The Ace M&M in Place Cookie", "assets/cookieG.jpg", "This boss bully cookie smacked with M&Ms really oughta whack ya taste buds.", 5)

Cookie.new("The Big Billy Chunk", "assets/cookieG1.jpeg", "The 8 ounce Hulking Heavy cookie itself packed Macadamia nuts & filled with pounds of white chocolate chunks.", 6)

Cookie.new("The Snake Spotted Green tea cookie", "assets/cookieG2.jpeg", "The Spicey Serpentine Tea cookie slithered with german spice and matcha.", 4)

Cookie.new("Mini Arturo Bite Cookie", "assets/cookieG4.jpg", "A short breaded coconut cookie stuffed with truffles.", 2)

Cookie.new("The Grubber Boobber", "assets/cookieG3.jpg", "This grotesque looking S'mores tasting cookie stuffed with raisens & walnuts is party in your tummy.", 7)

Cookie.new("The Whoopass stew cookie", "assets/cookieG5.jpg", "This Treat really is compacked with almonds, Hazelnuts, fudge bits & raspberries for a whupass", 8)

Muffin.new("Ace Muffin Banana Barrel", "assets/muffin8.jpg", "A Muffin with a cannon blast of banana flavor", 3)

Muffin.new("Grubber Molehill Muffin", "assets/muffin7.jpg", "A Blueberry cream cheese Muffin with apple", 4)

Muffin.new("Billy's pound Muffin", "assets/muffin4.jpg", "This egg stuffed Potato muffin have tons of bacon in the center", 7)

Muffin.new("Arturos Mini Muff", "assets/muffin3.jpg", "Small yet massive amount of cinnamon with a wallop of blueberry flavor", 5)

Muffin.new("Snakes pit muffin", "assets/muffin2.jpg", "The Leamony Flavored Muffin with honey", 6)

Muffin.new("The Butter Crush Muffin", "assets/muffin.jpg", "The Peanut butter and Chocolate swirl troubled treat", 8)

Cake.new("Ace Bourbon Salted Caramel Cake", "assets/GreenC4.jpg", "Caramel Oozed with Bourbon breaking rules.", 25)

Cake.new("Arturos Candy drop Cake", "assets/GreenC1.jpg", "Carrot, French Vanilla Fudge Loaded with reeses pieces", 27)

Cake.new("Grubbers Ground Cake", "assets/GreenC4.jpg", "Chocolate Maple with Graham Cracker fillings", 26)

Cake.new("Snakes Grand Spooky", "assets/GreenC3.jpg", "Red Velvet with Grand Marnier splashed inside", 30)

Cake.new("Big Billys Roll", "assets/GreenC5.jpg", "A Key Lime flavored cake rolled up with Tropical Guava and Buttercream", 28)

Cake.new("The Schoolhouse Rocked", "assets/GreenC.jpg", "A Caramel coffee Cake with sour cream and rhubarb compote", 60)



post '/form' do
  email = params["email"]
  Newsletter.welcome(email).deliver_now
  redirect '/'
end



get '/' do
    puts ENV['EMAIL_USERNAME']
    puts "Hello World"
    erb :bakehome
  end

  get '/cakes' do
    
    erb :cakes
  end

  get '/cookies' do
    
    erb :cookies
  end

  get '/muffins' do
    
    erb :muffins
  end

  