module WPAR
  module Wrapper
    class Lswpar

      def list
        begin
          output = External.cmd(@command)
        rescue External::ExternalFailure => error
          puts "List wpar command failed with :\n[#{error}]"
        end

        data = parse(output)
        if block_given?
          return data.each { |obj| yield obj }
        else
          return data
        end
      end

      def filter(name)
        list.select { |o| o.name == name }
      end
    end
  end
end
