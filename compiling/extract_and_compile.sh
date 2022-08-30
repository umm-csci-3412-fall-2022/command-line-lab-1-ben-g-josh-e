exe_arg=$1 #stores the argument to be passed to the compiled executable

tar -xzf NthPrime.tgz
cd NthPrime || exit

gcc -o NthPrime main.c nth_prime.c
./NthPrime "$exe_arg"
