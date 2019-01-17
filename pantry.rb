


class Pantry
    attr_accessor :name, :image, :description, :price, :treat
    def initialize(name, image, description, price)
        @name = name
        @image = image
        @description = description
        @price = price
    end
end

class Cookie < Pantry
    attr_accessor :name, :image, :description, :price, :treat
    def initialize(name, image, description, price)
       super(name,image,description,price)
        @treat = 'Cookie'
        $brochure << self
    end
end

class Cake < Pantry
    attr_accessor :name, :image, :description, :price, :treat
    def initialize(name, image, description, price)
       super(name,image,description,price)
        @treat = 'Cake'
        $brochure << self
    end
end

class Muffin < Pantry
    attr_accessor :name, :image, :description, :price, :treat
    def initialize(name, image, description, price)
       super(name,image,description,price)
        @treat = 'Muffin'
        $brochure << self
    end
end




















