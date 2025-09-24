### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Team:"Friendly",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnDamage,CallOnTick,TickingRequired,DamageProjectile,EnemyProjectile,FriendlyProjectile,HasLootTable,AnalyseLog,"Garlic1","Unmoved","NonBurst"],CustomName:'{"translate":"メニクル","color":"#FF8000"}',Silent:true,IsBaby:true,DeathTime:19s,active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:false}],PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:stick",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":1}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/instant_item/tier8/radiance",Count:1,Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s「Stimulacris(スティミュラクリス：鋭い刺激を放つ者)」という別称がある。%2$sにフローラルな激痛が伴う刺激臭を放ち、同個体は出現できない性質を持つ。","with":[{"translate":"【能力：移動・格闘・自爆・引寄無効・味方逃走・村人逃走・ノンバースト】","color":"#00FF00"},{"translate":"半径64ブロック","color":"#FF0000"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"function",Tags:[Global,Event,Function,CommonExe,BlockAlign]},{Name:"function",Tags:[Global,Ground,Shoot,Menicles,WindWithSmell]},{Name:"function",Tags:[Global,Event,Function,CommonExe,SetMp0]}],Damage:[{Name:"merge_nbt",NBT:{NoAI:false}},{Condition:[{Name:"check_block",Inverse:true,Block:[Water,Lava,Air]}],Name:"function",Tags:[Global,Event,Function,CommonExe,UpAlign1]},{Name:"function",Tags:[Global,Event,Function,DamageSound,Light]},{Condition:[{Name:"min_mp",MP:1,Percent:true}],Name:"change_turn",Set:3}],Tick:[{Name:"function",Tags:[Global,Event,Function,CommonExe,ReverseLinkingRotation]}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:3,Max:3,Current:3},Call:[{Condition:[{Name:"min_hp",Inverse:true,HP:15}],Name:"kill"},{Condition:[{Name:"function",Inverse:true,Tags:[Global,Event,Function,CommonExe,CheckPassenger]}],Name:"kill"},{Condition:[{Name:"check_nbt",Global:true,NBT:{OnGround:true}}],Name:"function",Tags:[Global,Event,Function,CommonExe,BlockAlign]},{Name:"merge_nbt",NBT:{NoAI:true}},{Name:"change_turn",Set:2}]}]},{Index:2,Target:{Look:"Fixed",Rotation:"LeftDown"},Rotate:[10f,0f],Skill:[{Interval:{Min:300,Max:600,Current:600},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"min_hp",Inverse:true,HP:15}],Name:"kill"},{Condition:[{Name:"function",Inverse:true,Tags:[Global,Event,Function,CommonExe,CheckPassenger]}],Name:"kill"}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:3,Target:{Look:"Fixed",Rotation:"RightDown"},Rotate:[36f,0f],Skill:[{Interval:{Min:5,Max:20,Current:5},Loop:{Max:5,Current:5,Range:15},Call:[{Condition:[{Name:"min_hp",Inverse:true,HP:15}],Name:"kill"},{Condition:[{Name:"hp",HP:15}],Name:"function",Tags:[Global,Ground,Shoot,Menicles,WindWithSmell]},{Condition:[{Name:"check_nbt",Global:true,NBT:{OnGround:true}}],Name:"function",Tags:[Global,Event,Function,CommonExe,BlockAlign]},{Name:"merge_nbt",NBT:{NoAI:true}}]}],Exit:{Loop:{Max:1,Current:1}}}],ProjectileDamage:{magic:250}}
#Function
tag @e[tag=Garlic1,distance=..64,sort=nearest,limit=1] add Garbage
