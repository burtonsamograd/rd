rd - a replacement for rm
=========================

Use rd instead of rm to move files from the current directory to
$RD_FOLDER, by default old/.

Has a full history of files that have been rd'd using the fossile
command. 'man fossil' for more information. The fossile file is
old/.fossil for each of the old/ directories.

Requirements:

This program requires the fossil Version Control System (VCS), which
you can get from here:

    fossil	https://www.fossil-scm.org

or you can install on Debian based systems with:

    $ sudo apt install fossil

Usage:

    burton@veriton:~/src/rd$ touch file
    burton@veriton:~/src/rd$ rd file
    project-name: <unnamed>
    repository:   /home/burton/src/rd/old/.fossil
    local-root:   /home/burton/src/rd/old/
    config-db:    /home/burton/.config/fossil.db
    project-code: 581c2767052043faa77b314ef1e8859c421f0011
    checkout:     0082ca2d9e7970bac78f958752203e8490464b68 2021-12-24 00:35:51 UTC
    tags:         trunk
    comment:      initial empty check-in (user: burton)
    check-ins:    1
    project-id: 581c2767052043faa77b314ef1e8859c421f0011
    server-id:  bec93ef16e180f28c72e5654cc69abedcac2db71
    admin-user: burton (initial password is "nLQia9pVkA")
    ADDED  .log
    New_Version: 064a97b61df26d552e9c2854df9bd879cae769d8c9b84eb0cb801a10d923bff5
    -- Thu 23 Dec 2021 05:35:51 PM MST
    renamed 'file' -> 'old/file'
    mv: cannot stat '*~': No such file or directory
    mv: cannot stat '#*': No such file or directory
    project-name: <unnamed>
    repository:   /home/burton/src/rd/old/.fossil
    local-root:   /home/burton/src/rd/old/
    config-db:    /home/burton/.config/fossil.db
    project-code: 581c2767052043faa77b314ef1e8859c421f0011
    checkout:     064a97b61df26d552e9c2854df9bd879cae769d8 2021-12-24 00:35:51 UTC
    parent:       0082ca2d9e7970bac78f958752203e8490464b68 2021-12-24 00:35:51 UTC
    tags:         trunk
    comment:      1640306151 (user: burton)
    check-ins:    2
    find: ‘*~’: No such file or directory
    find: ‘#*’: No such file or directory
    ADDED  file
    New_Version: c1092c3f4b767f891bbad17daceea2cb9543b58bd9e274390656b6d1e8c23903
    burton@veriton:~/src/rd$ ls old/
    file

License:

GPL

--
Burton Samograd
Copyright 2021