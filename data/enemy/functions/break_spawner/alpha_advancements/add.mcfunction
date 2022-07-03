#破壊したスポナーのタグを追加
data modify entity 0-0-0-0-0 Tags set value []
data modify entity 0-0-0-0-0 Tags set from storage v13alpha: Advancements
data modify entity 0-0-0-0-0 Tags append from entity @s ArmorItems[0].tag.Advancement
data modify storage v13alpha: Advancements set from entity 0-0-0-0-0 Tags

execute as @a run function enemy:break_spawner/alpha_advancements/update
