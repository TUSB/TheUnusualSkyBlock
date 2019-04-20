##############################
### 位置前に補正
##############################

### 上に補正
function data_manager:posture/modify/upward

### 前に補正
execute rotated ~ -45 positioned ^ ^1024 ^ facing entity 1-0-1-0-0 feet positioned ^ ^ ^-1024 rotated ~ -45 positioned ^ ^-2048 ^ run tp 1-0-1-0-0 ~ ~ ~
