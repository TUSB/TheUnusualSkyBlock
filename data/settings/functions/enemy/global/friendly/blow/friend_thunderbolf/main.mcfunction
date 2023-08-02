### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Team:"Friendly",CustomName:'{"translate":"フレンド・サンダーボルフ","color":"#FFFF00","bold":true}',Tags:[Mob,DelayedData,HasAI,CallOnInit,CallOnBlock,TickingRequired,NativeTask,SmartMotion,Bounce,DamageProjectile,FriendlyProjectile,AnalyseLog,Sicced],Invisible:1b,Invulnerable:1b,PortalCooldown:600}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{}],DisabledSlots:4144959}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"10秒しか輝けない命だけど騒音出しすぎてご近所トラブルにならないか心配。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Rotation",Direction:[-3f,-3f],DirectionRange:[6f,6f]}],Name:"SmartMotion",TP:true,Speed:{Set:0},Gravity:{Set:0d}},{Name:"Damage",Mob:{Hit:true,Physical:20,Lightning:150},Distance:{Max:3d}}],Block:[{Name:"Function",Tags:[Global,Friendly,Blow,FriendThunderbolf,ParticleAndSound]},{Name:"Damage",Mob:{Hit:true,Physical:20,Lightning:150},Distance:{Max:3d}}],TurnCount:2,Turn:[{Index:1,Once:1,Skill:[{Interval:{Min:6,Max:6,Current:6},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16777019]},CustomModelData:10134}}],DisabledSlots:4144959}},{Name:"SmartMotion",TP:true,Speed:{Set:50}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:3,Max:12,Current:5},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Rotation",Direction:[-6f,-6f],DirectionRange:[12f,12f]}],Name:"SmartMotion",TP:true}]}]}],ProjectileDamage:{Physical:20,Lightning:150}}
