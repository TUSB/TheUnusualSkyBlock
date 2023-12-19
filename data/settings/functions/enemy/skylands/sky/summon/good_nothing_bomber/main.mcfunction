### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:wither_skeleton",CustomName:'{"translate":"みそボン","color":"#FF0000","bold":true}',NoGravity:1b,Silent:1b,ActiveEffects:[{Id:12,Amplifier:1b,Duration:-1,ShowParticles:0b}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTick,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:136,Explosion:{Type:0b,Colors:[I;16732995]}}},{}],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:0},Unbreakable:1b}},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Unbreakable:true,CustomModelData:17}}],HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:0.28d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s敵を爆死させればそのラウンドに復活できる・・・という仕様はない。単に八つ当たりである。","with":[{"translate":"【能力：召喚・全属性デバフ】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Condition:[{Name:"Function",Tags:[Skylands,Sky,Summon,GoodNothingBomber,Tick]}],Name:"ChangeTurn",Set:2}],Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:30,Max:120,Current:50},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}]},{Settings:[{Name:"Direction",Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:3d,SpeedRange:3d,Absolute:{Vertical:true}}],Name:"Function",Tags:[Skylands,Sky,Summon,GoodNothingBomber,SummonBomb]}],MP:3},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Sky,Summon,CombatSummoner,SlowFall]}]}]},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Function,FireExplosion,AecHuge],Level:1}]]},{Name:"Function",Tags:[Global,Event,Function,AttackSound,Explosion]},{Name:"Damage",Player:{DamageType:[Global,Blast],DeathCause:'[{"translate":"%2$sは爆散した！ そして不幸にも%1$sはその爆発に巻き込まれてしまった！","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Fire:100},Distance:{Max:5d}},{Name:"Kill"}]}]}]}
