use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile
(
	($] ge '5.005') ?
	(
		'AUTHOR' => 'Ron Savage (ron@savage.net.au)',
		'ABSTRACT' => 'Parse X500 Distinguished Names',
    ) : (),
	clean			=>
	{
		FILES		=> 'blib/* Makefile MANIFEST X500-DN-Parser-*'
	},
	dist			=>
	{
		COMPRESS	=> 'gzip',
		SUFFIX		=> 'gz',
	},
	DISTNAME		=> 'X500-DN-Parser',
	NAME			=> 'X500::DN::Parser',
	PL_FILES		=> {},
	PREREQ_PM		=>
	{
		Test::More	=> 0,
		Test::Pod	=> 0,
	},
	VERSION_FROM	=> 'lib/X500/DN/Parser.pm',
);
