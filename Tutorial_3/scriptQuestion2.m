% Watts Strogatz Method
% i = 0:0.001:1;
% 
% for j=1:length(i)
%     CIJ = NetworkWattsStrogatz(50,4,i(j));
%     res(j) = SmallWorldIndex(CIJ);
%     waitbar(j/length(i));
% end
% 
% semilogx(i, res, 'o')

% Global and local efficiency
i = 0:0.001:1;

 for j=1:length(i)
     CIJ = NetworkWattsStrogatz(50,4,i(j));
     res1(j) = sum(efficiency_wei(CIJ,1))/length(efficiency_wei(CIJ,1));
     res2(j) = sum(efficiency_wei(CIJ,0))/length(efficiency_wei(CIJ,0));
     waitbar(j/length(i));
 end
 
 hold on;
 semilogx(i, res1, 'o')
 semilogx(i, res2, 'o')