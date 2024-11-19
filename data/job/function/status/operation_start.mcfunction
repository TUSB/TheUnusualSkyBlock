#> job:status/operation_start
### JobStatus を操作するときに必ず最初に実行する

function #oh_my_dat:please
data modify storage job: JobStatus set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus
