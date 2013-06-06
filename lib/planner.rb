require 'docopt'

class Planner
    VERSION = '0.0.1'

    def self::cli
        doc = File.open('README.markdown').read
        begin
            opt = Docopt::docopt doc, :version => VERSION
        rescue Docopt::Exit => e
            puts e.message
            return
        end
        main opt
    end

    def self::main opt
        require 'pp'
        pp opt
    end
end
