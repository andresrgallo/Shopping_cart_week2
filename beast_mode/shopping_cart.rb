require_relative "main_menu"
require_relative "invoice"
module Shopping_Cart
    module_function
    
    def add_to_cart(rows,item_selected,cart)
        
        # cart << item_selected
        p "Do you want to add another item(a), print invoice(i), clear and start again(c), or exit(e)?"
        option = gets.chomp
        case
            when  option =='a'
               Selection.select_products(rows,cart)
            when option =='c'
                cart = []
                Main_Menu.main_menu
            when option == 'i'
                Invoice.invoice(cart)
            when option == 'e'
                exit
        end
    end
end
