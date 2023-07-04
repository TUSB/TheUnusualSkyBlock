### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie_villager",CustomName:'{"translate":"ヒツジンさん","color":"#FFFFFF"}',IsBaby:true,Silent:true,Team:"",PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDeath,CallOnInit,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],HandItems:[],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Unbreakable:true,display:{color:16777215}}},{id:"minecraft:leather_leggings",Count:1b,tag:{Unbreakable:true,display:{color:16777215}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:true,display:{color:16777215}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;9999,0,0,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzBmNTAzOTRjNmQ3ZGJjMDNlYTU5ZmRmNTA0MDIwZGM1ZDY1NDhmOWQzYmM5ZGNhYzg5NmJiNWNhMDg1ODdhIn19fQ=="}]}}}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.15d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 200
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 5
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 5
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.51d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sはチュートリアルを読まなかったので、哀れにも%2$sの持っていた羊毛の角に当たってしまいその日は家に帰宅した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"この世界において最弱の敵。チュートリアルは済んだか？ヒューマン"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true}}],Name:"Step",Direction:[-180f,-180f],DirectionRange:[360f,360f],Speed:1.2d}],Death:[{Name:"Function",Tags:[Global,Ground,Blow,SheepMan,DeathSound]}],Attack:[{Name:"Function",Tags:[Global,Ground,Blow,SheepMan,DamageSound]}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:25,Max:60,Current:25},Call:[{Condition:[{Global:1b,Name:"HasTarget",Target:{Look:"Friendly",Radius:24d}},{Name:"MinMP",MP:1}],Name:"MergeNBT",NBT:{HandItems:[{id:"minecraft:white_wool",Count:1b},{}]}},{Name:"ChangeTurn",Loop:1}]}]},{Index:2,Skill:[{Interval:{Min:5,Max:10,Current:5},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Speed:1d},{Name:"Rotation",Direction:[-2f,-2f],DirectionRange:[4f,4f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Blow,SheepMan,Bullet],Level:1}]]}],MP:1},{Interval:{Min:2,Max:2,Current:2},Call:[{Name:"MergeNBT",NBT:{HandItems:[]}},{Name:"ChangeTurn",Loop:1}]}]}]}