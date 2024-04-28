### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:horse",Team:"Friendly",CustomName:'{"translate":"フレンド・スーパードラゴン","color":"#FFFF00","bold":true}',CustomNameVisible:true,Tame:true,Motion:[0d,0.8d,0d],ActiveEffects:[{Id:8,Duration:-1,Amplifier:34b,ShowParticles:false},{Id:11,Amplifier:4b,Duration:50}],PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,DelayedData,CallOnDeath,CallOnInit,TickingRequired,DamageProjectile,FriendlyProjectile,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {SaddleItem:{id:"minecraft:saddle",Count:1b,tag:{NeverRemain:1b,NoHold:1b}}}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value -20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value -20
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s乗り捨ては百歩譲っていいとして、どうして爆弾を括り付ける必要があるんですか？","with":[{"translate":"【能力：格闘・自爆】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,SetHp1]}],Death:[{Name:"Function",Tags:[Global,Friendly,Blow,FriendSuperDragon,DeathSound]},{Name:"Damage",Mob:{Physical:75,Light:25,Hit:true},Distance:{Min:0d,Max:7.5d}}],ProjectileDamage:{Light:55}}
