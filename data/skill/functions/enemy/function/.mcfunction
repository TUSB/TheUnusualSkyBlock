#Tagsをストレージに退避
#呼び出すfunction内ではmob_data: Tagsを参照すること
data modify storage mob_data: Tags set from entity @s Tags
data modify entity @s Tags set from storage mob_data: Call.Tags
#function呼び出し
function settings:enemy/
#Tagsを復元
data modify entity @s Tags set from storage mob_data: Tags
