execute if block ~ ~0.1 ~ enchanting_table positioned ~ ~0.1 ~ align xyz positioned ~0.5 ~-0.05 ~0.5 unless entity @e[tag=EnchantTable,distance=..0.5] run function item:enchant/enchanting_table/summon
execute if block ~0.1 ~ ~ enchanting_table positioned ~0.1 ~ ~ align xyz positioned ~0.5 ~-0.05 ~0.5 unless entity @e[tag=EnchantTable,distance=..0.5] run function item:enchant/enchanting_table/summon
execute if block ~-0.1 ~ ~ enchanting_table positioned ~-0.1 ~ ~ align xyz positioned ~0.5 ~-0.05 ~0.5 unless entity @e[tag=EnchantTable,distance=..0.5] run function item:enchant/enchanting_table/summon
execute if block ~ ~ ~0.1 enchanting_table positioned ~ ~ ~0.1 align xyz positioned ~0.5 ~-0.05 ~0.5 unless entity @e[tag=EnchantTable,distance=..0.5] run function item:enchant/enchanting_table/summon
execute if block ~ ~ ~-0.1 enchanting_table positioned ~ ~ ~-0.1 align xyz positioned ~0.5 ~-0.05 ~0.5 unless entity @e[tag=EnchantTable,distance=..0.5] run function item:enchant/enchanting_table/summon

#エンチャントテーブルのUIを強制的に閉じる
execute if block ~ ~0.1 ~ enchanting_table run setblock ~ ~0.1 ~ end_portal_frame[eye=true]
execute if block ~0.1 ~ ~ enchanting_table run setblock ~0.1 ~ ~ end_portal_frame[eye=true]
execute if block ~-0.1 ~ ~ enchanting_table run setblock ~-0.1 ~ ~ end_portal_frame[eye=true]
execute if block ~ ~ ~0.1 enchanting_table run setblock ~ ~ ~0.1 end_portal_frame[eye=true]
execute if block ~ ~ ~-0.1 enchanting_table run setblock ~ ~ ~-0.1 end_portal_frame[eye=true]
schedule function item:enchant/enchanting_table/resetblock 2t

# 探索成功フラグを落とす
scoreboard players set # _ 0