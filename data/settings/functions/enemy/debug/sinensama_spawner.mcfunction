

# 設定方法例

# C (Bの上)
# B B2 B3 (３つ重なって召喚される)
# A (一番下)
# のような召喚をしたい場合は以下のように指定する

# SpawnEntities:[
#    [{Tags:[A],Level:10}],
#    [{Tags:[B3],Level:10},{Tags:[B2],Level:10},{Tags:[B],Level:10}],
#    [{Tags:[C],Level:10}]
#]

summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:command_block",Count:1b,tag:{BlockEntityTag:{conditionMet:0b,auto:1b,powered:0b,Command:'summon minecraft:armor_stand ~ ~-1.4999 ~ {CustomName:\'{"text":"システムアマスタ"}\',NoGravity:true,Small:true,Invulnerable:true,Invisible:true,Marker:true,Passengers:[{id:"minecraft:spawner_minecart",CustomName:\'{"text":"擬態スポナー"}\',Invulnerable:1b,CustomDisplayTile:1b,DisplayOffset:12,DisplayState:{Name:"minecraft:chorus_plant",Properties:{up:"true"}},SpawnCount:1s,SpawnRange:5s,MaxNearbyEntities:6s,Delay:-1s,MinSpawnDelay:90s,MaxSpawnDelay:250s,RequiredPlayerRange:20s,SpawnPotentials:[{Weight:1,Entity:{id:"minecraft:villager",Tags:[Spawn],Attributes:[{Name:"minecraft:generic.movement_speed",Modifiers:[{Amount:0d,Operation:0,UUID:[I;50,0,0,0]}]}],DeathTime:19s,NoAI:true,Silent:true,Invulnerable:true,AbsorptionAmount:99f,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:9999,ShowParticles:false}],Inventory:[{id:"minecraft:stick",Count:1b,tag:{SpawnEntities:[[{Tags:[Pig],Level:10}],[{Tags:[Sheep],Level:1},{Tags:[Sheep1],Level:2},{Tags:[Sheep2],Level:3}],[{Tags:[Cow],Level:20}]]}}]}}]}]}'}}}}
