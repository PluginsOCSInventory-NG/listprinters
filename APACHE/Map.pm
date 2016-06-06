
 
package Apache::Ocsinventory::Plugins::Listprinters::Map;
 
use strict;
 
use Apache::Ocsinventory::Map;

$DATA_MAP{listprinters} = {
		mask => 0,
		multi => 1,
		auto => 1,
		delOnReplace => 1,
		sortBy => 'NAME',
		writeDiff => 0,
		cache => 0,
		fields => {
                NAME => {},
                ADDRESS => {}
	}
};
1;