#!/bin/bash

pushd `dirname $0` > /dev/null
SCRIPTPATH=`pwd`
popd > /dev/null


display_usage() { 
    echo "Usage: $0 <project>"

    echo -e "\nAvailable projects:"
    for f in ${SCRIPTPATH}/projects/*; do
        if [[ -d $f ]]; then
            echo -e "\t- $(basename $f)"
        fi
    done
} 

PROJECT=$1

if [ "$1" == "" ] || [ ! -d ${SCRIPTPATH}/projects/$1 ]; then
    display_usage
    exit 1
fi

vivado -mode tcl -source ${SCRIPTPATH}/projects/${PROJECT}/create_project.tcl << EOF
reset_run impl_1
reset_run synth_1
launch_runs synth_1
wait_on_run synth_1
launch_runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1
close_project
exit
EOF

#cp ${SCRIPTPATH}/build/${PROJECT}/${PROJECT}.runs/impl_1/*.bit ${SCRIPTPATH}/${PROJECT}.bit
cp ${SCRIPTPATH}/build/${PROJECT}/${PROJECT}.runs/impl_1/*.sysdef ${SCRIPTPATH}/${PROJECT}.hdf
