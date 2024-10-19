# 개인 스토리지 생성
$data modify storage nomic:global data append value {id: $(id)}
$data modify storage nomic:global data[$(id)].previous set value []
$data modify storage nomic:global data[$(id)].isclick set value 0
$data modify storage nomic:global data[$(id)].inputs set value []
$data modify storage nomic:global data[$(id)].tab set value 0

$data modify storage nomic:global data[$(id)].history_1 set value "nomic:talking.a"
$data modify storage nomic:global data[$(id)].history_2 set value "nomic:talking.a"
$data modify storage nomic:global data[$(id)].history_3 set value "nomic:talking.a"
$data modify storage nomic:global data[$(id)].history_4 set value "nomic:talking.a"
$data modify storage nomic:global data[$(id)].history_5 set value "nomic:talking.a"
$data modify storage nomic:global data[$(id)].history_6 set value "nomic:talking.a"
$data modify storage nomic:global data[$(id)].history_7 set value "nomic:talking.a"
$data modify storage nomic:global data[$(id)].history_8 set value "nomic:talking.a"
$data modify storage nomic:global data[$(id)].history_9 set value "nomic:talking.a"

# 태그 삭제
tag @s remove nomic.new