#include <stdio.h>

short distance(short val1, short val2);

int main()
{
    short n1, n2;
    short result = 0;
    printf("Enter the First Element: \n");
    scanf("%hi", &n1);
    printf("Enter the Second Element: \n");
    scanf("%hi", &n2);
    result = distance(n1, n2);
    printf("Final value is: \n");
    printf("%hi", result);
    printf("\n");
}
