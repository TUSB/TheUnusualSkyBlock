#Function
#ダメージコマンド初期化
data remove storage score_damage: Argument
data modify storage score_damage: Argument set value {DamageType:[Global]}
execute store result storage score_damage: Argument.Damage double 0.2 run scoreboard players get @s SpecialAttack
data modify storage mob_data: MobName set from entity @s CustomName
##oh_my_datに保存してある距離の取得
execute store result score # _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Range
#近くにいるプレイヤーとの距離を比較
execute as @a[distance=..4,predicate=entity:player,scores={ProjectileTime=-5..}] run function settings:enemy/skylands/sky/shoot/impure_skull/doom_tick2
#距離減算
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Range int 1 run scoreboard players remove # _ 15
