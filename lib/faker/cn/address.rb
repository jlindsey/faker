# -*- encoding: utf-8 -*-
module Faker
  module CN
    class Address
      class << self
        def zip_code
          Faker.numerify('######')
        end
      
        def province
          ProvinceData.rand
        end

        def city
          LongCityData.rand
        end
        
        def short_city
          ShortCityData.rand
        end
      
        def street_suffix
          ([''] * 8 + ['东', '南', '西', '北', '中']).rand
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
