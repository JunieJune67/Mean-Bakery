require 'sinatra'
require 'curb'
require 'json'
require './pantry.rb'

$brochure = []

g_cookie_uno = G_cookies.new("The Ace M&M in Place Cookie", "bakepics/cookieG.jpeg", "This boss bully cookie smacked with M&Ms really oughta whack ya taste buds.", "$5.50")

g_cookie_dos = G_cookies.new("The Big Billy Chunk", "bakepics/cookieG1.jpeg", "The 8 ounce Hulking Heavy cookie itself packed Macadamia nuts & filled with pounds of white chocolate chunks.", "$6.50")

g_cookie_tres = G_cookies.new("The Snake Spotted Green tea cookie", "bakepics/cookieG2.jpeg", "The Spicey Serpentine Tea cookie slithered with german spice and matcha.", "$4.50")

g_cookie_cuatro = G_cookies.new("Mini Arturo Bite Cookie", "bakepics/cookieG4.jpg", "A short breaded coconut cookie stuffed with truffles.", "$2.50")

g_cookie_cinco = G_cookies.new("The Grubber Boobber", "bakepics/cookieG3.jpg", "This grotesque looking S'mores tasting cookie stuffed with raisens & walnuts is party in your tummy.", "$7.50")

g_cookie_seis = G_cookies.new("The Whoopass stew cookie", "bakepics/cookieG5.JPG", "This Treat really is compacked with almonds, Hazelnuts, fudge bits & raspberries for a whupass", "$8.50")

g_muffins_uno = G_muffins.new("Ace Muffin Banana Barrel", "bakepics/muffin8", "A Muffin with a cannon blast of banana flavor", "$3.75")

g_muffins_dos = G_muffins.new("Grubber Molehill Muffin", "bakepics/muffin7", "A Blueberry cream cheese Muffin with apple", "$4.75")

g_muffins_tres = G_muffins.new("Billy's pound Muffin", "bakepics/muffin4", "This egg stuffed Potato muffin have tons of bacon in the center", "$7.75")

g_muffins_cuatro = G_muffins.new("Arturos Mini Muff", "bakepics/muffin3.jpg", "Small yet massive amount of cinnamon with a wallop of blueberry flavor", "$5.75")

g_muffins_cinco = G_muffins.new("Snakes pit muffin", "bakepics/muffin2.jpg", "The Leamony Flavored Muffin with honey", "$6.75")

g_muffins_seis = G_muffins.new("The Butter Crush Muffin", "bakepics/muffin.jpg", "The Peanut butter and Chocolate swirl troubled treat", "$8.75")

g_cakes_uno = G_cakes.new("Ace Bourbon Salted Caramel Cake", "bakepics/GreenC4", "Caramel Oozed with Bourbon breaking rules.", "$25")

g_cakes_dos = G_cakes.new("Arturos Candy drop Cake", "bakepics/GreenC1", "Carrot, French Vanilla Fudge Loaded with reeses pieces", "$27")

g_cakes_tres = G_cakes.new("Grubbers Ground Cake", "bakepics/GreenC4", "Chocolate Maple with Graham Cracker fillings", "$26")

g_cakes_cautro = G_cakes.new("Snakes Grand Spooky", "bakepics/GreenC3", "Red Velvet with Grand Marnier splashed inside", "$30")

g_cakes_cinco = G_cakes.new("Big Billys Roll", "bakepics/GreenC5", "A Key Lime flavored cake rolled up with Tropical Guava and Buttercream", "$28")

g_cakes_seis = G_cakes.new("The Schoolhouse Rocked", "bakepics/GreenC", "A Caramel coffee Cake with sour cream and rhubarb compote", "$60")







get '/bakehome' do
    puts ENV['EMAIL_USERNAME']
    puts "Hello World"
    erb :bakehome
  end

  get '/cake' do
    erb :cake
  end

  get '/cookies' do
    erb :cookies
  end

  get '/muffins' do
    erb :muffins
  end

  get '/popups' do
  @result = Curl::Easy.perform("https://www.eventbriteapi.com/v3/events/search/?q=new+york+city+cake+muffins+cookies&token=A3523TVA4OEQ4QCHQVIE")
  @data = @result.body_str
  @parsed = JSON.parse(@data)
  @popups = @parsed['popups']
  erb :popups
  end

  
