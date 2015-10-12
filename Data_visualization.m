%"Glenn Driver" data has been removed

load('corr_incorr.mat')
GMW_all=corr_incorr{1};
GMR_all=corr_incorr{2};
SMW_all=corr_incorr{3};
SMR_all=corr_incorr{4};

load('corr_only.mat')
GMW=corr_only{1};
GMR=corr_only{2};
SMW=corr_only{3};
SMR=corr_only{4};

figure;
subplot(2,2,1);
hist(GMW_all,20);
title('GMW');
xlabel('RT (sec)')
ylabel('count')

subplot(2,2,2);
hist(GMR_all,20);
title('GMR')
xlabel('RT (sec)')
ylabel('count')

subplot(2,2,3)
hist(SMW_all,20)
title('SMW')
xlabel('RT (sec)')
ylabel('count')

subplot(2,2,4)
hist(SMR_all,20)
title('SMR')
xlabel('RT (sec)')
ylabel('count')

suptitle('Correct and incorrect responses')

figure;
subplot(2,2,1);
hist(GMW,20);
title('GMW');
xlabel('RT (sec)')
ylabel('count')

subplot(2,2,2);
hist(GMR,20);
title('GMR')
xlabel('RT (sec)')
ylabel('count')

subplot(2,2,3)
hist(SMW,20)
title('SMW')
xlabel('RT (sec)')
ylabel('count')

subplot(2,2,4)
hist(SMR,20)
title('SMR')
xlabel('RT (sec)')
ylabel('count')

suptitle('Correct responses only')

% T tests:

[H,Pwr1,CI] = ttest2(GMW_all,GMR_all)
[H,Pwr2,CI] = ttest2(SMW_all,SMR_all)
[H,Pwr3,CI] = ttest2(GMW,GMR)
[H,Pwr4,CI] = ttest2(SMW,SMR)

[H,Pgs1,CI] = ttest2(GMW_all,SMW_all)
[H,Pgs2,CI] = ttest2(GMR_all,SMR_all)
[H,Pgs3,CI] = ttest2(GMW,SMW)
[H,Pgs4,CI] = ttest2(GMR,SMR)


% error rates:

%GMW
GMWerr=100*(length(GMW_all)-length(GMW))/length(GMW_all);

%GMR
GMRerr=100*(length(GMR_all)-length(GMR))/length(GMR_all);

%SMW
SMWerr=100*(length(SMW_all)-length(SMW))/length(SMW_all);

%SMR
SMRerr=100*(length(SMR_all)-length(SMR))/length(SMR_all);

GMWerr
GMRerr
SMWerr
SMRerr