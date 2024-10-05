### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:cod",Team:"Friendly",CustomName:'{"translate":"フレンドリー・バイオ・タラ","color":"#FFFF00"}',Air:32767s,PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI,CallOnInit,CallOnDamage,TickingRequired,DamageProjectile,FriendlyProjectile,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s首取ったるでー！(絶好調)","with":[{"translate":"【能力：格闘・移動】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Rotation",Direction:[-180f,-180f],DirectionRange:[360f,360f]}],Name:"Step",Speed:0.7d,SpeedRange:1d}],Damage:[{Settings:[{Name:"Rotation",Direction:[-180f,-180f],DirectionRange:[360f,360f]}],Name:"Step",Speed:0.5d,SpeedRange:0.8d}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:50,Max:80,Current:20},Call:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:48d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Rotation",Direction:[-4f,-4f],DirectionRange:[8f,8f]}],Name:"Step",Speed:0.7d,SpeedRange:1d}],MP:4}]}],ProjectileDamage:{Physical:20,Ice:20}}
