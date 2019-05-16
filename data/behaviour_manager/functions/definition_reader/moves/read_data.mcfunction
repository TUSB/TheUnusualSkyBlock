##############################
### 動き定義読み込み
##############################

### 開始向き
function behaviour_manager:definition_reader/moves/start_direction/rotate_offset/read
function behaviour_manager:definition_reader/moves/start_direction/tilt_offset/read

### 回転角度
function behaviour_manager:definition_reader/moves/spin_speed/read

### 繰り返し
function behaviour_manager:definition_reader/moves/repeater/check

### 前進速度
function behaviour_manager:definition_reader/moves/forward/speed/read
function behaviour_manager:definition_reader/moves/forward/acceleration/read

### 上昇速度
function behaviour_manager:definition_reader/moves/upward/speed/read
function behaviour_manager:definition_reader/moves/upward/acceleration/read

### 左回り速度
function behaviour_manager:definition_reader/moves/leftward/speed/read
function behaviour_manager:definition_reader/moves/leftward/acceleration/read

### 近い時乗数
function behaviour_manager:definition_reader/moves/on_close/forward/read
function behaviour_manager:definition_reader/moves/on_close/upward/read

### 軽量化設定
function behaviour_manager:definition_reader/moves/light/read

### 無視設定
function behaviour_manager:definition_reader/moves/ignore_rotate/read
function behaviour_manager:definition_reader/moves/ignore_tilt/read
