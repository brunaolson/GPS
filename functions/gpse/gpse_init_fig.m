function gpse_init_fig
% Opens a GUI to use GPS edit functions
%
% Author: A. Conrad Nied
%
% Changelog:
% 2012.10.07 - Created, based on GPS1.7/gpsa_init_fig
% 2012.10.22 - Implemented functions
% 2013.06.18 - GPS1.8, Organized functions better

state = gpse_get;

%% Draw the main GUI figure and set properties
clf(state.gui.fig)
state.gui.bgcolor = [0.8 0.8 0.8];
state.gui.position.fig = [45, state.gui.position.screen(4) - 480, 510, 130];

set(state.gui.fig, 'Visible', 'on', 'Color', state.gui.bgcolor,...
    'Units', 'pixels', 'Position', state.gui.position.fig,...
    'MenuBar', 'none', 'ToolBar', 'none',...
    'Name', 'GPSe', 'NumberTitle', 'off');

% Draw the title
state.gui.title = uicontrol(state.gui.fig, 'Style', 'Text',...
    'Units', 'pixels', 'Position', [110, 100, 120, 20],...
    'BackgroundColor', state.gui.bgcolor, 'FontSize', 14,...
    'String', 'GPS: Editor');

%% Studies and Files

% Studies
state.gui.studies = uicontrol(state.gui.fig, 'Style', 'PopupMenu',...
    'Units', 'pixels', 'Position', [10, 100, 80, 20],...
    'BackgroundColor', state.gui.bgcolor, 'FontSize', 10,...
    'String', 'Studies', 'Callback', 'gpse_load_study;');

% Files
state.gui.files = uicontrol(state.gui.fig, 'Style', 'PopupMenu',...
    'Units', 'pixels', 'Position', [10, 70, 100, 20],...
    'BackgroundColor', state.gui.bgcolor, 'FontSize', 10,...
    'String', 'Files', 'Callback', 'gpse_load_file;');

%% Fields

% First Level Field
state.gui.field1 = uicontrol(state.gui.fig, 'Style', 'PopupMenu',...
    'Units', 'pixels', 'Position', [120, 70, 120, 20],...
    'BackgroundColor', state.gui.bgcolor, 'FontSize', 10,...
    'String', 'Field1', 'Callback', 'gpse_select_field(1);');

% Second Level Field
state.gui.field2 = uicontrol(state.gui.fig, 'Style', 'PopupMenu',...
    'Units', 'pixels', 'Position', [250, 70, 120, 20],...
    'BackgroundColor', state.gui.bgcolor, 'FontSize', 10,...
    'String', 'Field2', 'Callback', 'gpse_select_field(2);');

% Third Level Field
state.gui.field3 = uicontrol(state.gui.fig, 'Style', 'PopupMenu',...
    'Units', 'pixels', 'Position', [380, 70, 120, 20],...
    'BackgroundColor', state.gui.bgcolor, 'FontSize', 10,...
    'String', 'Field3', 'Callback', 'gpse_select_field(3);');

%% Edit Box

state.gui.editbox = uicontrol(state.gui.fig, 'Style', 'Edit',...
    'Units', 'pixels', 'Position', [10, 40, 490, 20],...
    'BackgroundColor', state.gui.bgcolor, 'FontSize', 10,...
    'String', 'Edit', 'Callback', 'gpse_editbox;');

%% Buttons

state.gui.default = uicontrol(state.gui.fig, 'Style', 'PushButton',...
    'Units', 'pixels', 'Position', [10, 10, 80, 20],...
    'BackgroundColor', state.gui.bgcolor, 'FontSize', 10,...
    'String', 'Default', 'Callback', 'gpse_defaultbutton;',...
    'Enable', 'off');

state.gui.option = uicontrol(state.gui.fig, 'Style', 'PushButton',...
    'Units', 'pixels', 'Position', [100, 10, 80, 20],...
    'BackgroundColor', state.gui.bgcolor, 'FontSize', 10,...
    'String', 'Option', 'Callback', 'gpse_option;');

state.gui.type = uicontrol(state.gui.fig, 'Style', 'Edit',...
    'Units', 'pixels', 'Position', [190, 10, 80, 20],...
    'BackgroundColor', state.gui.bgcolor, 'FontSize', 10,...
    'String', 'Type', 'Enable', 'Inactive');

state.gui.exit = uicontrol(state.gui.fig, 'Style', 'PushButton',...
    'Units', 'pixels', 'Position', [330, 10, 80, 20],...
    'BackgroundColor', state.gui.bgcolor, 'FontSize', 10,...
    'String', 'Delete File', 'Callback', 'gpse_delete;');

state.gui.exit = uicontrol(state.gui.fig, 'Style', 'PushButton',...
    'Units', 'pixels', 'Position', [420, 10, 80, 20],...
    'BackgroundColor', state.gui.bgcolor, 'FontSize', 10,...
    'String', 'Save & Exit', 'Callback', 'gpse_exit;');

%% Save and trickle down

gpse_set(state);

% Initialize the study list
gpse_init_studies;

end % function