function valid = valid_date(y,m,d)
if nargin ~= 3
 error('must have three input arguments; year, month, and day.');
end
if nargin == 3
    if ~isscalar(y) || y < 1 || y ~= fix(y)
            valid = false;
            return
    elseif ~isscalar(m) || m < 1 || m ~= fix(m)
            valid = false;
            return
    elseif ~isscalar(d) || d < 1 || d ~= fix(d)
            valid = false;
            return
    end
end

% type of month
m1 = [1,3,5,7,8,10,12];
m2 = [4,6,9,11];
%february of leap or common year?
cfeb = [1:28];
lyfeb = [1:29];
% does the month has 30 or 31 days?
d1 = [1:31];
d2 = [1:30];

if rem(y,4) == 0 && rem(y,100) ~= 0 || rem(y,4) == 0 && rem(y,100) == 0 && rem(y,400) == 0
    if ismember(m,m1) && ismember(d,d1)
        valid = true;
    elseif ismember(m,m2) && ismember(d,d2)
        valid = true;
    elseif m == 2 && ismember(d,lyfeb)
        valid = true;
    else 
        valid = false;
    end
else if rem(y,4) ~= 0 || rem(y,4) == 0 && rem(y,100) == 0 && rem(y,400) ~= 0
        if ismember(m,m1) && ismember(d,d1)
            valid = true;
        elseif ismember(m,m2) && ismember(d,d2)
            valid = true;
        elseif m == 2 && ismember(d,cfeb)
            valid = true;
        else 
            valid = false;
        end
end
end
