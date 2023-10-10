### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie_villager",CustomName:'{"translate":"きらめくヒツジンさん","color":"#FF009A"}',IsBaby:true,Silent:true,Team:"Null",PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnInit,CallOnDamage,CallOnAttack,CallOnTick,TickingRequired,SmartMotion,Bounce,DamageProjectile,EnemyProjectile,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],HandItems:[],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:true,display:{color:16776960}}},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:true,display:{color:16776960}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:true,display:{color:16776960}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;9999,0,0,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzBmNTAzOTRjNmQ3ZGJjMDNlYTU5ZmRmNTA0MDIwZGM1ZDY1NDhmOWQzYmM5ZGNhYzg5NmJiNWNhMDg1ODdhIn19fQ=="}]}}}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 20
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 500
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier7/common",Count:1,Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sはチュートリアルを読まなかったので、哀れにも%2$sの持っていた羊毛の角に当たってしまいその日は家に帰宅した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"この世界において最弱の敵。チュートリアルは済んだか？ヒューマン"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d},Anchor:"Eyes"},{Name:"Rotation",Absolute:{Horizontal:true},Flip:true},{Name:"Rotation",Direction:[-20f,0f],DirectionRange:[40f,-40f]}],Name:"SmartMotion",TP:true,Start:true,Speed:{Set:50d},Gravity:{Set:100d}}],Death:[{Name:"Function",Tags:[Global,Ground,Blow,SheepMan,DeathSound]}],Damage:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d},Anchor:"Eyes"},{Name:"Rotation",Absolute:{Horizontal:true},Flip:true},{Name:"Rotation",Direction:[-20f,0f],DirectionRange:[40f,-40f]}],Name:"SmartMotion",TP:true,Speed:{Set:50d}}],Attack:[{Name:"Function",Tags:[Global,Ground,Blow,SheepMan,DamageSound]}],Tick:[{Name:"SmartMotion",Speed:{Add:-1d,Limit:0d},Gravity:{}}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:25,Max:60,Current:25},Call:[{Condition:[{Global:1b,Name:"HasTarget",Target:{Look:"Friendly",Radius:24d}},{Name:"MinMP",MP:1}],Name:"MergeNBT",NBT:{HandItems:[{id:"minecraft:yellow_wool",Count:1b},{}]}},{Name:"ChangeTurn",Loop:1}]}]},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"DelayAction",Tags:["Casting","FinishingMove"]}]},{Interval:{Min:60,Max:60,Current:60},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:20,Current:20},Call:[{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Speed:1d},{Name:"Rotation",Direction:[-2f,-2f],DirectionRange:[4f,4f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Blow,SheepMan,Bullet],Level:1}]]}],MP:1},{Interval:{Min:2,Max:2,Current:2},Call:[{Name:"MergeNBT",NBT:{HandItems:[]}},{Name:"ChangeTurn",Loop:1}]}]}]}
