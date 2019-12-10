%%
z=hhh
for j = 1:z
    
    pop (j,1)=j
    j=j+1;
end

for d = 1:z
    for g = 1:z
        if zz (d,3)== y (g,2)
            pop (d,2) = y (g,1)
            
        end
        g=g+1;
    end
    d=d+1
end


pop(:,1) = [];
c = pop(pop~=1);
b = c(c~=0);
   
    
