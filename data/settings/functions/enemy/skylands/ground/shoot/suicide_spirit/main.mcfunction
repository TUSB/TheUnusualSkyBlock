### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Silent:1b,CustomName:'{"translate":"自爆霊","color":"#FFFFFF","bold":true}',ActiveEffects:[{Id:12,Amplifier:1b,Duration:-1,ShowParticles:0b},{Id:14,Amplifier:127b,Duration:-1,ShowParticles:0b}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTick,TickingRequired,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:tnt",Count:1b,tag:{Enchantments:[{}]}},{id:"minecraft:soul_lantern",Count:1b}],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:9109504},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:thorns",lvl:12s}]}},{id:"minecraft:redstone_block",Count:1b}],HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:0.25d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Name:"Function",Tags:[Skylands,Ground,Shoot,SuicideSpirit,Appearence]}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:100,Max:160,Current:100},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d}}],Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Direction:[0f,90f],Speed:0.5d},{Name:"Direction",Direction:[0f,0f],DirectionRange:[360f,0f],Speed:0.1d,SpeedRange:1d}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Skylands,Ground,Shoot,SuicideSpirit,Bullet],Level:1}],[{Tags:[Skylands,Ground,Shoot,SuicideSpirit,BulletAppearance],Level:1}]]}],MP:5}],Exit:{Condition:[{Name:"MinHP",Inverse:true,HP:20,Percent:true}]}},{Index:2,Target:{Look:"Player",Radius:32d},Move:{Front:0.2d},Rotate:[-1f,-1f],Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Ground,Shoot,SuicideSpirit,Bomb1]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:40,Current:40},Call:[{Name:"Function",Tags:[Skylands,Ground,Shoot,SuicideSpirit,Bomb2]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Damage",Explosion:3}],MP:5},{Interval:{Min:4,Max:4,Current:4},Call:[{Name:"Kill"}]}]}]}
