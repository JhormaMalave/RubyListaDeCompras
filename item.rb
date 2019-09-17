class Item
    #Atributos
    attr_accessor :name
    attr_writer :checked

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
