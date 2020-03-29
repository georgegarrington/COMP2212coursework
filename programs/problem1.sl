varSize = 3;

while(streams[0].notEmpty() || streams[1].notEmpty()){

    vars[0] = streams[0].take();
    vars[1] = streams[0].take();
    vars[2] = streams[1].take();
    vars[0].print();
    vars[1].print();
    vars[2].print();

};

end;
