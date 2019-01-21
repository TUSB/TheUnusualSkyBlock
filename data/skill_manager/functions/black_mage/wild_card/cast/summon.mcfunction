##############################
### ワイルドカード 魔法召喚
##############################

scoreboard players operation $WildCard Global = @s WildCard

##### A
#0/4/8/16/32m前方
###弾召喚
summon minecraft:trident 1 1 1 {Tags:[Initializing0,CooldownRequired],PortalCooldown:3,NoGravity:true,Silent:true,DealtDamage:true,Passengers:[{id:"minecraft:area_effect_cloud",Tags:[NativeTask,WildCard,Initializing],Duration:220}]}
###モーションを計算する
execute positioned ^ ^ ^-0.1 run tp @e[tag=Initializing0,limit=1] ~ ~1.52 ~
execute as @e[tag=Initializing0,limit=1] positioned ~ ~1.52 ~ run function calc_manager:get/direction1
###モーション補正
execute if score $WildCard Global matches 10000000..10999999 anchored eyes run kill @e[tag=Initializing0,limit=1]
execute if score $WildCard Global matches 11000000..11999999 anchored eyes run scoreboard players set $M Global 125
execute if score $WildCard Global matches 12000000..12999999 anchored eyes run scoreboard players set $M Global 250
execute if score $WildCard Global matches 13000000..13999999 anchored eyes run scoreboard players set $M Global 500
execute if score $WildCard Global matches 14000000..14999999 anchored eyes run scoreboard players set $M Global 999

function calc_manager:multiply/pos1
###モーション適用
execute as @e[tag=Initializing0,limit=1] at @s run function calc_manager:set/motion1

##### B
#0/2/5/10秒後
scoreboard players operation $WildCard Global %= $1000000 Const
execute if score $WildCard Global matches 0..99999 run scoreboard players set @e[tag=Initializing,limit=1] WildCard -1003
execute if score $WildCard Global matches 100000..199999 run scoreboard players set @e[tag=Initializing,limit=1] WildCard -1043
execute if score $WildCard Global matches 200000..299999 run scoreboard players set @e[tag=Initializing,limit=1] WildCard -1103
execute if score $WildCard Global matches 300000..399999 run scoreboard players set @e[tag=Initializing,limit=1] WildCard -1203

##### C
#半径4/8/12/16m
scoreboard players operation $WildCard Global %= $100000 Const
execute if score $WildCard Global matches 0..9999 run tag @e[tag=Initializing,limit=1] add WCVerySmall
execute if score $WildCard Global matches 10000..19999 run tag @e[tag=Initializing,limit=1] add WCSmall
execute if score $WildCard Global matches 20000..29999 run tag @e[tag=Initializing,limit=1] add WCBig
execute if score $WildCard Global matches 30000..39999 run tag @e[tag=Initializing,limit=1] add WCVeryBig

##### F
scoreboard players operation $WildCard Global %= $10000 Const
execute if score $WildCard Global matches 0..99 run tag @e[tag=Initializing,limit=1] add WCResistance
execute if score $WildCard Global matches 100..199 run tag @e[tag=Initializing,limit=1] add WCHeal
execute if score $WildCard Global matches 200..299 run tag @e[tag=Initializing,limit=1] add WCDamage

##### D
scoreboard players operation $WildCard Global %= $100 Const
execute if score $WildCard Global matches 0..9 run tag @e[tag=Initializing,limit=1] add WCVeryWeak
execute if score $WildCard Global matches 10..19 run tag @e[tag=Initializing,limit=1] add WCWeak
execute if score $WildCard Global matches 20..29 run tag @e[tag=Initializing,limit=1] add WCStrong
execute if score $WildCard Global matches 30..39 run tag @e[tag=Initializing,limit=1] add WCVeryStrong

##### E
scoreboard players operation $WildCard Global %= $10 Const
execute if score $WildCard Global matches 0 run tag @e[tag=Initializing,limit=1] add WCVeryShort
execute if score $WildCard Global matches 1 run tag @e[tag=Initializing,limit=1] add WCShort
execute if score $WildCard Global matches 2 run tag @e[tag=Initializing,limit=1] add WCLong
execute if score $WildCard Global matches 3 run tag @e[tag=Initializing,limit=1] add WCVeryLong

scoreboard players reset @s WildCard
tag @e[tag=Initializing,limit=1] remove Initializing

#CastIDに移行
execute if score @s ModeSkillRed matches 51071..51079 run scoreboard players remove @s ModeSkillRed 10
execute if score @s ModeSkillBlue matches 51071..51079 run scoreboard players remove @s ModeSkillBlue 10

scoreboard players operation @s[tag=ModeRed] ModeSkill = @s ModeSkillRed
scoreboard players operation @s[tag=ModeBlue] ModeSkill = @s ModeSkillBlue
scoreboard players operation @s[tag=ModeRed] ModeCost = $5106 Cost
scoreboard players operation @s[tag=ModeBlue] ModeCost = $5106 Cost
scoreboard players operation @s[tag=ModeRed] ModeInterval = $5106 Interval
scoreboard players operation @s[tag=ModeBlue] ModeInterval = $5106 Interval

###---演出---Start
playsound minecraft:block.enchantment_table.use master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:block.enchantment_table.use master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.enchantment_table.use master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:block.beacon.ambient master @a[distance=..16] ~ ~ ~ 1 2
particle minecraft:witch ~ ~0.1 ~ 1 0 1 1 50 force @a[tag=ShowParticles]
###---演出---End
