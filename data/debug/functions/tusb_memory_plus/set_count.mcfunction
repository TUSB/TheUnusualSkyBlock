#> debug:tusb_memory_plus/set_count

data modify storage item: Item set from entity @s Item

execute store result storage item: Item.tag.Skill.Count int 1 run scoreboard players get #TUSBメモリーの回数を指定して実行！ _
data modify entity @s Item set from storage item: Item

scoreboard players reset #TUSBメモリーの回数を指定して実行！ _
data modify entity @s PickupDelay set value 0s

tellraw @p {"text":"TUSBメモリーを付与しました。"}
