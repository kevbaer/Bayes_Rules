data {
  int<lower=0, upper=10> Y;
}

parameters {
  real<lower=0, upper=1> pi;
}

model {
  Y ~ binomial(10, pi);
  pi ~ beta(2,2);
}
