class Item
    #Atributos
    attr_writer :name, :checked

    def initialize(name = "")
        @name = name
        @checked = false
    end

    def to_s
        if @checked
            "[X] - #{@name}"
        else
            "[ ] - #{@name}"
        end
    end

end
