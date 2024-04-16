
### セイクリッドピラー発動


# 現在体力の最大値 + 衝撃吸収での体力値(x10)
execute store result score _ Calc run attribute @s minecraft:generic.max_health get 10
execute store result score _ _ run data get entity @s AbsorptionAmount 10
scoreboard players operation _ Calc += _ _

# 職業による体力最大値(x10) + ベースの体力20(x10)
scoreboard players set _ _ 4
scoreboard players operation _ HPMax = @s HPMax
scoreboard players operation _ _ *= _ HPMax
scoreboard players add _ _ 200
# 100を引くことで合計職業Lvになる
scoreboard players remove _ HPMax 100

# 最大体力 - 職業による体力最大値(x10)
scoreboard players operation _ Calc -= _ _
scoreboard players operation _ HP = _ Calc

# A = ([_ HP]^2)/100 + 1125 )
scoreboard players operation _ Calc *= _ Calc
scoreboard players set _ _ 100
scoreboard players operation _ Calc /= _ _
scoreboard players add _ Calc 1125

# A * [_ HP]
scoreboard players operation _ Calc *= _ HP

# B = 135*(Lv合計 + 150)
scoreboard players operation @s _ = _ HPMax
scoreboard players add @s _ 150
scoreboard players set _ _ 135
scoreboard players operation @s _ *= _ _

# (A/B) + 100 (倍率の100倍)
scoreboard players operation _ Calc /= @s _
scoreboard players add _ Calc 100

# 35Lv基準でレベル補正 0.5 * (Lv合計 - 35)
scoreboard players operation @s _ = _ HPMax
scoreboard players remove @s _ 35
scoreboard players set _ _ 2
scoreboard players operation @s _ /= _ _

# 倍率合計
scoreboard players operation _ SpecialAttack = @s _
scoreboard players operation _ SpecialAttack += _ Calc

#ダメージあれば成功
execute if score _ SpecialAttack matches ..0 run function makeup:skill/act/white_mage/sacred_pillar/failure
execute if score _ SpecialAttack matches 1.. run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[Skill,SacredPillar,NativeTask],Duration:1}
execute if score _ SpecialAttack matches 1.. as @e[tag=SacredPillar,tag=!Initialized,limit=1,distance=..0.01] run function skill:act/white_mage/sacred_pillar/success
execute if score _ SpecialAttack matches 1.. run function skill:act/white_mage/sacred_pillar/player_damage

#HP回復
effect give @s minecraft:instant_health 1 20 true
