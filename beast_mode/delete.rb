require_relative 'print_table'
module Delete_Item
    module_function
    def delete(inventory,item_selected,cart)
        puts "type id of item you want to remove from cart"
        remove_id = gets.chomp.to_i
        p remove_id
        cart.reject! { |hash| hash[:id] == remove_id} 
        Table.print_table(inventory,item_selected,cart)
    end
end
