#include<iostream>
#include<time.h>
#include<omp.h>
#include<cstdlib>
 
using namespace std;

int main()
{
clock_t start, finish;
int array[4];

cout << "\n*********Parallel Execution**********\n";

int n = 4;
for(int i = 0; i < n; i++){
        array[i] = rand()%100;
}
	
int min = 99;
int max = -99;
int min_index;
int max_index;
float sum = 0;

double start_parallel = omp_get_wtime( );


for(int i = 0; i < n; i++){
	if(array[i] < min){
		min = array[i];
		min_index = i;
		}
	if(array[i] > max){
		max = array[i];
		max_index = i;
		}
	sum = sum + array[i];
	}

double finish_parallel = omp_get_wtime( );
cout << "\nmin is :" << min;
cout << "\nmax is :" << max;
cout << "\nsum is :" << sum;
cout << "\navg is :" << sum/n;


cout << "\ntotal time taken " << finish_parallel - start_parallel << " sec\n";

cout << "\n*********Sequential Execution**********\n";

min = 9999;
max = -9999;
min_index;
max_index;
sum = 0;

//start = clock();
double start_parallel1 = omp_get_wtime( );
#pragma omp parallel for num_threads(20)
for(int i = 0; i < n; i++){
	if(array[i] < min){
		min = array[i];
		min_index = i;
		}
	if(array[i] > max){
		max = array[i];
		max_index = i;
		}
	sum = sum + array[i];
	}
double finish_parallel1 = omp_get_wtime( );
//finish = clock();
cout << "\nmin is :" << min;
cout << "\nmax is :" << max;
cout << "\nsum is :" << sum;
cout << "\navg is :" << sum/n;


cout << "\ntotal time taken " << finish_parallel1 - start_parallel1 << " sec\n\n";


cout << "Execution time of Parallel is " << (finish_parallel1 - start_parallel1) / (finish_parallel - start_parallel) << " times faster than Sequential Processing \n\n";

return 0;
}
