varSize = 3;

while(streams[0].length() >= 3){

    vars[2] = streams[0].take();
    vars[2] = 3 * vars[2] - 1;
    vars[1] = streams[0].take();
    vars[1] = 2 * vars[1]; 
    vars[0] = streams[0].take();
    vars[0].print();
    vars[1].print();
    vars[2].print();

};

end;