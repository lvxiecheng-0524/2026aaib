///week13-2.cpp  local vs.global
#include <stdio.h>
int a = 100, b = 200; ///global
void fun1()
{
    int b = 80;
    printf("void fun1() a is: %d\n", a);
    printf("void fun1() b is: %d\n", b);
}
void fun2()
{

        b = 30;
}
int main()
{
        int a = 50;
        printf("int main() a is: %d\n", a);
        printf("int main() b is: %d\n", b);
        fun1();
        fun2();
        printf("int main() a is: %d\n", a);
        printf("int main() b is: %d\n", b);
}
