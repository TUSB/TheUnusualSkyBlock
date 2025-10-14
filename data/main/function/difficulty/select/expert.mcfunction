
# 難易度適用
execute if data storage main: difficult{world:"expert"} run tellraw @a {"translate":"この難易度を選択中です。"}
execute unless data storage main: difficult.selected unless data storage main: difficult{world:"expert"} run function main:difficulty/apply/expert

execute if data storage main: difficult.selected unless data storage main: difficult{world:"expert"} run tellraw @a {"translate":"既に他の難易度を選択しているので\n%1$sには変更できない。","with":[{"translate":"エキスパート","color":"#932AFF"}]}

# テキストディスプレイを難易度の色に染める
data modify entity @e[type=text_display,tag=DifficultSelect,distance=..20,limit=1] background set value -409785601

# 難易度選択時の共通処理
function main:difficulty/select/common

advancement revoke @s only main:difficulty/select/expert
