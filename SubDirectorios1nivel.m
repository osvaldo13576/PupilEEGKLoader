function [subDirsNames] = SubDirectorios1nivel(parentDir)
    files = dir(parentDir);
    dirFlags = [files.isdir];
    subDirs = files(dirFlags); 
    subDirsNames = {subDirs(3:end).name};
end