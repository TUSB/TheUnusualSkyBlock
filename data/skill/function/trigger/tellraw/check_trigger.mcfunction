#> skill:trigger/tellraw/check_trigger
# skill: Skillのトリガーについて
# メインハンドに持っているアイテムと比較する
# トリガーと合致していればtrue、していなければfailを返す

# 何も持っていない場合はtrueを返す
execute unless items entity @s weapon.mainhand * run return 1

# トリガーとアイテムを比較する
execute if data storage skill: Skill{Trigger:"剣・斧で攻撃"} if predicate skill:trigger/weapon/mainhand run return 1
execute if data storage skill: Skill{Trigger:"人参棒を使用"} if items entity @s weapon.mainhand minecraft:carrot_on_a_stick run return 1
execute if data storage skill: Skill{Trigger:"弓を構えて矢を撃つ"} if items entity @s weapon.mainhand minecraft:bow run return 1
execute if data storage skill: Skill{Trigger:"クロスボウを構えて矢を撃つ"} if items entity @s weapon.mainhand minecraft:crossbow run return 1
execute if data storage skill: Skill{Trigger:"盾で攻撃を防ぐ"} if items entity @s weapon.mainhand minecraft:shield run return 1
execute if data storage skill: Skill{Trigger:"剣を持った状態でスニーク解除"} if predicate skill:trigger/sword run return 1
# 合致していなければfail
return fail
