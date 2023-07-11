
# 難易度適用
execute if data storage main: difficult{world:"picnic"} run tellraw @a {"translate":"この難易度を選択中です。"}
execute unless data storage main: difficult{world:"picnic"} run function main:difficulty/apply/picnic

# 難易度選択時の共通処理
function main:difficulty/select/common
