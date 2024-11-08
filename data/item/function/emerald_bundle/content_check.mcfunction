#> item:emerald_bundle/content_check
#中身が対象のアイテムのみかチェック
execute store result score _ Calc if data storage item: EmeraldBundle.Bundle.components."minecraft:bundle_contents"[]
execute store result score _ _ if data storage item: EmeraldBundle.Bundle.components."minecraft:bundle_contents"[{id:"minecraft:emerald"}]
scoreboard players operation _ Calc -= _ _
execute store result score _ _ if data storage item: EmeraldBundle.Bundle.components."minecraft:bundle_contents"[{id:"minecraft:iron_nugget",components:{}}]
scoreboard players operation _ Calc -= _ _
execute if score _ Calc matches 0 run function item:emerald_bundle/count_check
