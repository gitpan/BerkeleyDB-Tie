use ExtUtils::MakeMaker;

use Tie ;
my %defaults = @BerkeleyDB::Tie::defaults ;
print "NOTE:\n" ;
print "  BerkeleyDB::Tie currently has the following default values:\n" ;
print join "", map { "    $_ => $defaults{$_}\n" } keys %defaults ;
print "\n  Edit Tie.pm and change these values appropriately\n\n" ;

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'BerkeleyDB::Tie',
    'VERSION_FROM'	=> 'Tie.pm', # finds $VERSION
    'PREREQ_PM'		=> { BerkeleyDB => 0,
			Storable => 0,
			}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM => 'Tie.pm', # retrieve abstract from module
       AUTHOR     => 'Jim Schueler <jschueler@tqis.com>') : ()),
);
