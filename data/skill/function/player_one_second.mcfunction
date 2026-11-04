#> skill:player_one_second
# -> 10秒処理
## 使用するときにコメントアウトを外してください。
# execute if score $Seconds Count matches 0 run function skill:player_ten_seconds

## 忍者
# 風切
execute if entity @s[scores={Kazakiri=0..}] run function skill:act/ninja/kazakiri/second

# 黙想
execute if entity @s[scores={Mokuso=0..}] run function skill:act/ninja/mokuso/tick

## 共通
# スカイウォーク
execute if entity @s[scores={SkyWalk=1..}] run function skill:act/common/sky_walk/tick

# 怪しい粉
execute if entity @s[scores={SuspiciousPowderTime=1..}] run function skill:act/common/suspicious_powder/one_second
