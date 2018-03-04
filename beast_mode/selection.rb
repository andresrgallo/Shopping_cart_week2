require_relative "shopping_cart"
module Selection
    module_function
    
    def select_products(rows,cart)
        
        puts "Select product by id" 
            id = gets.chomp.to_i
            case id
                when 1..5
                id = id - 1
                item_selected = rows[id]
                cart << item_selected
                Shopping_Cart.add_to_cart(rows,item_selected,cart)
                else
                    puts "Wrong selection"
                Selection.select_products
        end

        


        # case
        #     when input == "a"
        #         puts "Select by id"
        #         id = gets.chomp.to_i
        #         id = id - 1
        #         item_selected = rows[id]
        #     Shopping_Cart.add_to_cart(item_selected)
        #     when input == "e"
        #         Exit
        #     else
        #         puts "Wrong selection"
        #         Selection.select_products
        # end
    end
end