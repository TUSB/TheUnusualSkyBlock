#Function
# サウンド
playsound minecraft:entity.blaze.shoot neutral @a[distance=..32] ~ ~ ~ 1 2 0.1
playsound minecraft:entity.wolf.howl neutral @a[distance=..32] ~ ~ ~ 0.2 1 0.1
# パーティクル
function settings:enemy/global/friendly/blow/friend_wolf/lightning
# Circle
execute if score _ Random matches 0 at @s run particle item gold_nugget ~0.0 ~0.0 ~0.1 ~-4.97 ~0.0 ~1000000000.0 0.00000000050 0 normal
execute if score _ Random matches 0 at @s run particle item gold_nugget ~0.05 ~0.0 ~0.09 ~500000000.0 ~0.0 ~866025472.0 0.00000000050 0 normal
execute if score _ Random matches 0 at @s run particle item gold_nugget ~0.09 ~0.0 ~0.05 ~866025344.0 ~0.0 ~500000000.0 0.00000000050 0 normal
execute if score _ Random matches 0 at @s run particle item gold_nugget ~0.1 ~0.0 ~-0.0 ~1000000000.0 ~0.0 ~4.97 0.00000000050 0 normal
execute if score _ Random matches 0 at @s run particle item gold_nugget ~0.09 ~0.0 ~-0.05 ~866025344.0 ~0.0 ~-500000000.0 0.00000000050 0 normal
execute if score _ Random matches 0 at @s run particle item gold_nugget ~0.05 ~0.0 ~-0.09 ~500000000.0 ~0.0 ~-866025344.0 0.00000000050 0 normal
execute if score _ Random matches 0 at @s run particle item gold_nugget ~0.0 ~0.0 ~-0.1 ~-4.97 ~0.0 ~-1000000000.0 0.00000000050 0 normal
execute if score _ Random matches 0 at @s run particle item gold_nugget ~-0.05 ~0.0 ~-0.09 ~-500000000.0 ~0.0 ~-866025344.0 0.00000000050 0 normal
execute if score _ Random matches 0 at @s run particle item gold_nugget ~-0.09 ~0.0 ~-0.05 ~-866025472.0 ~0.0 ~-500000000.0 0.00000000050 0 normal
execute if score _ Random matches 0 at @s run particle item gold_nugget ~-0.1 ~0.0 ~-0.0 ~-1000000000.0 ~0.0 ~4.97 0.00000000050 0 normal
execute if score _ Random matches 0 at @s run particle item gold_nugget ~-0.09 ~0.0 ~0.05 ~-866025472.0 ~0.0 ~500000000.0 0.00000000050 0 normal
execute if score _ Random matches 0 at @s run particle item gold_nugget ~-0.05 ~0.0 ~0.09 ~-500000000.0 ~0.0 ~866025472.0 0.00000000050 0 normal

