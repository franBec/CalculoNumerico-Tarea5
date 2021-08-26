function [x] = prog3_FB(A,b)
  [t,Bt] = prog2_FB(A,b);
  [x] = prog1_FB(t,Bt);
end
