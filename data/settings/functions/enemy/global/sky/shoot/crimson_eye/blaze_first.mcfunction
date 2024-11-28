#Function
# ループ数指定
    scoreboard players set # Calc 64
# プレイヤーの方向にレーザー予告線を飛ばす
    execute if entity @a[predicate=entity:player,distance=..16] facing entity @a[predicate=entity:player,distance=..32,sort=nearest,limit=1] eyes positioned ^ ^ ^0.25 if block ^ ^ ^ #block:no_collision run function settings:enemy/global/sky/shoot/crimson_eye/blaze_first_loop
