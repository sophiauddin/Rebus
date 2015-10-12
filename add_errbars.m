%Script to plot results from ANOVAs in MATLAB for easier presentation in
%powerpoint, etc.

%y(1)=input('Input mean of General, Words:  ');
%y(2)=input('Input mean of Specific, Words:  ');
%y(3)=input('Input mean of General, Rebus:  ');
%y(4)=input('Input mean of Specific, Rebus:  ');

y(1)=input('Input mean of GMW:  ');
y(2)=input('Input mean of GNW:  ');
y(3)=input('Input mean of GMR:  ');
y(4)=input('Input mean of GNR:  ');


errbar(1)=input('Input std of GMW for err bar:   ');
errbar(2)=input('Input std of GNW for err bar:   ');
errbar(3)=input('Input std of GMR for err bar:   ');
errbar(4)=input('Input std of GNR for err bar:   ');


figure;plot(y(1:2),'ro-');hold on;
plot(y(3:4),'bo-')
legend('Word','Rebus')
errorbar(y(1:2),errbar(1:2),'r')
errorbar(y(3:4),errbar(3:4),'b')
xlim([0.5 2.5])
title('% correct for Understandable vs. Nonsense judgment, SPECIFIC')
%ylabel('RT, sec')
ylabel('% correct')


ax=gca;
ax.XTick=[1 2];
% ax.XTickLabel = {'General','Specific'};
% xlabel('condition')

ax.XTickLabel = {'Understandable','Nonsense'};
xlabel('meaning status')



