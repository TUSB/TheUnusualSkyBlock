### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item_display",CustomName:'[{"translate":"t","color":"#440066","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"《音速の堕天使》SonicA","color":"#AA00FF","bold":true,"obfuscated":false},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"t","color":"#440066","obfuscated":true}]',Tags:[DelayedData,HasAI,CallOnInit,CallOnTick,SonicAAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,Ride]}],Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MarkerCheck]}],TurnCount:9,Turn:[{Index:1,Exit:{Condition:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,GoSign]}]}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,IntervalPose]},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,Facing]},{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,SkyMotion]},{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MarkerCheck]}]}]},{Interval:{Min:20,Max:40,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,SkillSelect]},{Condition:[{Name:"Function",Select:0,Tags:[Skylands,Boss,Shoot,SonicaAi,SkillSelectCondition]}],Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Direction",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Direction:[-180f,10f],DirectionRange:[360f,0f],Speed:-3d,SpeedRange:2d,Absolute:{Vertical:true}}],Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MovePoint1]},{Condition:[{Name:"Function",Select:1,Tags:[Skylands,Boss,Shoot,SonicaAi,SkillSelectCondition]}],Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Direction",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Direction:[-180f,10f],DirectionRange:[360f,0f],Speed:-2d,SpeedRange:1d,Absolute:{Vertical:true}}],Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MovePoint1]},{Condition:[{Name:"Function",Select:2,Tags:[Skylands,Boss,Shoot,SonicaAi,SkillSelectCondition]}],Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Direction",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Direction:[0f,-90f],DirectionRange:[0f,0f],Speed:3d,SpeedRange:2d,Absolute:{Vertical:true}}],Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MovePoint1]},{Condition:[{Name:"Function",Select:3,Tags:[Skylands,Boss,Shoot,SonicaAi,SkillSelectCondition]}],Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Direction",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Direction:[-180f,10f],DirectionRange:[360f,0f],Speed:-4d,SpeedRange:2d,Absolute:{Vertical:true}}],Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MovePoint1]},{Condition:[{Name:"Function",Select:4,Tags:[Skylands,Boss,Shoot,SonicaAi,SkillSelectCondition]}],Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Direction",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Direction:[0f,-90f],DirectionRange:[0f,0f],Speed:3d,SpeedRange:2d,Absolute:{Vertical:true}}],Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MovePoint1]},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MarkerCheck]}]},{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Kill"}]}],Exit:{Loop:{Max:2,Current:2}}},{Index:3,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MoveSkillPose]}]},{Interval:{Min:6,Max:6,Current:6},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MoveSkillInvisible]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MoveSkill1]}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MoveSkillFinish]},{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MoveSkillFinishTp]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:7,Current:7},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MoveSkillFinishTp]}]},{Interval:{Min:8,Max:8,Current:8},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,SkillSelectChange]}]}]},{Index:4,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack1Pre]},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,Facing]},{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack1PreSound]},{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MarkerCheck]}]}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack1Pose1]},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MarkerCheck]}]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack1Pose2]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Direction",Target:{Look:"Self"},Speed:0.5d},{Name:"Direction",Direction:[0f,-90f],Speed:1d,Absolute:{Vertical:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Boss,Shoot,SonicaAttack,Slash1],Level:150}]]}]},{Interval:{Min:4,Max:4,Current:4},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack1Pose3]},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,Facing]},{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MarkerCheck]}]}]},{Interval:{Min:4,Max:4,Current:4},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack1Pose4]},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MarkerCheck]}]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack1Pose5]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Direction",Target:{Look:"Self"},Speed:0.5d},{Name:"Direction",Direction:[0f,-90f],Speed:1d,Absolute:{Vertical:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Boss,Shoot,SonicaAttack,Slash2],Level:150}]]}]},{Interval:{Min:4,Max:4,Current:4},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack1Pre]},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,Facing]},{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MarkerCheck]}]}]},{Interval:{Min:4,Max:4,Current:4},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack1Pose1]},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MarkerCheck]}]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack1Pose2]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Direction",Target:{Look:"Self"},Speed:0.5d},{Name:"Direction",Direction:[0f,-90f],Speed:1d,Absolute:{Vertical:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Boss,Shoot,SonicaAttack,Slash1],Level:150}]]}]},{Interval:{Min:6,Max:6,Current:6},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:2}]}]},{Index:5,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack2Pre]},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,Facing]},{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack1PreSound]},{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MarkerCheck]}]}]},{Interval:{Min:15,Max:15,Current:15},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack2Pose1]},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MarkerCheck]}]},{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack2Damage]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack2Pose2]},{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack2Damage]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack2Pose3]},{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack2Damage]}]},{Interval:{Min:8,Max:8,Current:8},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:2}]}]},{Index:6,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack3Pre1]},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,Facing]},{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MarkerCheck]}]}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack3Pre2]},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MarkerCheck]}]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack3Pre3]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack3Pre4]},{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack3Summon]}]},{Interval:{Min:5,Max:5,Current:5},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack3Pose1]}]},{Interval:{Min:5,Max:5,Current:5},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack3Pose2]}]},{Interval:{Min:5,Max:5,Current:5},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaMarker,FirstAttack1]}]},{Interval:{Min:15,Max:15,Current:15},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:2}]}]},{Index:7,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack4Pre]},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,FacingRotate]},{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack1PreSound]},{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MarkerCheck]}]}]},{Interval:{Min:18,Max:18,Current:18},Loop:{Max:1,Current:1},Call:[{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack1PreSound]}]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack4]},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MarkerCheck]}]}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack4Damage]}]},{Interval:{Min:8,Max:8,Current:8},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:2}]}]},{Index:8,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack5Pre]},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,FacingRotate]},{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack1PreSound]},{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MarkerCheck]}]}]},{Interval:{Min:15,Max:15,Current:15},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,Attack5Pose]},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,FacingRotate]},{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,MarkerCheck]}]},{Settings:[{Name:"Direction",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Direction:[0f,-90f],Speed:10d,Absolute:{Vertical:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Boss,Shoot,SonicaAi,Beam],Level:150}]]}]},{Interval:{Min:50,Max:50,Current:50},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:2}]}]},{Index:9}]}
