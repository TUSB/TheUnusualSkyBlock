##############################
### 動き定義読み込み
##############################

### ターゲット位置基準
function behaviour_manager:definition_reader/moves/target_position/read

### ターゲット位置補正値
function behaviour_manager:definition_reader/moves/target_offset/upward/read
function behaviour_manager:definition_reader/moves/target_offset/forward/read

### 開始向き
function behaviour_manager:definition_reader/moves/start_direction/offset_rotate/read
function behaviour_manager:definition_reader/moves/start_direction/offset_tilt/read

### 回転角度
function behaviour_manager:definition_reader/moves/rotate_speed/read
function behaviour_manager:definition_reader/moves/tilt_speed/read

### 繰り返し
function behaviour_manager:definition_reader/moves/repeater/check
