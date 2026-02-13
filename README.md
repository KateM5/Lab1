# Lab 1
## Compile
print_hello:  gcc -nostdlib -no-pie print_hello.s -o hello   
task1:        gcc -no-pie task1.s print_ram.c -o task1   
task2:        gcc -no-pie task2.s print_ram2.c -o task2   
task3:        gcc -no-pie task3.s print_ram3.c -o task3   
task4:        gcc -no-pie task4.s print_ram4.c -o task4
## Run
print_hello:  ./hello   
task1:        ./task1   
task2:        ./task2   
task3:        ./task3   
task4:        ./task4
