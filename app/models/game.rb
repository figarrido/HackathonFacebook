class Game < ApplicationRecord
    enum platform: [:pc, :xbox, :ps3, :nint_switch]
    enum category: [:action, :adventure, :rpg, :sport, :shoot, :fight, :other]
end
