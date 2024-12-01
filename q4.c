#include <stdio.h>

void freq(char* array, int *result);

int main()
{
    char array[32];
    printf("Please Enter 32 characters");
    printf("\n");
    for(int i=0; i < 32; i++)
    {
        scanf("%c", &array[i]);
    }
    int result[32] = {0};
    freq(array, result);
    printf("Following are the frequencies:");
    printf("\n");
    for (int i = 0; i < 26; i++)
    {
        printf("%c = %d\n", (char)(97 + i), result[i]);
    }
}