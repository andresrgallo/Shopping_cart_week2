require_relative "shopping_cart"
module Selection
    module_function
    
    def select_products(inventory,item_selected,cart)
        puts "Select product by id" 
            id = gets.chomp.to_i
            case id
                when 1..5
                id = id - 1
                item_selected = inventory[id].clone
                puts "Type qty needed"  #adding the qty ordered to invoice so is included when printing
                ordered = gets.chomp.to_i
                qoh = inventory[id][:on_hand]
                
                if qoh < ordered then
                    puts "We only have on hand #{qoh} items, try again"
                    Selection.select_products(inventory,item_selected,cart)
                else
                    qoh -= ordered
                    inventory[id][:on_hand] = qoh
                end

                item_selected[:ordered] = item_selected.delete(:on_hand)
                item_selected[:ordered] = ordered
                cart << item_selected
                Shopping_Cart.add_to_cart(inventory,item_selected,cart)
                else
                    puts "Wrong selection"
                Selection.select_products(inventory,cart)
            end
    end
end