#> ai:skill/teleport/

# 処理除外
execute if entity @s[tag=TargetChanged,tag=Unmoved] run return fail

#実行位置にTPする　ブロックにめり込む場合は後方に補正
function ai:skill/teleport/loop
#演出
execute if data storage mob_data: Call{Message:1b} run function makeup:ai/skill/teleport
