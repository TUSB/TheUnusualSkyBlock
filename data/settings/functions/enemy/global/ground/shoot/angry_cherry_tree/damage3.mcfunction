#Function
# 対象の最大HPの15%を防御無視で与える
    scoreboard players operation _ Damage = @s HPMax
    scoreboard players set _ _ 15
    scoreboard players operation _ Damage *= _ _
    scoreboard players set _ _ 100
    scoreboard players operation _ Damage /= _ _
    scoreboard players operation @s Damage += _ Damage
# 物理ダメージを与える際につけるタグを付与
    tag @s add ReceivedPhysicalDamage
    tag @s add HitDamageTaken
