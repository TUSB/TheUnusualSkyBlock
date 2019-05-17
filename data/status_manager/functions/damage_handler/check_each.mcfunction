##############################
### ダメージ処理
##############################

### 自然ダメージ算出
execute as @s[tag=!NoNaturalDamage,nbt=!{AbsorptionAmount:1000000f}] run function status_manager:damage_handler/on_natural_damaged

### 全般ダメージ処理
execute as @s[scores={Damaged=1..}] run function status_manager:damage_handler/on_damaged
