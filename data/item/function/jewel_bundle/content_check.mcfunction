#> item:jewel_bundle/content_check
#中身が対象のアイテムのみかチェック
execute store result score _ Calc if data storage item: JewelBundle.Bundle.components."minecraft:bundle_contents"[]
execute store result score _ _ if data storage item: JewelBundle.Bundle.components."minecraft:bundle_contents"[{id:"minecraft:gold_nugget",components:{"minecraft:custom_data":{EnchantStone:1b}}}]
execute if score _ Calc = _ _ run function item:jewel_bundle/count_check
