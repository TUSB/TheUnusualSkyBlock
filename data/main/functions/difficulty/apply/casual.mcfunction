
# 難易度：カジュアル
# デフォルト

# チーム色変更
execute unless data storage main: difficult{world:"picnic"} run function main:difficulty/color/casual

data modify storage main: difficult.world set value "casual"

# 必要経験値数 調整
# スコアホルダー節約のために $World RequiredExp を用いる。
scoreboard players set $World RequiredExp 5

# エキスパートのみKeepInventoryはfalseとなる
gamerule keepInventory true

tellraw @a {"translate":"難易度を%1$sに変更しました。","with":[{"translate":"カジュアル","color":"#FF2A2A"}]}
