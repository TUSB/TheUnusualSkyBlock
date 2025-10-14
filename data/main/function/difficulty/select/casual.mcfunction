
# 難易度適用
execute if data storage main: difficult{world:"casual"} run tellraw @a {"translate":"この難易度を選択中です。"}

execute unless data storage main: difficult{world:"casual"} run function main:difficulty/apply/casual

# テキストディスプレイを難易度の色に染める
data modify entity @e[type=text_display,tag=DifficultSelect,distance=..20,limit=1] background set value -402707926

# 難易度選択時の共通処理
function main:difficulty/select/common

advancement revoke @s only main:difficulty/select/casual
