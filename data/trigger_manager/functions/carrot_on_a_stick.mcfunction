##############################
### 人参棒トリガー
##############################

### 連続使用回数更新
scoreboard players add @s CarrotContinue 1
scoreboard players set @s CarrotTick 5

### 白魔導士＜セイクリッドピラー＞
execute if score @s ModeSkill matches 41041..41049 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### 黒魔導士＜サンダーボルト＞
execute if score @s ModeSkill matches 51031..51039 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### 黒魔導士＜ジオクラッシュ＞
execute if score @s ModeSkill matches 51041..51049 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### 召喚士＜ぽむぽむ花火＞
execute if score @s ModeSkill matches 61081..61089 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### 召喚士＜コールＣアタック＞
execute if score @s ModeSkill matches 61071..61079 run scoreboard players operation @s ActiveSkill = @s ModeSkill
### 召喚士＜コールＣエンハンス＞
execute if score @s ModeSkill matches 61091..61099 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### 召喚士＜ぷちブラック＞
execute if score @s ModeSkill matches 61111..61119 run function skill_manager:summoner/petit_black/act

### トリガーリセット
scoreboard players reset @s UseCarrotStick
