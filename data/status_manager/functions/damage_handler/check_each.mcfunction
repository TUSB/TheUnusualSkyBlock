##############################
### ダメージ処理
##############################

### 自然ダメージ算出
execute if entity @s[tag=!NoNaturalDamage,nbt=!{AbsorptionAmount:1000000f}] run function status_manager:damage_handler/on_natural_damaged

### 全般ダメージ処理
execute if entity @s[scores={Damage=1..}] run function status_manager:damage_handler/on_damaged
