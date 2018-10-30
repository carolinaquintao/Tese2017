function [jhist jent] = ent(J,K)
%takes two images of equal size and pixel value ranges and returns the
%joint histogram, joint entropy, and mutual information. No error checking
%used, as this function is built for speed. For additional speed,
%instructions on how to remove what you do not need are in the comments
%below
%made my Jason Agne 10MAY13

%%assumes 256x256 (pixel values range from 0-255)
%%this assumption can be changed here if desired
dimen = 256;

x = numel(J);
t = 1:x;
xx = J(:)+1;
yy = dimen*K(:);

xx = xx + yy;
xx = sort(xx);

yy(1:x-1) = xx(2:x);

zz = yy - xx;
zz(x) = 1;
zz = t(zz ~=0);

yy = xx(zz);

t = numel(zz);

zz(2:t) = zz(2:t)-zz(1:t-1);
xx = zz/x;

%if you do not need the joint histogram but do need the mutual information,
%remove jhist from the returned variables, but do NOT comment this out.
%if you need neither the joint histogram nor the mutual information,
%comment out the following two lines
jhist = zeros(dimen);
jhist(yy) = xx;

%if you do not need joint entropy, comment out the following line and
%remove jent from the list of returned variables
jent = -sum(xx.*log2(xx));
end
