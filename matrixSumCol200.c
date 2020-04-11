#include <time.h>
/*int matrixSumRowMajor(int row, int *matr)
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

int matrixSumColMajor(int row, int *matr)
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

int main()
{
    int matrixOfSize[3][3]=
    {
        {1,2,3},
        {0,1,0},
        {0,0,1}
    };
    int matrixOf200[200][200];
    /*for (int i=0; i<200; i++)
    {
        for (int j=0; j<200; j++)
        {
            matrixOf200[i][j] = i + j;
        }
    }*/
    clock_t t = clock();
   /* int sum = matrixSumRowMajor(200, matrixOf200);
    printf("Row Major Time: %d\n", clock() - t);
    printf("Sum: %d\n", sum);*/
    for (int i=0;i<200;i++)
    {
        for (int j=0;j<200;j++)
        {
            matrixOf200[i][j] = i + j;
        }
    }
    t = clock();
    int sum = matrixSumColMajor(200,matrixOf200);
    printf("Col Major Time: %d\n", clock()-t);
    printf("Sum: %d\n", sum);
}
