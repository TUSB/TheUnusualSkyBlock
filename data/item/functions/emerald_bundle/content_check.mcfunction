#中身が対象のアイテムのみかチェック
execute store result score _ Calc if data storage item: Bundle.tag.Items[]
execute store result score _ _ if data storage item: Bundle.tag.Items[{id:"minecraft:emerald"}]
scoreboard players operation _ Calc -= _ _
execute store result score _ _ if data storage item: Bundle.tag.Items[{id:"minecraft:iron_nugget",tag:{}}]
scoreboard players operation _ Calc -= _ _
execute if score _ Calc matches 0 run function item:emerald_bundle/count_check
