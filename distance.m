function dist = distance(i,j, att)
    p1 = lat_long(i, att);
    p2 = lat_long(j, att);
    
    dist = sqrt((p2(1)-p1(1))^2+(p2(2)-p1(2))^2);
end
