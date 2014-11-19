function ps_data = switch_exportmtx(fig,cax,this_ver,ps_data)

% function ps_data = switch_exportmtx(fig,cax,this_ver,ps_data)
%
% Function called when the 'Export mtx' option is selected

% Version 2.4.0 (Wed Nov 19 11:25:03 EST 2014)
% Copyright (c) 2002-2014, The Chancellor, Masters and Scholars
% of the University of Oxford, and the EigTool Developers. All rights reserved.
% EigTool is maintained on GitHub:  https://github.com/eigtool
% Report bugs/request features at https://github.com/eigtool/eigtool/issues

      fn = inputdlg({['Please enter a name for the matrix variable in ' ...
                    'the base workspace.']}, ...
                    'Matrix variable name...', 1,{'A'});
      if isempty(fn) | isempty(fn{1}),        % If cancel chosen (or blank), just do nothing
        return;
      end;

      assignin('base',fn{1},ps_data.input_matrix);
