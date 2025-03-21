#Function
# Call DamageのExplosionのみを呼び出す
    data modify storage mob_data: Call.Explosion set value 3b
    execute at @e[predicate=entity:friendly,distance=..0.5,sort=nearest,limit=1] run function skill:enemy/damage/explosion
# 無敵にする
    effect give @s resistance 2 4 true
