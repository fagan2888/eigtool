function ps_data = switch_showdimension(fig,cax,this_ver,ps_data)

% function ps_data = switch_showdimension(fig,cax,this_ver,ps_data)
%
% Function called when the 'Show Dimension' menu option
% is chosen

% Version 2.4.0 (Wed Nov 19 11:25:04 EST 2014)
% Copyright (c) 2002-2014, The Chancellor, Masters and Scholars
% of the University of Oxford, and the EigTool Developers. All rights reserved.
% EigTool is maintained on GitHub:  https://github.com/eigtool
% Report bugs/request features at https://github.com/eigtool/eigtool/issues

      mnu_itm_h = findobj(fig,'Tag','ShowDimension');
      cur_state = get(mnu_itm_h,'checked');
      if strcmp(cur_state,'off'),
        set(mnu_itm_h,'checked','on');
        ps_data = switch_redrawcontour(fig,cax,this_ver,ps_data);
      else
%% The code for 'RedrawContour' should store the handle for the grid
%% in the userdata field for the menu item
        delete(findobj(fig,'Tag','DimText'));
        set(mnu_itm_h,'checked','off');
      end;
