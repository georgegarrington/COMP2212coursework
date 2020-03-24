varSize = 2;
vars[1] = 0;

while(streams[0].notEmpty()){

    vars[0] = streams[0].take();
    vars[1] = vars[0] + vars[1];
    vars[1].print();

};

end;
