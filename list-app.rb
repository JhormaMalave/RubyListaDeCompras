require './list.rb'
require './item.rb'

class ListApp
    #Atributos
    attr_writer :list

    def initialize
        @list = List.new
    end

    def run
        loop do
            puts 'Crea tu lista de compras'
            puts 'a - Agregar articulo'
            puts 'r - Remover un articulo'
            puts 'v - Mostrar todos articulo'
            puts 'm - Marcar articulo'
            puts 'd - Borrar todos los articulos'
            puts 's - Salir del programa'

            print '>>> '
            input = gets.chop
            case input
            when 'a'
                print 'Ingresa el nombre el articulo: '
                name = gets.chop
                @list.add_item(name)
                40.times {print '*'}
                puts "\n#{name} ha sido agregado a tu lista\n"
                40.times {print '*'}
            when 'r'
                @list.show_all
                print 'Ingresa el numero del articulo que desees remover: '
                index = gets.chop.to_i
                item = @list.delete_item(index)
                40.times {print '*'}
                puts "\n#{item.name} ha sido eliminado a tu lista\n"
                40.times {print '*'}
            when 'v'
                @list.show_all
            when 'm'
                @list.show_all
                print 'Ingresa el numero del articulo que desees marcar: '
                index = gets.chop.to_i
                @list.check_item(index)
                40.times {print '*'}
                puts "\n#{@list[index].name} ha sido eliminado a tu lista\n"
                40.times {print '*'}
            when 'd'
                puts '¿Estas seguro de querer borrar todos los articulos? (s/n)'
                print '>>> '
                reply = gets.chop
                if reply == 's'
                    @list.remove_all
                end
            when 's'
                break
            else
                puts 'Opcion no registrada :c - Intenda de nuevo'
            end
            puts "\n"
        end
        puts 'Gracias por utilizar esta aplicación'

    end
end

listApp = ListApp.new
listApp.run