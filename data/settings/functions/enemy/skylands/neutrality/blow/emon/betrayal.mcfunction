### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie_villager",CustomName:'{"translate":"裏切りのエモン","color":"#FF0000","bold":true}',PortalCooldown:3000,DeathLootTable:"empty",VillagerData:{level:99,profession:"nitwit",type:"jungle"},Tags:[Mob,Enemy,DelayedData,CallOnDeath,CallOnInit,CallOnDamage,CallOnAttack,TickingRequired,DamageProjectile,EnemyProjectile,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"diamond_sword",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:"歴戦の行商人・エモン",Id:[I;1,0,64,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGYzZjdhZmNiMzIwMGI2ZDRiZjUwYmVkODA4ZDFlNjc3MDZjODE4NWM2NjkyMWU0OTYyZTI0NTQ4ODM1ZmVjOCJ9fX0="}]}}}}],HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 6d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 20
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/all/villager",Count:1,Chance:0.51d},{Item:{id:"minecraft:beef"},Count:1,CountRange:8,Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sによって未知の手段で死亡した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d}}],Name:"Message",Message:'{"translate":"ワシは常に強い奴の味方ゾイ！","color":"#FF0000"}'}],Death:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d,IgnoreBlocks:true}}],Name:"Message",Message:'{"translate":"着く側を間違えたか！？ 無念ゾイ...","color":"#FF0000"}'}],Damage:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d}}],Name:"Message",Message:'{"translate":"ぐえぁ！ おとなしく今晩のおかずになれぃ！","color":"#FF0000"}'},{Condition:[{Name:"MP",MP:20}],Settings:[{Name:"Facing",Target:{Look:"Player",Radius:24}}],Name:"Step",Direction:[0f,-3f],Speed:3.0d}],Attack:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:4d}}],Name:"Message",Message:'{"translate":"打ち取ったりー！","color":"#FF0000"}'}]}
