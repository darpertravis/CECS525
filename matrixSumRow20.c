#include <time.h>
int matrixSumRowMajor(int row, int *matr)
{
    int x = 0;
    for (int i=0; i<row; i++)
    {
        for (int j=0; j<row; j++)
        {
            x+=matr[i*row+j];
        }
    }
    return x;
}

/*int matrixSumColMajor(int row, int *matr)
{
    int x = 0;
    for (int i=0; i<row; i++)
    {
        for (int j=0; j<row; j++)
        {
            x+=matr[i*row+j];
        }
    }
    return x;
}*/

int main()
{
    int matrixOfSize[3][3]=
    {
        {1,2,3},
        {0,1,0},
        {0,0,1}
    };
    int matrixOf20[20][20];
    for (int i=0; i<20; i++)
    {
        for (int j=0; j<20; j++)
        {
            matrixOf20[i][j] = i + j;
        }
    }
    clock_t t = clock();
    int sum = matrixSumRowMajor(20, matrixOf20);
    printf("Row Major Time: %d\n", clock() - t);
    printf("Sum: %d\n", sum);
   /* for (int i=0;i<20;i++)
    {
        for (int j=0;j<20;j++)
        {
            matrixOf20[i][j] = i + j;
        }
    }
    t = clock();
    sum = matrixSumColMajor(20,matrixOf20);
    printf("Col Major Time: %d\n", clock()-t);
    printf("Sum: %d\n", sum);*/
}
