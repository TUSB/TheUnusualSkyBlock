#Function
# 対象にダメージを与える
    scoreboard players operation _ Damage = @s Attack
    function skill:damage/apply/physical
# 物理ダメージを与える際につけるタグを付与
    tag @s add ReceivedPhysicalDamage
    tag @s add HitDamageTaken
# 確定で超デバフ
    effect give @s slowness 30 2
    effect give @s wither 30 2
