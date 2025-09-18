#> skill:native_tick
# -> 1秒処理
## 使用するときにコメントアウトを外してください。
# execute if score $Ticks Count matches 0 run function skill:native_one_second

## 剣士
# 真空斬り
execute if entity @s[tag=AerialSlash] run function skill:act/knight/aerial_slash/tick
# 影封縫
execute if entity @s[tag=ShadowThrust] run function skill:act/knight/shadow_thrust/tick

## 忍者
# 介錯
execute if entity @s[tag=KaishakuExplosion] run function skill:act/ninja/kaishaku/explode_tick

## 狩人
# ステークスファイア
execute if entity @s[tag=StakesFire] run function makeup:skill/act/hunter/stakes_fire/tick
