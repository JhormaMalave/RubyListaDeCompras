require "./item.rb"

class List
    #Atributos
    attr_writer :items

    #Metodos
    def initialize
        @items = []
    end

    def add_item(name)
        item = Item.new(name)
        @items.push(item)
    end

    def delete_item(index)
        @items.delete_at(index)
    end

    def check_item(index)
        @items[index].checked = true
    end

    def remove_all
        @items.clear
    end 

    def show_all
        if @items == []
            puts ">>> Aun no has agregado items a la lista :)"
        else
            @items.each_index do |index|
                puts "#{index} - #{@items[index].to_s}"
            end
        end
    end
end