#スキルをロード
scoreboard players operation _ _ = @s ChangeSkill
function skill:load/job
#付与可能かチェック
#剣・斧で攻撃は条件を満たしていれば近接攻撃に切り替え
scoreboard players set _ _ 0
execute if data storage skill: Skill{Trigger:"剣・斧で攻撃"} if predicate skill:trigger/weapon run data modify storage skill: Skill.Trigger set value "近接攻撃する"
execute if data storage skill: Skill{Trigger:"弓を構えて矢を撃つ"} if data storage item: Item{id:"minecraft:bow"} store success score _ _ run function skill:trigger/set/set
execute if data storage skill: Skill{Trigger:"クロスボウを構えて矢を撃つ"} if data storage item: Item{id:"minecraft:crossbow"} store success score _ _ run function skill:trigger/set/set
execute if data storage skill: Skill{Trigger:"人参棒を使用"} if data storage item: Item{id:"minecraft:carrot_on_a_stick"} store success score _ _ run function skill:trigger/set/set
execute if data storage skill: Skill{Trigger:"近接攻撃する"} store success score _ _ run function skill:trigger/set/set
#失敗時
execute if score _ _ matches 0 at @s run function makeup:skill/trigger/error/mismatched_trigger
