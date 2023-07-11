
# 難易度適用
# カジュアルのみ初回限定メッセージ
execute if data storage main: difficult{world:"casual"} run tellraw @a {"translate":"この難易度を選択中です。"}

execute unless data storage main: difficult{world:"casual"} run function main:difficulty/apply/casual

# 難易度選択時の共通処理
function main:difficulty/select/common
