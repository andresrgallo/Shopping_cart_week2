module Invoice
    module_function
    def invoice(cart)
        rows = []
        cart.each do |product|
        rows << product    
        end
        table = Terminal::Table.new :title =>"Invoice", :headings => ['Id:','Product:','Price:','Ordered:'], :rows => rows, :style => {:width => 60}
        puts table
    end
end