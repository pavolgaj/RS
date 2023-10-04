./dfm09mod -vvv --ecc2 --ptu --rawhex "$1" > "$1"_data_all.txt 
./dfm09mod -vv --ecc2 --ptu --rawhex "$1" > "$1"_data_all1.txt 
./dfm09mod -v --ecc2 --ptu --rawhex "$1" > "$1"_data_all2.txt
./dfm09mod --ecc2 --ptu --rawhex "$1" > "$1"_data.txt 
./dfm09mod --ecc2 --sat --rawhex "$1" > "$1"_data-sat.txt 
./dfm09mod --ecc2 --ptu --json2 --rawhex "$1" > "$1"_data.json 
./dfm09mod --ecc2 -r --rawhex "$1" > "$1"_raw1.txt
./dfm09mod --ecc2 -R --rawhex "$1" > "$1"_raw2.txt 
