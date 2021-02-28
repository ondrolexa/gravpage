function polylx_online_install
%POLYLX_ONLINE_INSTALL Install recent version of polyLX from web

% This file is part of polyLX.
% 
% polyLX is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
% 
% polyLX is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with polyLX.  If not, see <http://www.gnu.org/licenses/>.

% polyLX - MATLAB toolbox for microstructure analyses
% Copyright (C) 2012 Ondrej Lexa

tmp_file = tempname;
fprintf('Downloading recent version of PolyLX... ')
try
    websave(tmp_file, 'https://petrol.natur.cuni.cz/~ondro/latest_polylx');
catch
    try
        urlwrite('https://petrol.natur.cuni.cz/~ondro/latest_polylx',tmp_file);
    catch
        disp('Sorry... download failed. Please install manually.')
        return
    end
end
fprintf('OK\n')
disp('Select directory where to install PolyLX...')
dir_name = uigetdir;
if ~isnumeric(dir_name)
    fprintf('Installing to directory %s... ',dir_name)
    unzip(tmp_file,dir_name)
    plx=fullfile(dir_name,'polylx');
    p=path;
    if isempty(strfind(p,[plx ':']))
        addpath(plx)
        savepath
    end
    fid=fopen(fullfile(plx,'Contents.m'));
    fgetl(fid);
    l=fgetl(fid);
    vrs=char(regexp(l,'(?<ver>[0-9].[0-9].[0-9])','match'));
    fclose(fid);
    fprintf('OK\n')
    disp(['PolyLX version ' vrs ' have been installed successfully.'])
    fprintf('\nPost-install check....\n')
    polylxcheck
    delete(tmp_file)
else
    disp('Installation cancelled.')
end
