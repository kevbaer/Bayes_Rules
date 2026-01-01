data {
  int<lower=0> artworks;
  int<lower=0> num_genx;
}

parameters{
  real<lower=0, upper=1> pi;
}

model {
  pi ~ beta(4, 6);
  num_genx ~ binomial(artworks, pi);
}
