require_relative "selection"
require "terminal-table"
module Main_Menu
module_function

    def main_menu(cart,item_selected)
        inventory = [{id: 1, product: 'iPhone', price: 2000, on_hand: 20},{id: 2, product: 'cable', price: 50, on_hand: 40},{id: 3, product: 'battery', price: 200, on_hand: 30},{id: 4, product: 'bag', price: 80, on_hand: 80},{id: 5, product: 'mouse', price: 100, on_hand: 70}]
          rows = []
          inventory.each do |hash|
          rows << hash.values
          end
     table = Terminal::Table.new :title =>"Inventory", :headings => ['Id:','Product:','Price:','On Hand:'], :rows => rows, :style => {:width => 60}
     puts table
     Selection.select_products(inventory,item_selected,cart)
    end
end

