#include <stdio.h>

void check(short array[][8]);

int main()
{
    short array[8][8];
    printf("Please Enter Matrix:");
    printf("\n");
    for(int i=0; i < 8; i++)
    {
        for(int j=0; j<8; j++)
        {
            scanf("%hi", &array[i][j]);
        }
    }
    check(array);
    printf("Following is the resultant matrix:");
    printf("\n");
    for (int i = 0; i < 8; i++)
    {
        for (int j = 0; j < 8; j++)
        {
            printf("%hi ", array[i][j]);
        }
        printf("\n");
    }
}