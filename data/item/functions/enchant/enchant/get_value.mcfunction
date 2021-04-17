#Value[<Level>]を取得する
execute unless data storage item: {Enchant:{Level:0}} run data modify storage item: Enchant.Value append value 0
execute store result storage item: Enchant.Level int 1 run data get storage item: Enchant.Level 0.9999999999
execute unless data storage item: {Enchant:{Level:0}} run function item:enchant/enchant/get_value
execute if data storage item: {Enchant:{Level:0}} run data get storage item: Enchant.Value[-9]
