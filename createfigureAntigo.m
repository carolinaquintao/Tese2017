function createfigure(YMatrix1)
%CREATEFIGURE(YMATRIX1)
%  YMATRIX1:  matrix of y data

%  Auto-generated by MATLAB on 19-Dec-2016 18:29:10

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1,...
    'Position',[0.116071428571429 0.103448275862069 0.78892857142857 0.821551724137931]);
hold(axes1,'on');

% Create multiple lines using matrix input to plot
plot1 = plot(YMatrix1,'Parent',axes1);
set(plot1(1),'DisplayName','EM EM');
set(plot1(2),'DisplayName','EM FCM');
set(plot1(3),'DisplayName','EM ISO');
set(plot1(4),'DisplayName','EM KM');
set(plot1(5),'DisplayName','FCM EM');
set(plot1(6),'DisplayName','FCM FCM');
set(plot1(7),'DisplayName','FCM ISO');
set(plot1(8),'DisplayName','FCM KM');
set(plot1(9),'DisplayName','KM EM');
set(plot1(10),'DisplayName','KM FCM');
set(plot1(11),'DisplayName','KM ISO');
set(plot1(12),'DisplayName','KM KM');

% Uncomment the following line to preserve the X-limits of the axes
 xlim(axes1,[0.9 5.1]);
box(axes1,'on');
% Set the remaining axes properties
set(axes1,'XGrid','on','XTick',[0.5 1 2 3 4 5],'XTickLabel',...
    {'','1984-1993','1993-1998','1998-2002','2002-2006','2006-2011'},'YGrid',...
    'on');
% Create legend
legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.84243693979825 0.559626436781609 0.0435924369747899 0.203304597701149]);

