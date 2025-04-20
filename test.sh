#!/bin/bash

curl -s "https://raw.githubusercontent.com/Grosstim/MYPooling/refs/heads/main/Untitled-1.json" | jq -r '
.cabinet."1".state[].cabinet_humidity as $cabinet_humidity |
.cabinet."1".state[].cabinet_temperature as $cabinet_temperature |
.cabinet."1".state[].control_cabinet_open as $control_cabinet_open |
.cabinet."1".state[].input_voltage as $input_voltage |
.controller_pds."1".status[].zero_code[0] as $SM_1_1_2 | 
.controller_pds."1".status[].zero_code[1] as $SM_1_3_4 |
.controller_pds."1".status[].zero_code[2] as $SM_1_5 |
.controller_pds."2".status[].zero_code[0] as $SM_2_1_2 | 
.controller_pds."2".status[].zero_code[1] as $SM_2_3_4 |
.controller_pds."2".status[].zero_code[2] as $SM_2_5 |
.controller_pds."3".status[].zero_code[0] as $SM_3_1_2 | 
.controller_pds."3".status[].zero_code[1] as $SM_3_3_4 |
.controller_pds."3".status[].zero_code[2] as $SM_3_5 |
.controller_pds."4".status[].zero_code[0] as $SM_4_1_2 | 
.controller_pds."4".status[].zero_code[1] as $SM_4_3_4 |
.controller_pds."4".status[].zero_code[2] as $SM_4_5 |
.controller_pds."1".params[].electronic_stamp[] as $eStamp_1 | 
.controller_pds."2".params[].electronic_stamp[] as $eStamp_2 | 
.controller_pds."3".params[].electronic_stamp[] as $eStamp_3 | 
.controller_pds."4".params[].electronic_stamp[] as $eStamp_4 | 
.external_dimensions."1".status[0].transparency."5.0" as $mig_1_ugol_5_center | 
.external_dimensions."1".status[0].transparency."35.0" as $mig_1_ugol_35_center |
.external_dimensions."1".status[0].transparency."70.0" as $mig_1_ugol_70_center | 
.external_dimensions."1".status[0].transparency."110.0" as $mig_1_ugol_110_center |
.external_dimensions."1".status[0].transparency."145.0" as $mig_1_ugol_145_center | 
.external_dimensions."1".status[0].transparency."175.0" as $mig_1_ugol_170_center |
.external_dimensions."1".status[1].transparency."5.0" as $mig_2_ugol_5_polosa_2 | 
.external_dimensions."1".status[1].transparency."35.0" as $mig_2_ugol_35_polosa_2 |
.external_dimensions."1".status[1].transparency."70.0" as $mig_2_ugol_70_polosa_2 | 
.external_dimensions."1".status[1].transparency."110.0" as $mig_2_ugol_110_polosa_2 |
.external_dimensions."1".status[1].transparency."145.0" as $mig_2_ugol_145_polosa_2 | 
.external_dimensions."1".status[1].transparency."175.0" as $mig_2_ugol_170_polosa_2 |
.external_dimensions."1".status[2].transparency."5.0" as $mig_3_ugol_5_polosa_1 | 
.external_dimensions."1".status[2].transparency."35.0" as $mig_3_ugol_35_polosa_1 |
.external_dimensions."1".status[2].transparency."70.0" as $mig_3_ugol_70_polosa_1 | 
.external_dimensions."1".status[2].transparency."110.0" as $mig_3_ugol_110_polosa_1 |
.external_dimensions."1".status[2].transparency."145.0" as $mig_3_ugol_145_polosa_1 | 
.external_dimensions."1".status[2].transparency."175.0" as $mig_3_ugol_170_polosa_1 |
.server."stolb-db".cpu[0].cpu_temperature."Package id 0" as $cpu_temperature |
.server."stolb-db".cpu[0].cpu_usage.tot as $cpu_usage |
.server."stolb-db".cpu[0].ram_usage as $ram_usage |
.server."stolb-db".hdd[0].hdd_free_space_gb.ROOT as $hdd_free_space_gb |
.server."stolb-db".hdd[0].hdd_usage.ROOT as $hdd_usage |
.server."stolb-db".network[0].rx_usage.eth0 as $rx_usage_eth0 |
.server."stolb-db".network[0].rx_usage.eth1 as $rx_usage_eth1 |
.server."stolb-db".network[0].rx_usage.eth2 as $rx_usage_eth2 |
.server."stolb-db".network[0].rx_usage.eth5 as $rx_usage_eth5 |
.server."stolb-db".network[0].tx_usage.eth0 as $tx_usage_eth0 |
.server."stolb-db".network[0].tx_usage.eth1 as $tx_usage_eth1 |
.server."stolb-db".network[0].tx_usage.eth2 as $tx_usage_eth2 |
.server."stolb-db".network[0].tx_usage.eth5 as $tx_usage_eth5 |

$cabinet_humidity,
$cabinet_temperature,
$control_cabinet_open,
$input_voltage,
$SM_1_1_2,
$SM_1_3_4,
$SM_1_5 ,
$SM_2_1_2,
$SM_2_3_4,
$SM_2_5,
$SM_3_1_2,
$SM_3_3_4,
$SM_3_5,
$SM_4_1_2,
$SM_4_3_4,
$SM_4_5,
$eStamp_1,
$eStamp_2,
$eStamp_3,
$eStamp_4,
$mig_1_ugol_5_center,
$mig_1_ugol_35_center,
$mig_1_ugol_70_center,
$mig_1_ugol_110_center,
$mig_1_ugol_145_center,
$mig_1_ugol_170_center,
$mig_2_ugol_5_polosa_2,
$mig_2_ugol_35_polosa_2,
$mig_2_ugol_70_polosa_2,
$mig_2_ugol_110_polosa_2,
$mig_2_ugol_145_polosa_2,
$mig_2_ugol_170_polosa_2,
$mig_3_ugol_5_polosa_1,
$mig_3_ugol_35_polosa_1,
$mig_3_ugol_70_polosa_1,
$mig_3_ugol_110_polosa_1,
$mig_3_ugol_145_polosa_1,
$mig_3_ugol_170_polosa_1,
$cpu_temperature,
$cpu_usage,
$ram_usage,
$hdd_free_space_gb,
$hdd_usage,
$rx_usage_eth0,
$rx_usage_eth1,
$rx_usage_eth2,
$rx_usage_eth5,
$tx_usage_eth0,
$tx_usage_eth1,
$tx_usage_eth2,
$tx_usage_eth5
'
