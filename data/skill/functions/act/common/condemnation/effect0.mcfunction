##############################
### 実行者に効果を適用します
##############################

#初撃ならばレベルを減少
execute if entity @s[tag=!CondemnationApplied] run function skill:act/common/condemnation/effect1

#ダメージ付与
#ボスであれば追加ダメージ(x2)
function skill:damage/apply/
execute if entity @s[tag=Boss] run function skill:damage/apply/
