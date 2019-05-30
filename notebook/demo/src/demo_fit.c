
#include <stdio.h>
#include <gsl/gsl_fit.h>

int main (void)
{
  int n = 11;
  double x[11] = {10.0, 8.0, 13.0, 9.0,11.0,14.0,6.0,4.0 ,12.0,7.0,5.0};
  double y[11] = {  8.04,  6.95,7.68, 8.81, 8.33,9.96,7.24,4.26,10.84,4.82,5.68 };

  double c0, c1, cov00, cov01, cov11, sumsq;

  gsl_fit_linear (x, 1, y, 1, n,
                   &c0, &c1, &cov00, &cov01, &cov11,
                   &sumsq);

  printf ("best fit: Y = %g + %g X\n", c0, c1);
  printf ("covariance matrix:\n");
  printf ("[ %g, %g\n  %g, %g]\n",
          cov00, cov01, cov01, cov11);
  printf ("sumsq = %g\n", sumsq);

  printf ("\n");

  return 0;
}
