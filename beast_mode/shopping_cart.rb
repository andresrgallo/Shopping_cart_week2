require_relative "main_menu"
require_relative "invoice"
require_relative "delete"
module Shopping_Cart
    module_function
    
    def add_to_cart(inventory,item_selected,cart)
        total_invoice = 0
        p "Type letter in (): Add another item(a), delete an item(d), print invoice(i), clear cart and start again(c), or exit(e)"
        option = gets.chomp
        case
            when  option == 'a'
               Selection.select_products(inventory,item_selected,cart)
            when option == 'c'
                cart = []
                puts "Empty cart"
                Table.print_table(inventory,item_selected,cart)
                when option == 'd'
                puts cart
                Delete_Item.delete(inventory,item_selected,cart)
            when option == 'i'
                Invoice.invoice(cart, total_invoice,inventory,item_selected)
            when option == 'e'
                exit
            else
                Shopping_Cart.add_to_cart(inventory,item_selected,cart)
        end
    end
end
