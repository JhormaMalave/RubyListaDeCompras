class Item
    #Atributos
    attr_writer :name, :checked

    def initialize(name = "")
        @name = name
        @checked = false
    end

    def to_s
        if @checked
            puts "[X] - #{@name}"
        else
            puts "[ ] - #{@name}"
        end
    end

end
