require 'wpars/wrapper/constants'

module WPAR
  module Wrapper
    include Constants
    class StartWpar
      def self.start(options = {})
        cmd = "#{options[:command]} #{Constants::STARTWPAR} #{options[:name]}"

        puts "debug: #{cmd}" unless options[:debug].nil?
        begin
          External.cmd(cmd)
        rescue External::ExternalFailure => error
          puts "Start wpar command failed with :\n[#{error}]"
        end
      end
    end
  end
end
