
# 難易度：ピクニック

# チーム色変更
execute unless data storage main: difficult{world:"picnic"} run function main:difficulty/color/picnic

data modify storage main: difficult.before set from storage main: difficult.world
data modify storage main: difficult.world set value "picnic"

# 必要経験値数 調整
# スコアホルダー節約のために $World RequiredExp を用いる。
scoreboard players set $World RequiredExp 4

# エキスパートのみKeepInventoryはfalseとなる
gamerule keepInventory true

tellraw @a {"translate":"難易度を%1$sに変更しました。","with":[{"translate":"ピクニック","color":"#99CC33"}]}
