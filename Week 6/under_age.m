function too_young = under_age(age, limit)

if nargin < 1 
    error('you need to enter at least one input.');
    
elseif nargin == 1
    limit = 21;

end 

too_young = age < limit
   
end
