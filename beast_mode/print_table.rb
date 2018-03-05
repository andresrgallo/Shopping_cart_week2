require_relative "shopping_cart"
module Table
    module_function
    def print_table(inventory,item_selected,cart)
        line = []
        cart.each do |hash|
            line << hash.values
        end
        table = Terminal::Table.new :title =>"Pre-Order", :headings => ['Id:','Product:','Price:','Qty ordered:'], :rows => line, :style => {:width => 60}
        puts table
        Shopping_Cart.add_to_cart(inventory,item_selected,cart)
    end
end
