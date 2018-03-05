module Invoice
    module_function
    def invoice(cart, total_invoice,inventory,item_selected)
        rows = []
        cart.each do |hash|
        rows << hash.values
        end
        table = Terminal::Table.new :title =>"Invoice", :headings => ['Id:','Product:','Price:','Ordered'], :rows => rows, :style => {:width => 60}
        puts "\n"*2
        puts table
        rows.each do |array|
            total_invoice += array[2] * array[3]
        end
        puts "".center(60,"-")
        puts "Total Price(no gst) $#{total_invoice}"
        puts "Total Price(gst inclusive) $#{(total_invoice * 1.1).to_i}"
        puts "".center(40,"-")
        Shopping_Cart.add_to_cart(inventory,item_selected,cart)
    end
end