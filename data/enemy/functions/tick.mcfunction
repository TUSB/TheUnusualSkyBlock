##############################
### モブ毎ティック処理
##############################

### 一時的毎tick処理呼び出し
execute unless score @s TemporaryEffects matches 0 run function main:task/temporary

### Mob自然ダメージ反映
execute if entity @s[nbt=!{AbsorptionAmount:1000000f}] run function enemy:update_absorption_amount

### Mobダメージ反映
execute if entity @s[scores={Damage=-2147483648..}] run function enemy:update_health

### 1秒処理
execute if score $Tick Count matches 0 run function enemy:one_second

#投射物無敵時間を更新
scoreboard players add @s[team=Friendly] SnowballTime 1
