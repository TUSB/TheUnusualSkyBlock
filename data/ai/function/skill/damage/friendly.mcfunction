#> ai:skill/damage/friendly
#非プレイヤーFriendlyに物理ダメージとして与える
execute store result score _ Damage run data get storage score_damage: Argument.Damage
data modify storage skill: damage set value {hit:1b}
function skill:damage/apply/physical
#HitDamage付与
tag @s add HitDamageTaken
