varSize = 5;

while(streams[0].notEmpty() && streams[1].notEmpty() && streams[2].notEmpty()){

    vars[0] = streams[2].take();
    vars[1] = streams[1].take();
    vars[2] = streams[0].take();
    vars[3] = vars[0] + vars[1];
    vars[4] = vars[1] + vars[2];

    vars[0].print();
    vars[1].print();
    vars[2].print();
    vars[3].print();
    vars[4].print();

}; 

end;
