use ExtUtils::MakeMaker;

WriteMakefile(
        'NAME' => 'PDL::LinearAlgebra',
        'ABSTRACT' => 'PDL bindings to some BLAS and LAPACK library routines',
        'AUTHOR' => [ 'Chris Marshall <chm@cpan.org>' ],
        'VERSION_FROM' => 'LinearAlgebra.pm',
        'LICENSE' => 'artistic_2',
        'META_MERGE' => {
           "meta-spec" => { version => 2 },
           resources => {
              homepage => 'http://pdl.perl.org/',
              repository  => {
                 url => 'git://github.com/PDLPorters/pdl-linearalgebra.git',
                 type => 'git',
                 web => 'https://github.com/PDLPorters/pdl-linearalgebra',
              },
              bugtracker => {web=>'https://github.com/PDLPorters/pdl-linearalgebra/issues'},
           },
           x_IRC => 'irc://irc.perl.org/#pdl',
        },
        'CONFIGURE_REQUIRES' =>  { "PDL" => 0, },
        'BUILD_REQUIRES' =>  { "PDL" => 0, },
	'PREREQ_PM' => { "PDL" => 0, "constant" => 1.03, },
        'DIR' =>  [ qw/Trans Real Complex Special/],
        'dist' => { PREOP=>'$(PERL) -MPDL::Core::Dev -e pdlpp_mkgen $(DISTVNAME)' }, # GENERATED subdir in dist tarball
        'clean' => { FILES => '*~' },
       );
__END__

