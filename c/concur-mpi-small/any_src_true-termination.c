/* Example contains wildcard receive. This program requires at least 2
   processes. */
#include <mpi.h>
#include <stdlib.h>
#include "sv-comp.h"
#define comm MPI_COMM_WORLD

int main(int argc, char * argv[]) {
  int rank, nprocs;
  
  MPI_Init(&argc, &argv);
  MPI_Comm_rank(MPI_COMM_WORLD, &rank);
  MPI_Comm_size(MPI_COMM_WORLD, &nprocs);
  __VERIFIER_assume(nprocs>=2);
  if (rank == 0)
    MPI_Recv(NULL, 0, MPI_INT, MPI_ANY_SOURCE, 0, comm, MPI_STATUS_IGNORE);
  else if (rank == 1)
    MPI_Send(NULL, 0, MPI_INT, 0, 0, comm);
  MPI_Finalize();
}
