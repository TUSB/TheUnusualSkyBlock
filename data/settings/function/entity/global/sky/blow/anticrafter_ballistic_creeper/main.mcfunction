### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:creeper",CustomName:'{"translate":"対クラフター弾道クリーパー","color":"#FFFFFF"}',Fuse:200s,ExplosionRadius:6f,PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,TickingRequired,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 24d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier1/common",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s３・・・２・・・１・・・GO！GO！GO！GO！","with":[{"translate":"【能力：移動・時間】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:3,Turn:[{Index:1,Once:1,Skill:[{Interval:{Min:3,Max:3,Current:3},Call:[{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:24d}}],Name:"change_turn",Set:2}]}]},{Index:2,Once:1,Skill:[{Interval:{Min:155,Max:155,Current:155},Loop:{Max:1,Current:1},Call:[{}],Once:1},{Interval:{Min:5,Max:5,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"merge_nbt",NBT:{NoGravity:true,ignited:true,active_effects:[{id:"minecraft:slow_falling",amplifier:1b,duration:-1,show_particles:false}]}}],Once:1},{Interval:{Min:5,Max:5,Current:5},Call:[{Settings:[{Name:"Rotation",Direction:[0f,-90f],Absolute:{Vertical:true}}],Name:"step",Speed:0.4d},{Name:"function",Tags:[Global,Event,Function,CommonParticle,CloudLine]},{Name:"function",Tags:[Global,Sky,Blow,AnticrafterBallisticCreeper,Sound]}]}],Exit:{Time:220,TimeCount:220}},{Index:3,Skill:[{Interval:{Min:5,Max:5,Current:5},Loop:{Max:30,Current:30},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d}}],Name:"step",Speed:1.5d},{Condition:[{Name:"random_chance",Chance:0.25d}],Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d}},{Name:"Rotation",Direction:[-60f,-60f],DirectionRange:[120f,120f]}],Name:"step",Speed:1.0d,SpeedRange:2.0d},{Name:"function",Tags:[Global,Event,Function,CommonParticle,CloudLine]},{Name:"function",Tags:[Global,Sky,Blow,AnticrafterBallisticCreeper,Sound]}],Once:1},{Interval:{Min:5,Max:5,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"merge_nbt",NBT:{active_effects:[{id:"minecraft:slow_falling",amplifier:1b,duration:1,show_particles:false}]}}],Once:1}]}]}
