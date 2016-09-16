class ShoppingCart

    def initialize
        @items = []
    end


    def add_item_to_cart(item)
        @items << item
    end

    def show
        prices = {
            apple: 10,
            orange: 5,
            grape: 15,
            banana: 20,
            watermelon: 50
            }

        @n_apples = @items.select { |item| item == :apple }.length
        @n_oranges = @items.select { |item| item == :orange }.length
        @n_grapes = @items.select { |item| item == :grape }.length
        @n_bananas = @items.select { |item| item == :banana }.length
        @n_watermelons = @items.select { |item| item == :watermelon }.length

        @c_bananas = @n_bananas * prices[:banana]
        @c_watermelons = @n_watermelons * prices[:watermelon]

            if @n_apples > 0
                @o_apples = @n_apples.to_i / 2
                @d_apples = @n_apples - @o_apples
                @c_apples = @d_apples * prices[:apple]
                puts "#{@n_apples} Apples: $#{@c_apples}"
            end

              if @n_oranges > 0
                @o_oranges = @n_oranges.to_i / 3
                @d_oranges = @n_oranges - @o_oranges
                @c_oranges = @d_oranges * prices[:orange]
                puts "#{@n_oranges} Oranges: $#{@c_oranges}"
            end

             if @n_grapes > 0
                @o_grapes = @n_grapes.to_i / 4
                @d_grapes = @n_grapes - @o_grapes
                @c_grapes = @d_grapes * prices[:grape]
                puts "#{@n_grapes} Grapes: $#{@c_grapes}"
            end

        puts "#{@n_bananas} Bananas: $#{@c_bananas}" if @n_bananas > 0
        puts "#{@n_watermelons} Watermelon: $#{@c_watermelons}" if @n_watermelons > 0

    end

    def cost
        total = @c_apples + @c_oranges + @c_grapes + @c_bananas + @c_watermelons
        puts "---------------------"
        puts "The total cost is #{total}"
    end

    def discount
        @d_apples = @n_apples / 2 if @n_apples
    end


end

cart = ShoppingCart.new

cart.add_item_to_cart :apple
cart.add_item_to_cart :apple
cart.add_item_to_cart :apple
cart.add_item_to_cart :banana
cart.add_item_to_cart :banana
cart.add_item_to_cart :watermelon
cart.add_item_to_cart :watermelon
cart.add_item_to_cart :watermelon
cart.add_item_to_cart :orange
cart.add_item_to_cart :orange
cart.add_item_to_cart :orange
cart.add_item_to_cart :orange
cart.add_item_to_cart :orange
cart.add_item_to_cart :grape
cart.add_item_to_cart :grape
cart.add_item_to_cart :grape
cart.add_item_to_cart :grape
cart.add_item_to_cart :grape


cart.show

cart.cost







