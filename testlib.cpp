int sum_of_squares(double* seq, int n){
    int sum = 0.0;
    for(int i=0; i<n;++i){
        sum += seq[i];
    }

    return sum;
}