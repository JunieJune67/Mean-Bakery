class G_pantry
    attr_accessor :name, :image, :description, :price, :treat
    def initialize(name, image, description, price)
        @name = name
        @image = image
        @description = description
        @price = price
    end
end

class G_cookies < G_pantry
    attr_accessor :name, :image, :description, :price, :treat
    def initialize(name, image, description, price)
       super(name,image,description,price)
        @treat = 'G_cookies'
        $brochure << self
    end
end

class G_cakes < G_pantry
    attr_accessor :name, :image, :description, :price, :treat
    def initialize(name, image, description, price)
       super(name,image,description,price)
        @treat = 'G_cakes'
        $brochure << self
    end
end

class G_muffins < G_pantry
    attr_accessor :name, :image, :description, :price, :treat
    def initialize(name, image, description, price)
       super(name,image,description,price)
        @treat = 'G_muffins'
        $brochure << self
    end
end

