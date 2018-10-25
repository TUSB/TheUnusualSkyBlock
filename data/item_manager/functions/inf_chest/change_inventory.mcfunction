#ガラス削除
clear @s minecraft:white_stained_glass_pane
#全撤去
execute store success score $remove Global run clear @s minecraft:chorus_flower
execute if score $remove Global matches 1 as @e[tag=inf_chest,limit=1,sort=nearest] run function item_manager:inf_chest/remove_all
#アイテム交換
scoreboard players set $cleared Global 0
scoreboard players set $summoned Global 0

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:white_wool{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:white_wool",Count:1b}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:snowball{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:snowball",Count:1b}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:arrow{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:arrow",Count:1b}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:polar_bear_spawn_egg{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:polar_bear_spawn_egg",Count:1b,tag:{display:{Name:"\"§fモードチェンジ§dルビー§f⇔§bサファイア\""},Enchantments:[{id:""}],EntityTag:{DeathLootTable:"minecraft:empty",Age:-1000,Tags:[Egg,Initialized],ActiveEffects:[{Id:14b,Duration:1000,ShowParticles:false}],DeathTime:19s,Silent:true,Pos:[0d,-300d,0d]}}}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:pig_spawn_egg{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:pig_spawn_egg",Count:1b,tag:{display:{Name:"\"§fサポートアクション§dルビー\""},Enchantments:[{id:""}],EntityTag:{DeathLootTable:"minecraft:empty",Age:-1000,Tags:[Egg,Initialized,TickingTask,ObserveCooldown,CooldownRequired],PortalCooldown:1,ActiveEffects:[{Id:14b,Duration:1000,ShowParticles:false}],DeathTime:19s,Silent:true}}}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:drowned_spawn_egg{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:drowned_spawn_egg",Count:1b,tag:{display:{Name:"\"§fサポートアクション§bサファイア\""},Enchantments:[{id:""}],EntityTag:{DeathLootTable:"minecraft:empty",IsBaby:true,Tags:[Egg,Initialized,TickingTask,ObserveCooldown,CooldownRequired],PortalCooldown:1,ActiveEffects:[{Id:14b,Duration:1000,ShowParticles:false}],DeathTime:19s,Silent:true,HandItems:[],ArmorItems:[]}}}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:emerald{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:emerald",Count:1b}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:bread{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:bread",Count:1b}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:enchanted_golden_apple{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:enchanted_golden_apple",Count:1b}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:air{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:air",Count:1b}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:air{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:air",Count:1b}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:air{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:air",Count:1b}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:air{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:air",Count:1b}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:air{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:air",Count:1b}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:air{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:air",Count:1b}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:air{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:air",Count:1b}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:air{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:air",Count:1b}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:air{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:air",Count:1b}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:air{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:air",Count:1b}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:air{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:air",Count:1b}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:air{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:air",Count:1b}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:air{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:air",Count:1b}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:air{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:air",Count:1b}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:air{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:air",Count:1b}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:air{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:air",Count:1b}}

execute if score $cleared Global matches 0 store result score $stacks Global store success score $cleared Global run clear @s minecraft:air{AttributeModifiers:[{AttributeName:"total"}]} 64
execute if score $summoned Global matches 0 if score $cleared Global matches 1 store success score $summoned Global run summon minecraft:item ~ ~ ~ {Tags:[inf_item],Item:{id:"minecraft:air",Count:1b}}


execute as @e[tag=inf_item,limit=1,sort=nearest] store result entity @s Item.Count byte 1 run scoreboard players get $stacks Global
tag @e[tag=inf_item,limit=1,sort=nearest] remove inf_item

tag @s remove change_inventory
