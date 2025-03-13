#>skill:act/knight/raging_slash/tick0
## 猛火斬毎tick処理（マーカー実行）

# 範囲内に攻撃回数が1以上の敵がいなければマーカーをキル
execute unless entity @e[scores={RagingCount=1..},distance=..5] run kill @s

# ダメージをロード
function skill:damage/load
tellraw @a {"nbt":"damage","storage":"skill:"}

# 重複防止のため距離制限を付与
execute as @e[scores={RagingCount=1..},distance=..5] run function skill:damage/apply/
execute as @e[scores={RagingCount=1..},distance=..5] run function skill:act/knight/raging_slash/tick1
