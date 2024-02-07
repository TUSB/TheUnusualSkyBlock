#Function
# 対象にダメージを与える
    scoreboard players operation _ Damage = @s Attack
    function skill:damage/apply/physical
# 物理ダメージを与える際につけるタグを付与
    tag @s add ReceivedPhysicalDamage
    tag @s add HitDamageTaken
# 音
    playsound block.redstone_torch.burnout hostile @a[distance=..16] ~ ~ ~ 0.6 0
