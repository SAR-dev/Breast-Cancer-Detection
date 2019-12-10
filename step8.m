s=1
hhh=z
z=z/10
for i=1:z
    
    for j = s:s+9
        t(i,2)=t(1,1)+y(j,2)
    end
    s=s+10
    i=i+1
end


l= sort (t(:,2),'descend')

for j = 1:z
    ll(j,2)=l(j)
    ll (j,1)=j
    j=j+1;
end
for d = 1:z
    for g = 1:z
        if ll (d,2)== t (g,2)
            ll (d,3) = t (g,1)
            g=g+1
        end
      
    end
    d=d+1
   
    
end