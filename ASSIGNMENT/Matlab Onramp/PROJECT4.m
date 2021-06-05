load starData
[sHa,idx] = min(spectra(:,2));
lambdaHa = lambda(idx);
z = lambdaHa/656.28 -1;
speed = z*299792.458
% in task1 modify line 2 to
[sHa,idx] = min(spectra);
for v = 1:7
    s = spectra(:,v)
    if speed(v)<=0
        loglog(lambda,s,"--")
    else speed(v)>0
        loglog(lambda,s,"LineWidth",3)
    end
    hold on
end
hold off
legend(starnames)
movaway = starnames(speed>0)