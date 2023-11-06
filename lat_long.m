function coordinates = lat_long(i, att_table)
    lattitude = att_table(i,2);
    longitude = att_table(i,3);
    coordinates = [lattitude, longitude];
end
