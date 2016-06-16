require 'wpars/wrapper/constants'

module WPAR
  module Wrapper
    include Constants
    class RmWpar
      def self.destroy(options = {})
        unless options[:force].nil?
          cmd = "#{options[:command]} #{Constants::RMWPAR} -F #{options[:name]}"
        else
          cmd = "#{options[:command]} #{Constants::RMWPAR} #{options[:name]}"
        end

        puts "debug: #{cmd}" unless options[:debug].nil?
        
        begin
          External.cmd(cmd)
        rescue External::ExternalFailure => error
          puts "Destroy wpar command failed with :\n[#{error}]"
        end

      end
    end
  end
end
