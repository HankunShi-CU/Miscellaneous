%% Simple random sample

%% code

x=[zeros(1,7) ones(1,93)];
n=100000;
ind=[];
tic
for i=1:n
    ming=randsample(x,50);
    if min(ming)==0
        ind(i)=1;
    end
end

%% result
fprintf("simulated prob = %7.5f. \n", mean(ind))
fprintf("true prob = %7.5f. \n",1-nchoosek(93,50)/nchoosek(100,50))
toc
