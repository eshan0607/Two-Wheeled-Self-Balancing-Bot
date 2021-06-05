load starData
nObs = size(spectra,1)
lambdaStart = 630.02
lambdaDelta = 0.14
%task1
lambdaEnd = lambdaStart + (nObs-1)*lambaDelta;
lambda = (lambdaStart:lambdaDelta:lambdaEnd)';
%task2
s = spectra(:,6);
%task3
loglog(lambda,s,".-");
xlabel("Wavelength");
ylabel("Intensity");
%task4
[sHa,idx] = min(s);
lambdaHa = lambda(idx);
%task5
loglog(lambdaHa,sHa,"rs","MarkerSize",8);
%task6
z = (lambdaHa/656.28) - 1;
speed = z*299792.458;
% for task7 change line 7 to
s = spectra(:,2);