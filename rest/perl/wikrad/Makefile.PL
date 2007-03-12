use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'App::Wikrad',
    AUTHOR              => 'Luke Closs <cpan@5thplane.com>',
    VERSION_FROM        => 'lib/App/Wikrad.pm',
    ABSTRACT_FROM       => 'lib/App/Wikrad.pm',
    PL_FILES            => {},
    PREREQ_PM => {
        'Socialtext::Resting'         => '0.19',
        'Socialtext::Resting::Getopt' => '0',
        'Curses::UI'                  => '0.95',
    },
    EXE_FILES           => ['bin/wikrad'],
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'App-Wikrad-*' },
);