
# 選択召喚フラグ
data modify storage main: difficult.aec set value true

# 選択用AEC
summon area_effect_cloud -1754.5 113.00 -147.5 {CustomName:'{"translate":"エキスパート","bold":true,"underlined":true,"color":"#932AFF"}',CustomNameVisible:true,Tags:[DifficultSelect],Effects:[{Id:14,Duration:3,Amplifier:20b}],Particle:"dust 0.576 0.165 1 1",Color:9644799,Radius:2.0f,Duration:24100}
summon area_effect_cloud -1754.5 113.00 -125.5 {CustomName:'{"translate":"エキスパート","bold":true,"underlined":true,"color":"#932AFF"}',CustomNameVisible:true,Tags:[DifficultSelect],Effects:[{Id:14,Duration:3,Amplifier:20b}],Particle:"dust 0.576 0.165 1 1",Color:9644799,Radius:2.0f,Duration:24100}
summon area_effect_cloud -1759.5 113.00 -150.5 {CustomName:'{"translate":"カジュアル","bold":true,"underlined":true,"color":"#FF2A2A"}',CustomNameVisible:true,Tags:[DifficultSelect],Effects:[{Id:14,Duration:3,Amplifier:21b}],Particle:"dust 1 0.165 0.165 1",Color:16722474,Radius:2.0f,Duration:24100}
summon area_effect_cloud -1759.5 113.00 -122.5 {CustomName:'{"translate":"カジュアル","bold":true,"underlined":true,"color":"#FF2A2A"}',CustomNameVisible:true,Tags:[DifficultSelect],Effects:[{Id:14,Duration:3,Amplifier:21b}],Particle:"dust 1 0.165 0.165 1",Color:16722474,Radius:2.0f,Duration:24100}
summon area_effect_cloud -1764.5 113.00 -152.5 {CustomName:'{"translate":"ピクニック","bold":true,"underlined":true,"color":"#99CC33"}',CustomNameVisible:true,Tags:[DifficultSelect],Effects:[{Id:14,Duration:3,Amplifier:22b}],Particle:"dust 0.6 0.8 0.2 1",Color:10079283,Radius:2.0f,Duration:24100}
summon area_effect_cloud -1764.5 113.00 -120.5 {CustomName:'{"translate":"ピクニック","bold":true,"underlined":true,"color":"#99CC33"}',CustomNameVisible:true,Tags:[DifficultSelect],Effects:[{Id:14,Duration:3,Amplifier:22b}],Particle:"dust 0.6 0.8 0.2 1",Color:10079283,Radius:2.0f,Duration:24100}

schedule function main:difficulty/select/end 24000t
execute in area:cloudia run forceload add -1770 -150 -1750 -120
