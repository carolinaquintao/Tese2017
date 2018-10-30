function createfigure(YMatrix1,name)
%CREATEFIGURE1(YMATRIX1)
%  YMATRIX1:  matrix of y data

%  Auto-generated by MATLAB on 19-Dec-2016 18:35:18

% Create figure
figure1 = figure;
set(figure1, 'Position', [1 1 2000 1000])
% Create axes
axes1 = axes('Parent',figure1,...
    'Position',[0.116071428571429 0.103448275862069 0.78892857142857 0.821551724137931]);
hold(axes1,'on');

% Create multiple lines using matrix input to bar
bar1 = bar(YMatrix1,'Parent',axes1);
set(bar1(12),'DisplayName','EM EM');
set(bar1(11),'DisplayName','EM FCM');
set(bar1(10),'DisplayName','EM ISO');
set(bar1(9),'DisplayName','EM KM');
set(bar1(8),'DisplayName','FCM EM');
set(bar1(7),'DisplayName','FCM FCM');
set(bar1(6),'DisplayName','FCM ISO');
set(bar1(5),'DisplayName','FCM KM');
set(bar1(4),'DisplayName','KM EM');
set(bar1(3),'DisplayName','KM FCM');
set(bar1(2),'DisplayName','KM ISO');
set(bar1(1),'DisplayName','KM KM');

% Get xdata from plot for data statistics
xdata1 = get(bar1(12), 'xdata');
% Get ydata from plot for data statistics
ydata1 = get(bar1(12), 'ydata');
% Make sure data are column vectors
xdata1 = xdata1(:);
ydata1 = ydata1(:);
% Get axes ylim
axXLim1 = get(axes1,'xlim');
ymean1 = mean(ydata1);
% Get coordinates for the mean line
meanValue1 = [ymean1 ymean1];
% Plot the mean
statLine1 = plot(axXLim1,meanValue1,'DisplayName','Average',...
    'Tag','mean y',...
    'Parent',axes1,...
    'LineStyle','-.',...
    'Color',[1 0 0]);
% Set new line in proper position
setLineOrder(axes1,statLine1,bar1(12));


box(axes1,'on');
% Set the remaining axes properties
set(axes1,'FontName','Times New Roman','FontSize',14,'XTick',...
    [0.5 1 2 3 4 5],'XTickLabel',...
    {'','1984-1993','1993-1998','1998-2002','2002-2006','2006-2011'},'YGrid',...
    'on');
% Create legend
legend1 = legend(axes1,'show');
set(legend1,'Location','best');
saveas(figure1,name)

%-------------------------------------------------------------------------%
function setLineOrder(axesh1, newLine1, associatedLine1)
%SETLINEORDER(AXESH1,NEWLINE1,ASSOCIATEDLINE1)
%  Set line order
%  AXESH1:  axes
%  NEWLINE1:  new line
%  ASSOCIATEDLINE1:  associated line

% Get the axes children
hChildren = get(axesh1,'Children');
% Remove the new line
hChildren(hChildren==newLine1) = [];
% Get the index to the associatedLine
lineIndex = find(hChildren==associatedLine1);
% Reorder lines so the new line appears with associated data
hNewChildren = [hChildren(1:lineIndex-1);newLine1;hChildren(lineIndex:end)];
% Set the children:
set(axesh1,'Children',hNewChildren);

