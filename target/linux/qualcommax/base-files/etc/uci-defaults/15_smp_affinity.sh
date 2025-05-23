#!/bin/sh

uci -q get smp_affinity && exit 0
touch /etc/config/smp_affinity

uci -q batch << EOF
  set smp_affinity.general=smp_affinity
  set smp_affinity.general.enable='1'
  set smp_affinity.general.enable_log='1'
  commit smp_affinity
EOF

exit 0
