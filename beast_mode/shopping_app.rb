require_relative "main_menu"
module Shopping_App
    module_function
    item_selected = 
    cart = []   #to initialize cart so I can pass it to another method to append arrays to it
    def welcome
        puts "Welcome to Online shopping, see below list of products available"
    end
    puts `clear`
    Main_Menu.main_menu(cart,item_selected)
end