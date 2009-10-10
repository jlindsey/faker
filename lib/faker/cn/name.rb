# -*- encoding: utf-8 -*-
module Faker
  module CN
    class Name
      class << self
        def name
          Proc.new { [ first_name, last_name ] }.call.join('')
        end
    
        def first_name
          %w(赵 钱 孙 李 周 吴 邓 王 冯 陈 朱 魏 蒋 梁).rand
        end
    
        def last_name
          %w(小二 小三 小明 小慧 小红 小黑 小白 小志 小小).rand
        end
      end
    end
  end
end
