#Function
# AIを変化させる
    data modify storage mob_data: AI set value {Tick:[{Name:"function",Tags:[Global,Sky,Shoot,LunaticEye,Tick]}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:100,Max:200,Current:10},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Global:true,Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"function",Tags:[Global,Sky,Shoot,LunaticEye,BackTp]},{Name:"change_turn",Random:true}]}]},{Index:2,Skill:[{Interval:{Min:10,Max:60,Current:30},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"spawn",SpawnEntities:[[{Tags:[Global,Sky,Shoot,LunaticEye,Powder],Level:40}],[{Tags:[Global,Sky,Shoot,LunaticEye,PowderDisplay],Level:40}]]},{Name:"function",Tags:[Global,Sky,Shoot,LunaticEye,PowderSummon]},{Name:"change_turn",Loop:2}]}]},{Index:3,Skill:[{Interval:{Min:10,Max:60,Current:30},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Settings:[{Name:"Direction",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true},Direction:[-180f,-20f],DirectionRange:[360f,0f],Speed:3d,SpeedRange:5d,Absolute:{Vertical:true}}],Name:"spawn",SpawnEntities:[[{Tags:[Global,Sky,Shoot,LunaticEye,Laser],Level:40}]]}]},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Settings:[{Name:"Direction",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true},Direction:[-180f,-20f],DirectionRange:[360f,0f],Speed:3d,SpeedRange:5d,Absolute:{Vertical:true}}],Name:"spawn",SpawnEntities:[[{Tags:[Global,Sky,Shoot,LunaticEye,Laser],Level:40}]]},{Name:"change_turn",Loop:1}]}]}]}
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI set from storage mob_data: AI
# 敵弾判定追加
    scoreboard players add @s[tag=!DamageProjectile] NativeFlag 1
    tag @s add EnemyProjectile
    tag @s add DamageProjectile
# ステータス変更
    data modify storage mob_data: Call set value {Attack:{Set:100},SpecialAttack:{Set:100}}
    function ai:skill/change_status/
# メーセージで伝える
    playsound entity.elder_guardian.curse hostile @a[distance=..32] ~ ~ ~ 0.5 0.5 0.01 
    tellraw @a[distance=..32] {"translate":"＊ %s は怒り狂った！","color":"yellow","bold":true,"with":[{"selector":"@s","color":"white"}]}
