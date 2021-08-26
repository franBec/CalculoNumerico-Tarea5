function [t,Bt] = prog2_FB(A,b)
  %triangularizacion
  n = size(b);
  
  for i=1:n
    for j=1:i-1
      m = A(i,j)/A(j,j);
      A(i,:) = A(i,:) + (-m)*A(j,:);
      b(i,1) = b(i,1) + (-m)*b(j);
    end  
  end
  
  t = A;
  Bt = b;
end