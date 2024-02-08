##############################
### モブ毎ティック処理
##############################

### Mob自然ダメージ反映
execute if entity @s[nbt=!{AbsorptionAmount:1000000f}] run function enemy:update_absorption_amount

### Mobダメージ反映
execute if entity @s[scores={Damage=-2147483648..}] run function enemy:update_health

### 1秒処理
execute if score $Tick Count matches 0 run function enemy:one_second

#ダメージ表示(10tickごと)
execute if score $Tick Count matches 10 if entity @s[scores={StoredDamage=-2147483648..}] run function enemy:show_damage/

#投射物無敵時間を更新
scoreboard players add @s ProjectileTime 1
