function [val, vec] = prog4_FB(A,x0,niter)
  %autovectores y autovalores
  x=x0;
  for i=1:niter
    x = A*x;
    x = x/norm(x);
  end
  val = max(A*x);
  vec = x;
end