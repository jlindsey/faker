# -*- encoding: utf-8 -*-
module Faker
  module CN
    class Company
      class << self
        def name
          Formats.rand.call
        end
    
        def suffix
          %w(责任有限公司 实业有限公司 集团).rand
        end
      end
      
      Formats =
        [
         Proc.new { [ Name.name, suffix ].join('') },
         Proc.new { [ Name.name, Name.name ].join('-') << suffix }
        ]
    end
  end
end

