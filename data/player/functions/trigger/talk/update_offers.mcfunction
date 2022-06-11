### 取引更新

data modify entity 0-0-0-0-0 Tags set value []
data modify entity 0-0-0-0-0 Tags set from entity @s ArmorItems[0].tag.SpawnTags
execute as 0-0-0-0-0 run function settings:enemy/
data modify entity @s Offers set from storage tusb_mob: "即時ステータス"."ベース".Offers
