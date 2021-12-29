#{Name:"As",Target:{}}
#{Name:"At",Target:{}}
#{Name:"Direction",Target:{},Direction:[0f,0f],DirectionRange:[0f,0f],Speed:1d,SpeedRange:1d}
#{Name:"Rotation",Target:{},Direction:[0f,0f],DirectionRange:[0f,0f],Absolute:{Horizontal:1b,Vertical:1b}}
#{Name:"Facing",Target:{}}
#{Name:"Anchor",Anchor:"Eyes|Feet"}

#Target:{Look:"self|player|enemy|all",Radius:10,IgnoreBlocks:1b}

data modify storage mob_data: Settings set from storage mob_data: SettingsList[0]
data remove storage mob_data: SettingsList[0]
#Target有無フラグ：Target NBTあるが見つからなかったとき0で失敗
scoreboard players set 000000000-0000-0000-0000-000000000002 _ 1

execute if data storage mob_data: Settings{Name:"At"} run function enemy:ai/call/settings/at
execute if data storage mob_data: Settings{Name:"Direction"} run function enemy:ai/call/settings/direction
execute if data storage mob_data: Settings{Name:"Rotation"} run function enemy:ai/call/settings/rotation
execute if data storage mob_data: Settings{Name:"Facing"} run function enemy:ai/call/settings/facing
execute if data storage mob_data: Settings{Name:"Anchor"} run function enemy:ai/call/settings/anchor

execute if data storage mob_data: Settings{Name:"As"} run function enemy:ai/call/settings/as
execute unless data storage mob_data: Settings{Name:"As"} if data storage mob_data: SettingsList[0] if score 000000000-0000-0000-0000-000000000002 _ matches 1 at 0-0-0-0-1 run function enemy:ai/call/settings/
