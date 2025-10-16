#> ai:skill/laser/main/init
#ダメージ設定
data modify storage entity: damage merge from storage mob_data: Call.damage

#モブ名取得
data modify storage mob_data: MobName set from entity @s CustomName

#CallOnAttack
data modify storage mob_data: Call.UUID set from entity @s UUID
data modify storage mob_data: Call.Owner set from entity @s Owner
data modify storage mob_data: Call.Tags set from entity @s Tags

#ループ実行
execute anchored eyes run function ai:skill/laser/main/fork
