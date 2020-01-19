#チェスト座標設定
kill @e[tag=ChestPos]
execute align xyz run summon minecraft:armor_stand ~0.2 ~ ~0.6 {Tags:[ChestPos],Rotation:[-90f,0f],ArmorItems:[{},{},{},{id:"minecraft:chest",Count:1b}],Pose:{RightArm:[-90f,0f,0f],LeftArm:[0f,0f,-90f]},Marker:1b,NoGravity:1b,ShowArms:1b}
