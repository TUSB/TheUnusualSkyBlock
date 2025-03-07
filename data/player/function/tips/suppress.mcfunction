#> player:tips/suppress
### TIPS抑制

# プレイヤーのTIPSを取得
function #oh_my_dat:please
data modify storage tusb_player: TIPS set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TIPSList

# 表示抑制するTIPSを決定
data remove storage tusb_player: _
execute store result storage tusb_player: _.Suppress int 1 run scoreboard players get @s TipsSupTrigger

function player:tips/suppress.macro with storage tusb_player: _

# プレイヤーにTIPSを保存
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TIPSList set from storage tusb_player: TIPS

tellraw @s[scores={TipsSupTrigger=1..}] {"translate":"[INFO] このTIPSを除外しました。ばいばい！","bold":true}

# トリガー再有効化
scoreboard players reset @s TipsSupTrigger
scoreboard players enable @s TipsSupTrigger
