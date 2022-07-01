### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Team:"Friendly",CustomName:'{"translate":"歴戦の行商人・エモン","color":"#00FF00","bold":true}',PortalCooldown:3000,DeathLootTable:"empty",Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:beef",Count:4b},maxUses:8},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:chicken",Count:4b},maxUses:8},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:mutton",Count:4b},maxUses:8},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:porkchop",Count:4b},maxUses:8},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:rabbit",Count:4b},maxUses:8},{buy:{id:"minecraft:barrier",tag:{display:{Name:'{"translate":"おっと、こいつぁ売り物じゃねーんだ。","color":"#FF0000","bold":true,"italic":false}'}},Count:1b},sell:{id:"minecraft:diamond_sword",tag:{CustomModelData:1,display:{Name:'{"translate":"エンド・オブ・エンド","color":"dark_purple","bold":true,"italic":false}',Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(VI)","color":"white","with":[{"translate":"刃の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"刃",Tier:6},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"カスタム",Amount:875,Operation:0,UUID:[I;11,0,0,40],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"デフォルト",Amount:30,Operation:0,UUID:[I;11,0,1,40],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"デフォルト",Amount:1.6,Operation:0,UUID:[I;11,0,1,50],Slot:"mainhand"}]},Count:1b},maxUses:2147483647}]},VillagerData:{level:99,profession:"nitwit",type:"jungle"},Tags:[Mob,DelayedData,CallOnDamage,TickingRequired,DamageProjectile,FriendlyProjectile,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"diamond_sword",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:"歴戦の行商人・エモン",Id:[I;1,0,64,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGYzZjdhZmNiMzIwMGI2ZDRiZjUwYmVkODA4ZDFlNjc3MDZjODE4NWM2NjkyMWU0OTYyZTI0NTQ4ODM1ZmVjOCJ9fX0="}]}}}}],HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 6d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/all/villager",Count:1,Chance:0.51d},{Item:{id:"minecraft:beef"},Count:1,CountRange:8,Chance:1d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Condition:[{Name:"HasTarget",Target:{Look:"Enemy",Radius:4d,IgnoreBlocks:true}},{Name:"MinHP",Inverse:true,HP:50,Percent:true}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Neutrality,Blow,Emon,Betrayal],Level:60}]]},{Condition:[{Name:"HasTarget",Target:{Look:"Enemy",Radius:4d,IgnoreBlocks:true}},{Name:"MinHP",Inverse:true,HP:50,Percent:true}],Name:"Kill"},{Condition:[{Name:"MP",MP:20}],Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:24}}],Name:"Step",Direction:[0f,-3f],Speed:3.0d}],ProjectileDamage:{Physical:50,Light:50,Dark:50}}
