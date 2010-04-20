# -*- encoding: utf-8 -*-
module Faker
  module CN
    class Lorem
      Words = %w(我 你 他 我们 你们 他们 的 祖国 家乡 家 像 是 花园
                 花朵 花儿 真 鲜艳 美丽 漂亮)

      def self.words(num = 3)
        Words.shuffle[0, num]
      end

      def self.sentence(word_count = 4)
        words(word_count + rand(6)).join('') + %w(， ， ， ， 。 ！ ？).rand
      end

      def self.sentences(sentence_count = 3)
        returning([]) do |sentences|
          1.upto(sentence_count - 1) do
            sentences << sentence
          end
          sentences << words(4 + rand(6)).join('') + %w(。 ！ ？).rand
        end
      end

      def self.paragraph(sentence_count = 3)
        sentences(sentence_count + rand(3)).join('')
      end

      def self.paragraphs(paragraph_count = 3)
        returning([]) do |paragraphs|
          1.upto(paragraph_count) do
            paragraphs << paragraph
          end
        end
      end
    end
  end
end
