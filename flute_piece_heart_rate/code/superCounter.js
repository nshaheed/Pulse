inlets = 2;
outlets = 2;

var counts = [];
var counts_counter = 0;
var counts_counter_counter = 0;

function filepath(path) {
	typelist = new Array("iLaF", "maxb", "TEXT");
	f = new File(path,"read",typelist);
	
	// Read file and put values from file in counter
	counts = [];
	while (f.isopen && f.position < f.eof){
		counts.push(Number(f.readline()));
		
		// Probably not necessary, but I don't remember
		//  so I'm keeping them.
		counts_counter = 0;
		counts_counter_counter = 0;
		
	}
	
	f.close();
	//post(counts + "\n");
};

function bang(){
	
	// A bang from the second inlet (index 1) resets
	//  the superCounter
	if (inlet == 1) {
		counts_counter = 0;
		counts_counter_counter = 0;
	}
	// A bang from the first inlet (index 0) increments
	//  through the superCounter
	else {
	    if (counts_counter < counts.length){
			if (counts_counter_counter < counts[counts_counter]){
				outlet(0,bang);
				counts_counter_counter++;
				
				if (counts_counter_counter == (counts[counts_counter])) {
					outlet(0,bang);
					outlet(1,bang);
					counts_counter_counter = 0;
					counts_counter++;
				}
			}	
		}
	}
};