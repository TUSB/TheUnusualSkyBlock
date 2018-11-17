#異物を[26]に移動
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:4b}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:4b,id:"minecraft:pig_spawn_egg"}]} unless block ~ ~ ~ minecraft:chest{Items:[{Slot:4b,id:"minecraft:white_stained_glass_pane"}]} store result block ~ ~ ~ Items[4].Slot byte 1 run scoreboard players get $26 Const
#スタック数取得  空・ガラスなら0
execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:4b,id:"minecraft:pig_spawn_egg"}]} store result score $stacks Global run data get block ~ ~ ~ Items[4].Count 1
#inf_slot計算
execute if score $inf_slot4 Global matches 0..64 store success score $flag Global run scoreboard players operation $inf_slot4 Global = $stacks Global
execute if score $inf_slot4 Global matches 65.. if score $flag Global matches 0 run scoreboard players operation $inf_slot4 Global += $stacks Global
execute if score $inf_slot4 Global matches 65.. if score $flag Global matches 0 run scoreboard players remove $inf_slot4 Global 64
#アイテムとスタック数、attributeセット
execute if score $inf_slot4 Global matches 0 run replaceitem block ~ ~ ~ container.4 minecraft:white_stained_glass_pane{display:{Name:"\"§fサポートアクション§dルビー\""}} 1
execute if score $inf_slot4 Global matches 1.. run replaceitem block ~ ~ ~ container.4 minecraft:pig_spawn_egg{AttributeModifiers:[{AttributeName:"total",Amount:0,Operation:0,Slot:"mainhand",UUIDLeast:1,UUIDMost:1}],display:{Name:"\"§fサポートアクション§dルビー\""},Enchantments:[{id:""}],EntityTag:{DeathLootTable:"minecraft:empty",Age:-1000,Tags:[Egg,Initialized,NativeTask,ObserveCooldown,CooldownRequired],PortalCooldown:1,ActiveEffects:[{Id:14b,Duration:1000,ShowParticles:false}],DeathTime:19s,Silent:true}} 16
execute if score $inf_slot4 Global matches 1..64 if block ~ ~ ~ minecraft:chest{Items:[{Slot:4b}]} store result block ~ ~ ~ Items[4].Count byte 1 run scoreboard players get $inf_slot4 Global
execute if score $inf_slot4 Global matches 1.. if block ~ ~ ~ minecraft:chest{Items:[{Slot:4b}]} store result block ~ ~ ~ Items[4].tag.AttributeModifiers[0].Amount int 1 run scoreboard players get $inf_slot4 Global
