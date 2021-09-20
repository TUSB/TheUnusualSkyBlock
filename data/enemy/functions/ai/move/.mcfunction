##視線回転
#facing entity @e[tag=Target] feet positioned ^ ^ ^0.003 rotated as @s positioned ^-0.004 ^ ^ if entity @s[distance=..0.005]
#で左側にTargetがいるか判定 functionの途中で切ってTarget呼び出し回数を1回にしている
execute if data storage mob_data: AI.Turn[0].Move.Rotate facing entity @e[tag=Target] feet positioned ^ ^ ^0.003 rotated as @s run function enemy:ai/move/rotate/

##移動
#前
execute rotated as @s run function enemy:ai/move/move_front
#横
execute rotated as @s run function enemy:ai/move/move_side
#最終処理
execute in minecraft:overworld run function enemy:ai/move/move_end
