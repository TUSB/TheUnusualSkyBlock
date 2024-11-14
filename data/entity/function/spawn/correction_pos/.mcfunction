#> entity:spawn/correction_pos/

# 周りが当たり判定がないブロックなら補正無視
execute if function entity:spawn/correction_pos/check_block run return run data modify storage tusb_mob: Pos.after set from storage tusb_mob: Pos.before

# 同座標の補正ならばすでに済んでいるためそのまま使用
execute if score _ _ matches 0 run return 1

# 6方向の探索をする
# CorrectionPosマーカーからSpawnエンティティを見た方向が探索方向
# キリのいい数字だと別の座標を指すかもしれないので余裕の0.01mを持たせる
# 先に召喚するmerkerの方向が優先度高い
summon marker ~-0.249 ~ ~ {Tags:[CorrectionPos]}
summon marker ~ ~ ~0.249 {Tags:[CorrectionPos]}
summon marker ~ ~ ~-0.249 {Tags:[CorrectionPos]}
summon marker ~0.249 ~ ~ {Tags:[CorrectionPos]}
summon marker ~ ~-0.49 ~ {Tags:[CorrectionPos]}
summon marker ~ ~0.49 ~ {Tags:[CorrectionPos]}
tag @s add CorrectTarget
execute as @e[tag=CorrectionPos,distance=0.24..0.5] positioned as @s facing entity @n[distance=0.24..0.5,tag=CorrectTarget] feet run tp @s ~ ~ ~ ~ ~
tag @s remove CorrectTarget

# 補正開始
scoreboard players set _ _ 0
function entity:spawn/correction_pos/loop

# 万が一召喚可能位置が見つからなければ諦める
execute if score _ _ matches 0 run data modify storage tusb_mob: Pos.after set from storage tusb_mob: Pos.before

kill @e[tag=CorrectionPos]
