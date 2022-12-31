#中身が対象のアイテムのみかチェック
execute store result score _ Calc if data storage item: Bundle.tag.Items[]
execute store result score _ _ if data storage item: Bundle.tag.Items[{id:"minecraft:gold_nugget",tag:{EnchantStone:1b}}]
execute if score _ Calc = _ _ run function item:jewel_bundle/count_check
