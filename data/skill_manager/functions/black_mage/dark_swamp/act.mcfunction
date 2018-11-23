##############################
### ダークスワンプ発動
##############################

###ダークスワンプ発動
summon minecraft:armor_stand ~ ~ ~ {Tags:[DarkSwamp,ObserveCooldown,Initializing],Marker:true,Invisible:true,Invulnerable:true,Small:true,NoBasePlate:true,NoGravity:true}
scoreboard players operation $DarkSwamp ID = @s ID
###ダメージ/吸収レート
execute if score @s ModeSkill matches 52081 run scoreboard players set $AbsorbRate Global 500
execute if score @s ModeSkill matches 52082 run scoreboard players set $AbsorbRate Global 300
execute if score @s ModeSkill matches 52083 run scoreboard players set $AbsorbRate Global 200
###サブルーチンコール
execute as @e[tag=Initializing,limit=1] run function skill_manager:black_mage/dark_swamp/act2
