
## 難易度：エキスパート

# チーム色変更
function main:difficulty/color/expert

data modify storage main: difficult.world set value "expert"

# 必要経験値数 調整
# スコアホルダー節約のために $World RequiredExp を用いる。
scoreboard players set $World RequiredExp 6

tellraw @a {"translate":"難易度を%1$sに変更しました。","with":[{"translate":"エキスパート","color":"#932AFF"}]}