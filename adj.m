function adjacency_mat = adj(att_table, centroid_distance)
    n = size(att_table,1);
    adjacency_mat = zeros(n);
    
    for i = 1:1:n
        for j =  1:1:n
            d = distance(i,j,att_table);
            if i==j
                adjacency_mat(i,j) = 0;
            elseif (d<=centroid_distance+5)
                adjacency_mat(i,j) = 1;
             else
                adjacency_mat(i,j) = Inf;
            end
        end
       
    end
%     adj = [0,1,1,1,Inf,Inf,Inf,Inf;
%              1,0,Inf,Inf,Inf,1,Inf,Inf;
%              1,Inf,0,Inf,1,1,Inf,Inf;
%              1,Inf,Inf,0,1,Inf,Inf,Inf;
%              Inf,Inf,1,1,0,Inf,1,Inf;
%              Inf,1,1,Inf,Inf,0,1,Inf;
%              Inf,Inf,Inf,Inf,1,1,0,1;
%              Inf,Inf,Inf,Inf,Inf,Inf,1,0]
end
