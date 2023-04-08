rs41mod.exe -vv --ptu2 --dewp --rawhex --ecc4 %* > rs41_data_all.txt 
rs41mod.exe --ptu2 --dewp --rawhex --ecc4 %* > rs41_data.txt 
rs41mod.exe --sat --rawhex --ecc4 %* > rs41_data-sat.txt 
rs41mod.exe --ptu2 --dewp --json --silent --rawhex --ecc4 %* > rs41_data.json 
rs41mod.exe --ptu2 --dewp --json --silent --rawhex --ecc4 rs41_raw1.txt > rs41_data1.json 
