##############################
### ダークスワンプ発動
##############################

###ダークスワンプ発動
execute at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Tags:[DarkSwamp,ObserveCooldown,Initializing],Marker:true,Invisible:true,Invulnerable:true,Small:true,NoBasePlate:true,NoGravity:true}
scoreboard players operation $DarkSwamp ID = @s ID
###ダメージ/吸収レート
execute if score @s ModeSkill matches 52071 run scoreboard players set $AbsorbRate Global 50
execute if score @s ModeSkill matches 52072 run scoreboard players set $AbsorbRate Global 30
execute if score @s ModeSkill matches 52073 run scoreboard players set $AbsorbRate Global 20
###サブルーチンコール
execute as @e[tag=Initializing,limit=1] run function skill_manager:black_mage/dark_swamp/act2
