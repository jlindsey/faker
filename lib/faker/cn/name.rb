# -*- encoding: utf-8 -*-
module Faker
  module CN
    class Name
      class << self
        def name
          Proc.new { [ first_name, last_name ] }.call.join('')
        end
    
        def first_name
          %w(
李 王 张 刘 陈 杨 黄 赵 周 吴 徐 孙 朱 马 胡 郭 林 何 
高 梁 郑 罗 宋 谢 唐 韩 曹 许 邓 萧 冯 曾 程 蔡 彭 潘 
袁 于 董 余 苏 叶 吕 魏 蒋 田 杜 丁 沈 姜 范 江 傅 钟 
卢 汪 戴 崔 任 陆 廖 姚 方 金 邱 夏 谭 韦 贾 邹 石 熊 
孟 秦 阎 薛 侯 雷 白 龙 段 郝 孔 邵 史 毛 常 万 顾 赖 
武 康 贺 严 尹 钱 施 牛 洪 龚
).rand
        end
    
        def last_name
          %w(小二 小三 小明 小慧 小红 小黑 小白 小志 小小).rand
        end
      end
    end
  end
end
