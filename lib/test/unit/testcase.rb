require 'minitest/spec'
require 'pp'

module Test
  module Unit
    
    Assertions = ::MiniTest::Assertions
    
    class TestCase < ::MiniTest::Spec
      
      MINI_SPECUNIT = true
      
      def mu_pp(obj)
        obj.pretty_inspect.chomp
      end
      
      def build_message(head, template=nil, *arguments)
        template &&= template.chomp
        template.gsub(/\?/) { mu_pp(arguments.shift) }
      end
      
    end
    
  end
end
