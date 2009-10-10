# -*- encoding: utf-8 -*-
module Faker
  module CN
    class Address
      class << self
        def zip_code
          Faker.numerify('######')
        end
      
        def province
          [
           '四川', '贵州', '广东', '广西', '浙江', '云南', '吉林',
           '黑龙江', '辽宁', '山东', '河南', '河北', '安徽'
          ].rand << '省'
        end
      
        def city
          [
           '贵阳', '遵义', '六盘水', '成都', '重庆', '杭州', '昆明',
           '吉林', '延吉', '长春', '哈尔滨', '大连', '青岛', '大庆'
          ].rand << '市'
        end
      
        def street_suffix
          ['', '', '', '', '', '', '东', '南', '西', '北', '中'].rand
        end        

        def street_name
          [ 
           '公园', '建国', '钟山', '大一', '上海', '人民', '明湖',
           '建设', '情侣'
          ].rand << street_suffix << '路'
        end
      
        def street_address(include_secondary = false)
          Faker.numerify([
                          '%s##号' % street_name,
                          '%s###号' % street_name,
                          '%s####号' % street_name
                         ].rand + (include_secondary ? ' ' + secondary_address : ''))
        end
      
        def secondary_address
          Faker.numerify('###单元')
        end
      end
    end
  end
end
