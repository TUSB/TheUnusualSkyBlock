#> skill:trigger/set/check_trigger
#スキルをロード
scoreboard players operation _ _ = @s ChangeSkill
function skill:load/job
#剣・斧で攻撃は条件を満たしていれば近接攻撃に切り替え
execute if data storage skill: Skill{Trigger:"剣・斧で攻撃"} if predicate skill:trigger/weapon/mainhand run data modify storage skill: Skill.Trigger set value "近接攻撃する"
execute if data storage skill: Skill{Trigger:"人参棒を使用"} run data modify storage skill: Skill.Trigger set value "手に持って右クリック"
#付与可能かチェック
scoreboard players set _ _ 0
execute if data storage skill: Skill{Trigger:"弓を構えて矢を撃つ"} if data storage item: Item{id:"minecraft:bow"} run scoreboard players set _ _ 1
execute if data storage skill: Skill{Trigger:"クロスボウを構えて矢を撃つ"} if data storage item: Item{id:"minecraft:crossbow"} run scoreboard players set _ _ 1
execute if data storage skill: Skill{Trigger:"手に持って右クリック"} if data storage item: Item{id:"minecraft:carrot_on_a_stick"} run scoreboard players set _ _ 1
execute if data storage skill: Skill{Trigger:"盾で攻撃を防ぐ"} if data storage item: Item{id:"minecraft:shield"} run scoreboard players set _ _ 1
execute if data storage skill: Skill{Trigger:"剣を持った状態でスニーク解除"} if predicate skill:trigger/sword run scoreboard players set _ _ 1
execute if data storage skill: Skill{Trigger:"近接攻撃する"} run scoreboard players set _ _ 1
#実行
execute if score _ _ matches 1 run function skill:trigger/set/set
execute if score _ _ matches 0 run function makeup:skill/trigger/error/mismatched_trigger
