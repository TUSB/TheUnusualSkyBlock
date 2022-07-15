
### サヨナラ発動

function makeup:skill/act/ninja/sayonara/death

###レイズ付与
execute if score @s MP matches 100.. run tag @s add Raise

### ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"サヨナラ",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"サヨナラ",Level:2}].Damage
function skill:damage/add/skill/magic

###距離算出/MP補正
scoreboard players set _ _ 100
scoreboard players operation _ SayonaraLevel = @s MP
scoreboard players operation _ SayonaraLevel < _ _
scoreboard players operation @s MPConsumption = @s MP
scoreboard players operation @s MPConsumption < _ _

### ダメージ付与
execute if score _ SayonaraLevel matches 00.. as @e[distance=0..4,tag=Enemy] run function skill:damage/apply/
execute if score _ SayonaraLevel matches 20.. as @e[distance=4..8,tag=Enemy] run function skill:damage/apply/
execute if score _ SayonaraLevel matches 40.. as @e[distance=8..12,tag=Enemy] run function skill:damage/apply/
execute if score _ SayonaraLevel matches 60.. as @e[distance=12..16,tag=Enemy] run function skill:damage/apply/
execute if score _ SayonaraLevel matches 80.. as @e[distance=16..20,tag=Enemy] run function skill:damage/apply/

###レイズ適用
execute if entity @s[tag=Raise] run function skill:act/white_mage/araise/raise
