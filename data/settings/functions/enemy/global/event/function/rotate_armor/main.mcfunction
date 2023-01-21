#Function
#1tickあたりの向き変更量を算出する
execute if data storage mob_data: Call.Pose.Head run function settings:enemy/global/event/function/rotate_armor/head
execute if data storage mob_data: Call.Pose.RightArm run function settings:enemy/global/event/function/rotate_armor/rightarm
execute if data storage mob_data: Call.Pose.LeftArm run function settings:enemy/global/event/function/rotate_armor/leftarm
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Pose.Tick set from storage mob_data: Call.Tick
#自身がアマスタである場合、移動中タグを追加
data modify storage mob_data: Tags append value Rotating
#スケジュールで動かす、多重起動しないようにする
schedule function settings:enemy/global/event/function/rotate_armor/schedule1 1t replace
