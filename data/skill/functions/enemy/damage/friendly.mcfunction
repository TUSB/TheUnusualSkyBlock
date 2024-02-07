#非プレイヤーFriendlyに物理ダメージとして与える
execute store result score _ Damage run data get storage score_damage: Argument.Damage
data modify storage skill: Damage set value {Hit:1b}
function skill:damage/apply/physical
#HitDamage付与
tag @s add HitDamageTaken
