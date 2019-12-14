clc;
clear;

A=rand(10,2)

B=rand(10,2)

G={'First'; 'Second'; 'Third';'Fourth';'Fifth';'Sixth';'Seventh';'Eighth';'Ninenth';'Tenth'};

class=knnclassify(A,B,G);

disp('Nearest Neighbors of these points are respectively:');

disp (class);

for i=1:10
    if strcmp(class(i,1), 'First')
        C(i,1)=1;
    elseif strcmp(class(i,1), 'Second')
        C(i,1)=2;
    elseif strcmp(class(i,1), 'Third')
        C(i,1)=3;
    elseif strcmp(class(i,1), 'Fourth')
        C(i,1)=4;
    elseif strcmp(class(i,1), 'Fifth')
        C(i,1)=5;
    elseif strcmp(class(i,1), 'Sixth')
        C(i,1)=6;
    elseif strcmp(class(i,1), 'Seventh')
        C(i,1)=7;
    elseif strcmp(class(i,1), 'Eighth')
        C(i,1)=8;
    elseif strcmp(class(i,1), 'Ninenth')
        C(i,1)=9;
    elseif strcmp(class(i,1), 'Tenth')
        C(i,1)=10;
    
    end
end

plot(B(:,1), B(:,2), 'b.', A(:,1), A(:,2), 'r.', 'MarkerSize', 15);
hold on

quiver(A(:, 1), A(:, 2), B(C,1) - A(:, 1), B(C, 2) - A(:, 2), 0,'k');
hold off



