function [Square50_integrator, Square50_differentiatior, Triangle40_integrator, Triangle40_differentiatior] = Import_csv(filepath)
CSV = readtable(filepath);
Triangle40_integrator = CSV(1:1000,1:2);
Triangle40_differentiatior= CSV(1:1000,4:5);
Square50_integrator = 0;
Square50_differentiatior = 0;
end

