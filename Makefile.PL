use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile
(
	($] ge '5.005') ?
	(
		'AUTHOR' => 'Ron Savage (ron@savage.net.au)',
		'ABSTRACT' => 'X500 Distinguished Name parser',
    ) : (),
'clean'				=>
	{
	'FILES'			=> 'blib/* Makefile MANIFEST X500-DN-Parser-*'
	},
'dist'				=>
	{
	'COMPRESS'		=> 'gzip',
	'SUFFIX'		=> 'gz',
	},
'DISTNAME'			=> 'X500-DN-Parser',
'NAME'				=> 'X500::DN::Parser',
'PM'				=>
	{
	'Parser.pm' 	=> '$(INST_LIBDIR)/Parser.pm',
	},
'PREREQ_PM'			=> {},
'VERSION_FROM'		=> 'Parser.pm',
);
