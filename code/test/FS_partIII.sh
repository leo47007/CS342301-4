valgrind ../build.linux/nachos -f
valgrind --leak-check=full ../build.linux/nachos -mkdir /t0
valgrind --leak-check=full ../build.linux/nachos -mkdir /t1
valgrind --leak-check=full ../build.linux/nachos -mkdir /t2
valgrind --leak-check=full ../build.linux/nachos -cp num_100.txt /t0/f1
valgrind --leak-check=full ../build.linux/nachos -mkdir /t0/aa
valgrind --leak-check=full ../build.linux/nachos -mkdir /t0/bb
valgrind --leak-check=full ../build.linux/nachos -mkdir /t0/cc
valgrind --leak-check=full ../build.linux/nachos -cp num_100.txt /t0/bb/f1
valgrind --leak-check=full ../build.linux/nachos -cp num_100.txt /t0/bb/f2
valgrind --leak-check=full ../build.linux/nachos -cp num_100.txt /t0/bb/f3
valgrind --leak-check=full ../build.linux/nachos -cp num_100.txt /t0/bb/f4
valgrind --leak-check=full ../build.linux/nachos -l /
echo "========================================="
valgrind --leak-check=full ../build.linux/nachos -l /t0
echo "========================================="
valgrind --leak-check=full ../build.linux/nachos -lr /
valgrind --leak-check=full ../build.linux/nachos -r /t0/bb/f1
valgrind --leak-check=full ../build.linux/nachos -l /
echo "========================================="
valgrind --leak-check=full ../build.linux/nachos -p /t0/f1
echo "========================================="
valgrind --leak-check=full ../build.linux/nachos -p /t0/bb/f3

