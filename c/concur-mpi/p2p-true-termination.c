/* MPI program with one message, an int.
 * Author: Stephen F. Siegel
 * Date: Oct. 21, 2016
 */
#include <stdlib.h>
#include <mpi.h>
#include "sv-comp.h"

int main() { 
  int rank, nprocs, x;

  MPI_Init(NULL, NULL);
  MPI_Comm_rank(MPI_COMM_WORLD, &rank); 
  MPI_Comm_size(MPI_COMM_WORLD, &nprocs); 
  __VERIFIER_assume(nprocs >= 2);
  if (rank == 0) {
    x=1000000;
    MPI_Send(&x, 1, MPI_INT, 1, 999, MPI_COMM_WORLD); 
  } else if (rank == 1)  {
    MPI_Recv(&x, 1, MPI_INT, 0, 999, MPI_COMM_WORLD,
	     MPI_STATUS_IGNORE);
    __VERIFIER_assert(x==1000000);
  } 
  MPI_Finalize(); 
}
