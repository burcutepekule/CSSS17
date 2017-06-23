# include <cstdlib>
# include <iostream>
# include <iomanip>
# include <cmath>
# include <stdio.h>
//# include <random>
# include <fstream>
# include <vector>
# include <cmath>
# include <tgmath.h>
# include <cstdlib>
# include <ctime>
# include <stack>
# include <math.h>
# include <sys/stat.h>
# include <stdlib.h>
# include <algorithm>
# include <vector>
# include <set>
#include <sstream>
#include <stdio.h>
#include <stdlib.h>
//#include <boost/array.hpp>
//#include <boost/numeric/odeint.hpp>
#include <gsl/gsl_math.h>
#include <gsl/gsl_eigen.h>
#include <Eigen/Core>
#include <SymEigsSolver.h>  // Also includes <MatOp/DenseSymMatProd.h>
#include <GenEigsSolver.h>

#define arraySize(array) (  sizeof((array))/sizeof((array[0])))

using namespace std;
using namespace Spectra;
using namespace Eigen;

template <typename T>
bool
my_isnan(const T x)
{
#if __cplusplus >= 201103L
    using std::isnan;
#endif
    return isnan(x);
}
double getEigenVecFast(int size, double data[]){
    // We are going to calculate the eigenvalues of M
    double a;
    MatrixXd M(size,size);
    for(int i=0;i<size;i++){
        for(int j=0;j<size;j++)
            M(i,j)=data[(i)*size+j];
    }
    
    // Construct matrix operation object using the wrapper class
    DenseGenMatProd<double> op(M);
    // Construct eigen solver object, requesting the largest
    // (in magnitude, or norm) one eigenvalues
    
    GenEigsSolver< double, LARGEST_REAL, DenseGenMatProd<double> > eigs(&op, 1, size-4);
    // Initialize and compute
    eigs.init();
    int nconv = eigs.compute();
    // Retrieve results
    VectorXcd evalues;
    if(eigs.info() == SUCCESSFUL)
        evalues = eigs.eigenvalues();
    
    vector<double> v2;
    v2.resize(evalues.size());
    VectorXd::Map(&v2[0], evalues.size()) = evalues.real();
    a = v2[0];
    return a;
    
}


void getEigenVec(int size, double data[], gsl_complex *eigVec){
    
    gsl_matrix_view m = gsl_matrix_view_array (data, size, size);
    gsl_vector_complex *eval = gsl_vector_complex_alloc (size);
    gsl_matrix_complex *evec = gsl_matrix_complex_alloc (size, size);
    gsl_eigen_nonsymmv_workspace * w = gsl_eigen_nonsymmv_alloc (size);
    gsl_eigen_nonsymmv (&m.matrix, eval, evec, w);
    gsl_eigen_nonsymmv_free (w);
    gsl_eigen_nonsymmv_sort (eval, evec,GSL_EIGEN_SORT_ABS_DESC);
    
    for (int i = 0; i < size; i++){
        // MAKE A VECTOR OF EIGENVALUES
        gsl_complex eval_i= gsl_vector_complex_get (eval, i);
        eigVec[i] = eval_i;
        //        gsl_vector_complex_view evec_i= gsl_matrix_complex_column (evec, i);
        //            printf ("eigenvalue = %g + %gi\n",GSL_REAL(eval_i), GSL_IMAG(eval_i));
        //            printf ("eigenvector = \n");
        //            for (j = 0; j < size; ++j)
        //            {
        //                z =gsl_vector_complex_get(&evec_i.vector, j);
        //                printf("%g + %gi\n", GSL_REAL(z), GSL_IMAG(z));
        //            }
    }
    gsl_vector_complex_free(eval);
    gsl_matrix_complex_free(evec);
}

int main (int argc, char **argv)
{
    int numOfSims = atoi(argv[1]);
    string directory = argv[2];
    //$patch $species $Sp $s $r $mu
    int numBits = atoi(argv[3]);
    int timeStp = atoi(argv[4]);
    string usrname = argv[5];

    
    for(int simIdx=0;simIdx<numOfSims;simIdx++){
        string fileName= "/Users/" + usrname + "/Desktop/SIM_" +to_string(timeStp) + "/JacobianData/J_BITS_" + to_string(numBits) + "/J_" + to_string(simIdx) + ".txt";
        
        int number_of_lines = 0;
        
        FILE *infile = fopen(fileName.c_str(), "r");
        ifstream myfile;
        myfile.open(fileName);
        string line;
        
        int ch;
        while (EOF != (ch=getc(infile)))
            if ('\n' == ch){++number_of_lines;}
        
        int sizeArr = number_of_lines;
        double data[sizeArr];
        for(int loopIdx=0;loopIdx<number_of_lines;loopIdx++){
            for (int lineno = 0; lineno < loopIdx+1; lineno++){
                if (lineno == loopIdx){
                    getline (myfile,line);
                    myfile >> data[loopIdx];
                }
            }
        }
        
        int size = sqrt(arraySize(data));
        double maxEigVal;
        
        if (size<10){
            double eigReals [size];
            gsl_complex *eigVec = new gsl_complex[size];
            getEigenVec(size,data,eigVec) ;
            for (int j = 0; j < size; ++j){
                eigReals[j] = GSL_REAL(eigVec[j]);
            }
            maxEigVal = (*max_element(eigReals, eigReals+size));
            
        }else{
            maxEigVal = getEigenVecFast(size,data);
        }
        
        string fileName2Save2=directory + "EigenMax/Emax_" + to_string(simIdx) + ".txt";
        FILE *result2;
        result2 = fopen(fileName2Save2.c_str(),"w+");
        fprintf(result2,"%f ",maxEigVal);
        fclose(result2);
        remove(fileName.c_str());
        
        //        int size = sqrt(arraySize(data));
        //        double eigReals [size];
        //        gsl_complex *eigVec = new gsl_complex[size];
        //
        //        getEigenVec(size,data,eigVec) ;
        //
        //        // SAVE ALL EIGENVALUES
        //        string fileName2Save =directory + "EigenData/E_" + to_string(simIdx) + ".txt";
        //        FILE *result;
        //        result  = fopen(fileName2Save.c_str(),"w+");
        //
        //        for (int j = 0; j < size; ++j)
        //        {
        //            fprintf(result,"%g + %gi\n", GSL_REAL(eigVec[j]), GSL_IMAG(eigVec[j]));
        //            eigReals[j] = GSL_REAL(eigVec[j]);
        //
        //        }
        //        fclose(result);
        //
        //        // SAVE THE MAXIMUM EIGENVALUE
        //        string fileName2Save2=directory + "EigenMax/Emax_" + to_string(simIdx) + ".txt";
        //        FILE *result2;
        //        result2 = fopen(fileName2Save2.c_str(),"w+");
        //        double maxEigVal = (*max_element(eigReals, eigReals+size));
        //        fprintf(result2,"%g", maxEigVal);
        //        fclose(result2);
        //        
        //        remove(fileName.c_str());
    }
    
    
    return 0;
    
}
