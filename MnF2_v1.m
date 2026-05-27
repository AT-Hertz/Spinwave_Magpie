addpath(genpath('C:\Users\arthu\AppData\Roaming\MathWorks\MATLAB Add-Ons\Toolboxes\SpinW'))

mnf2 = spinw;

mnf2.genlattice('lat_const', [4.873 4.873 3.130], ...
                'angled',    [90 90 90], ...
                'sym',       136);

mnf2.addatom('r',     [0 0 0], ...
             'S',     2.5, ...
             'label', 'Spins', ...
             'color', 'red');

mnf2.gencoupling('maxDistance', 7);

mnf2.addmatrix('label', 'jc', 'value', -0.056, 'color', 'blue');
mnf2.addmatrix('label', 'j',  'value',  0.304, 'color', 'green');
mnf2.addmatrix('label', 'ja', 'value',  0.008, 'color', 'red');
mnf2.addmatrix('label', 'jb', 'value',  0.008, 'color', 'cyan');
mnf2.addmatrix('label', 'D',  'value', diag([0 0 -0.023]), 'color', [255 182 193]);

mnf2.addcoupling('mat', 'jc', 'bond', 1);

mnf2.addcoupling('mat', 'j', 'bond', 2);

mnf2.addcoupling('mat', 'ja', 'bond', 3, 'subIdx', [1 3]);
mnf2.addcoupling('mat', 'jb', 'bond', 3, 'subIdx', [2 4]);

mnf2.addaniso('D');

mnf2.genmagstr('mode', 'direct', ...
               'S',    [0  0; 0  0; -1 1], ...
               'k',    [0 0 0], ...
               'n',    [0 0 1]);

plot(mnf2, 'range', [1 1 1])