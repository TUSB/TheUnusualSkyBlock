### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:creeper",CustomName:'{"translate":"コンバットクリーパー"}',Fuse:30,ExplosionRadius:2b,PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnAttack,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 301
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.51d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"標準的なクリーパーです。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Attack:[{Name:"Damage",Player:{DamageType:["Global","Blast"],DeathCause:'[{"translate":"%1$sは%2$sに爆破された。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:0d},AEC:{Effects:[{Id:14,Amplifier:9b,Duration:5,ShowParticles:false}]}}],TurnCount:4,Turn:[{Index:1,Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16,IgnoreBlocks:true}},{Name:"HasTarget",Target:{Look:"Player",Radius:3,IgnoreBlocks:true},Inverse:true}]}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,Combat,Vanish]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Exit:{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:3,IgnoreBlocks:true},Logic:"OR"},{Name:"HasTarget",Target:{Look:"Player",Radius:16,IgnoreBlocks:true},Inverse:true}]}},{Index:4,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Teleport",Settings:[{Name:"Direction",Direction:[-30f,-0f],DirectionRange:[60f,0f],Speed:1d,SpeedRange:0.3d}]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,Combat,VanishOff]}]},{Interval:{Min:40,Max:40,Current:40},Loop:{Max:1,Current:1},Call:[{}]}],Exit:{Loop:{Max:3,Current:3}}}]}
