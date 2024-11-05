### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Team:"Friendly",CustomName:'{"translate":"フレンドリー・水柱","color":"#FFFF00","bold":true}',Silent:true,Invulnerable:true,ShowArms:false,Invisible:true,NoBasePlate:true,DisabledSlots:4144959,PortalCooldown:150,Tags:[Mob,DelayedData,HasAI,TickingRequired,DamageProjectile,FriendlyProjectile,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"不運にも%1$sは足を滑らせ%2$sの水圧によりスポンジとなった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sバシャバシャバシャ～～！！","with":[{"translate":"【能力：格闘・コール】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:8,Current:2},Loop:{Max:3,Current:3,Range:6},Call:[{Name:"Function",Tags:[Skylands,Ground,Blow,BioFish,SplashParticleSound]},{Name:"Damage",Mob:{Hit:true,Physical:5,Ice:10},Distance:{Max:3.0d}}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"RandomChance",Chance:0.5d}],Name:"ChangeTurn",Set:2}]}]},{Index:2,Skill:[{Interval:{Min:2,Max:4,Current:2},Loop:{Max:1,Current:1,Range:3},Call:[{Name:"Function",Tags:[Skylands,Ground,Blow,BioFish,SplashParticleSound]},{Name:"Damage",Mob:{Hit:true,Physical:10,Ice:30},Distance:{Max:3.0d}},{Name:"Function",Tags:[Global,Friendly,Blow,BioFish,SplashChange]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"RandomChance",Chance:0.15d}],Name:"ChangeTurn",Set:3}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]},{Index:3,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}]}]}],ProjectileDamage:{Ice:120}}
#Function
playsound entity.minecart.inside.underwater hostile @a[distance=..32] ~ ~ ~ 0.7 1.0 0.1
