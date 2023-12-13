### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:vindicator",CustomName:'{"translate":"完全体茶キノコ","color":"#FF0000","bold":true}',Silent:true,PatrolLeader:false,Patrolling:false,CanJoinRaid:false,ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:false},{Id:28,Amplifier:1b,Duration:-1,ShowParticles:false}],PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnDamage,CallOnAttack,CallOnBlock,CallOnTick,TickingRequired,SmartMotion,Bounce,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"scute",Count:1b,tag:{CustomModelData:5}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 10d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 130
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value -100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier3/common",Count:1,Chance:0.35d},{Loot:"item:item/mushroom_stew/mana/giant",Count:1,Chance:1d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"SmartMotion",TP:true,KeepRotation:true,Speed:{Set:0d},Gravity:{Set:100d}}],Damage:[{Name:"Function",Tags:[Underworld,Ground,Blow,RedMushroom,SporeVeil]},{Name:"Damage",Player:{DamageType:[Global,Fire,Blast,Projectile],DeathCause:'[{"translate":"%1$sは%2$sの胞子によってくしゃみが止まらなくなったので家に帰った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},MP:{MP:10,Absorb:true},Distance:{Max:3d},AEC:{Effects:[{Id:14b,Amplifier:9b,Duration:5}]}},{Name:"Function",Tags:[Global,Event,Function,DamageSound,Amorphous]},{Name:"Function",Tags:[Global,Event,Function,DamageSound,Dark]}],Attack:[{Name:"Function",Tags:[Underworld,Ground,Blow,RedMushroom,SporeVeil]},{Name:"Damage",Player:{DamageType:[Global,Fire,Blast,Projectile],DeathCause:'[{"translate":"%1$sは%2$sの胞子によってくしゃみが止まらなくなったので家に帰った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},MP:{MP:60,Absorb:true},Distance:{Max:2.5d},AEC:{Effects:[{Id:14b,Amplifier:9b,Duration:5}]}},{Name:"Function",Tags:[Global,Event,Function,DamageSound,Amorphous]}],Block:[{Name:"SmartMotion",Speed:{Set:0d}}],Tick:[{}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:60,Max:120,Current:80},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:48d}}],Name:"ChangeTurn",Loop:1},{Name:"Function",Tags:[Global,Event,Function,Attributes,FollowRange0M]}]}]},{Index:2,Target:{Look:"Fixed",Rotation:"LeftUp"},Rotate:[90f,0f],Skill:[{Interval:{Min:15,Max:30,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Underworld,Ground,Summon,BrownMushroom,JumpParticleAndSound]},{Settings:[{Name:"At",Target:{Look:"Friendly",Radius:48d}}],Name:"Parabolic",MotionTick:60,MotionGravity:0.03d},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Underworld,Ground,Blow,RedMushroom,SporeVeil]},{Name:"Damage",Player:{DamageType:[Blast],DeathCause:'[{"translate":"%1$sは%2$sの弾力性の虜となってしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},MP:{MP:2,Percent:true,Absorb:true},Distance:{Max:3d}}]}]},{Interval:{Min:1,Max:120,Current:120},Loop:{Max:1,Current:1},Call:[{Name:"SmartMotion",Stop:true,Gravity:{Set:100d}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:16,Current:16},Call:[{Settings:[{Name:"Rotation",Global:true,Target:{Look:"Self"}}]},{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[0f,-25f]},{Name:"Direction",Speed:1d}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Underworld,Ground,Summon,BrownMushroom,Bullet],Level:1}]]},{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[45f,-25f]},{Name:"Direction",Speed:1d}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Underworld,Ground,Summon,BrownMushroom,Bullet],Level:1}]]},{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[90f,-25f]},{Name:"Direction",Speed:1d}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Underworld,Ground,Summon,BrownMushroom,Bullet],Level:1}]]},{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[135f,-25f]},{Name:"Direction",Speed:1d}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Underworld,Ground,Summon,BrownMushroom,Bullet],Level:1}]]},{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[180f,-25f]},{Name:"Direction",Speed:1d}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Underworld,Ground,Summon,BrownMushroom,Bullet],Level:1}]]},{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[225f,-25f]},{Name:"Direction",Speed:1d}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Underworld,Ground,Summon,BrownMushroom,Bullet],Level:1}]]},{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[270f,-25f]},{Name:"Direction",Speed:1d}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Underworld,Ground,Summon,BrownMushroom,Bullet],Level:1}]]},{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Rotation",Direction:[315f,-25f]},{Name:"Direction",Speed:1d}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Underworld,Ground,Summon,BrownMushroom,Bullet],Level:1}]]}],MP:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"ChangeAI",Tick:[{}]},{Name:"Function",Tags:[Global,Event,Function,Attributes,FollowRange32M]}]}],Exit:{Loop:{Max:4,Current:4}}}]}
