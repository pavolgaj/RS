rtl_fm  -M raw -s 48k -f 400.6M -g 32 -E dc | ./rs41mod --ecc4 -r --IQ 0.0 --lp - 48000 16 | tee -a rs41_raw_`date +%Y%m%d-%H%M%S`.txt | ./rs41mod --ecc4 --ptu2 --dewp -vx --rawhex | tee -a rs41_data_`date +%Y%m%d-%H%M%S`.txt
