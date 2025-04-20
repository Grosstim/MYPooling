#!/bin/bash


curl -s "https://raw.githubusercontent.com/Grosstim/MYPooling/refs/heads/main/Untitled-1.json" | jq -r '"
cabinet_humidity = \( .cabinet."1".state[].cabinet_humidity ) 
cabinet_temperature = \( .cabinet."1".state[].cabinet_temperature )
control_cabinet_open = \( .cabinet."1".state[].control_cabinet_open )
input_voltage = \( .cabinet."1".state[].input_voltage )
SM_1_1_2 = \( .controller_pds."1".status[].zero_code[0] )
SM_1_3_4 = \( .controller_pds."1".status[].zero_code[1] )
SM_1_5 = \( .controller_pds."1".status[].zero_code[2] )
SM_2_1_2 = \( .controller_pds."2".status[].zero_code[0] )
SM_2_3_4 = \( .controller_pds."2".status[].zero_code[1] )
SM_2_5 = \( .controller_pds."2".status[].zero_code[2] )
SM_3_1_2 = \( .controller_pds."3".status[].zero_code[0] )
SM_3_3_4 = \( .controller_pds."3".status[].zero_code[1] )
SM_3_5 = \( .controller_pds."3".status[].zero_code[2] )
SM_4_1_2 = \( .controller_pds."4".status[].zero_code[0] )
SM_4_3_4 = \( .controller_pds."4".status[].zero_code[1] )
SM_4_5 = \( .controller_pds."4".status[].zero_code[2] )
eStamp_1 = \( .controller_pds."1".params[].electronic_stamp[] )
eStamp_2 = \( .controller_pds."2".params[].electronic_stamp[] )
eStamp_3 = \( .controller_pds."3".params[].electronic_stamp[] )
eStamp_4 = \( .controller_pds."4".params[].electronic_stamp[] )
mig_1_ugol_5_center = \( .external_dimensions."1".status[0].transparency."5.0" )
mig_1_ugol_35_center = \( .external_dimensions."1".status[0].transparency."35.0" )
mig_1_ugol_70_center = \( .external_dimensions."1".status[0].transparency."70.0" )
mig_1_ugol_110_center = \( .external_dimensions."1".status[0].transparency."110.0" )
mig_1_ugol_145_center = \( .external_dimensions."1".status[0].transparency."145.0" )
mig_1_ugol_170_center = \( .external_dimensions."1".status[0].transparency."175.0" )
mig_2_ugol_5_polosa_2 = \( .external_dimensions."1".status[1].transparency."5.0" )
mig_2_ugol_35_polosa_2 = \( .external_dimensions."1".status[1].transparency."35.0" )
mig_2_ugol_70_polosa_2 = \( .external_dimensions."1".status[1].transparency."70.0" )
mig_2_ugol_110_polosa_2 = \( .external_dimensions."1".status[1].transparency."110.0" )
mig_2_ugol_145_polosa_2 = \( .external_dimensions."1".status[1].transparency."145.0" )
mig_2_ugol_170_polosa_2 = \( .external_dimensions."1".status[1].transparency."175.0" )
mig_3_ugol_5_polosa_1 = \( .external_dimensions."1".status[2].transparency."5.0" )
mig_3_ugol_35_polosa_1 = \( .external_dimensions."1".status[2].transparency."35.0" )
mig_3_ugol_70_polosa_1 = \( .external_dimensions."1".status[2].transparency."70.0" )
mig_3_ugol_110_polosa_1 = \( .external_dimensions."1".status[2].transparency."110.0" )
mig_3_ugol_145_polosa_1 = \( .external_dimensions."1".status[2].transparency."145.0" )
mig_3_ugol_170_polosa_1 = \( .external_dimensions."1".status[2].transparency."175.0" )
cpu_temperature = \( .server."stolb-db".cpu[0].cpu_temperature."Package id 0" )
cpu_usage = \( .server."stolb-db".cpu[0].cpu_usage.tot )
ram_usage = \( .server."stolb-db".cpu[0].ram_usage )
hdd_free_space_gb = \( .server."stolb-db".hdd[0].hdd_free_space_gb.ROOT )
hdd_usage = \( .server."stolb-db".hdd[0].hdd_usage.ROOT )
rx_usage_eth0 = \( .server."stolb-db".network[0].rx_usage.eth0 )
rx_usage_eth1 = \( .server."stolb-db".network[0].rx_usage.eth1 )
rx_usage_eth2 = \( .server."stolb-db".network[0].rx_usage.eth2 )
rx_usage_eth5 = \( .server."stolb-db".network[0].rx_usage.eth5 )
tx_usage_eth0 = \( .server."stolb-db".network[0].tx_usage.eth0 )
tx_usage_eth1 = \( .server."stolb-db".network[0].tx_usage.eth1 )
tx_usage_eth2 = \( .server."stolb-db".network[0].tx_usage.eth2 )
tx_usage_eth5 = \( .server."stolb-db".network[0].tx_usage.eth5 )
"'







