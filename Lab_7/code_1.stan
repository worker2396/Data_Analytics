data {
    int<lower=1> N;
}

generated quantities {
   real theta = 0.01;
   array [N] real y;
   for (i in 1:N){
       /* code */
       if (bernoulli_rng(theta)){
           y[i] = normal_rng(10,10);
       }
       else{
           y[i] = normal_rng(0,1);
       }
   }
}