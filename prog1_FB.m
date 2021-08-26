function [x] = prog1_FB(A,b)
  %backwards sustitution
  n = size(b);
  x = zeros(n,1);
  
  for i=n:-1:1
    sum = 0;
    for j=n : -1 : i+1
      A(i,j)=A(i,j)*x(j,1);
      sum = sum + A(i,j);
    end
    b(i,1)= b(i,1) - sum;
    x(i,1) = b(i,1)/A(i,i);
  end
  
end
