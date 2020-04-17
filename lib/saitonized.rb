require "saitonized/version"
require "natto"

module Saitonized
  def self.greet
    'それで言うと'
  end
end

class String
  KAKU_PARTICLE = %W[が の を に へ と より から で や].freeze
  SETSUZOKU_PARTICLE = %W[は ば と ても でも けれど けれども ながら が のに ので から など て で し たり だり なり つつ ものの ところで].freeze
  FUKU_PARTICLE = %W[は も こそ さえ でも ばかり など か だって しか まで だけ ほど きり ぎり くらい ぐらい なり やら だの なんて ずつ とか すら].freeze
  SHUU_PARTICLE = %W[か な ね よ ぞ とも なあ や わ ねえ こと ぜ さ かしら もの ものか].freeze
  def saitonized
    natto_mecab = Natto::MeCab.new
    res = ''
    natto_mecab.parse(self) do |nm|
      res += case nm.feature
      when /格助詞/ then KAKU_PARTICLE.sample
      when /接続助詞/ then SETSUZOKU_PARTICLE.sample
      when /副助詞/ then FUKU_PARTICLE.sample
      when /終助詞/ then SHUU_PARTICLE.sample
      else nm.surface
      end
    end
    res
  end
end
