#Function
# 対象の最大HPの10%ダメージを追加で与える
    scoreboard players operation _ Damage = @s HPMax
    scoreboard players set _ _ 10
    scoreboard players operation _ Damage *= _ _
    scoreboard players set _ _ 100
    scoreboard players operation _ Damage /= _ _
    function skill:damage/apply/physical
# 物理ダメージを与える際につけるタグを付与
    tag @s add ReceivedPhysicalDamage
    tag @s add HitDamageTaken
