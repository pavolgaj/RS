dfm09mod.exe -vvv --ecc2 --ptu --rawhex %1 > %1_data_all.txt 
dfm09mod.exe -vv --ecc2 --ptu --rawhex %1 > %1_data_all1.txt 
dfm09mod.exe -v --ecc2 --ptu --rawhex %1 > %1_data_all2.txt 
dfm09mod.exe --ecc2 --ptu --rawhex %1 > %1_data.txt 
dfm09mod.exe --ecc2 --sat --rawhex %1 > %1_data-sat.txt 
dfm09mod.exe --ecc2 --ptu --json2 --rawhex %1 > %1_data.json 
dfm09mod.exe --ecc2 -r --rawhex %1 > %1_raw1.txt
dfm09mod.exe --ecc2 -R --rawhex %1 > %1_raw2.txt 
