varSize = 1;

vars[0] = 0;
vars[0].print();

while(streams[0].notEmpty() && streams[1].notEmpty()){

    streams[1].drop();
    vars[0] = streams[1].take();
    vars[0].print();

    vars[0] = streams[0].take();
    vars[0].print();

};

end;
