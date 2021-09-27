if [ $# -ne 1 ] ; then
    echo 'Usage: bash command <path to save logs in>'
    exit 1
fi

traffic_script="rttm_1000Bpkts_ue1_CBR_traffic_script1"
echo "traffic_script = "$traffic_script

# Save the traffic generation script used in the run folder for reference 
cp ${traffic_script} ${1}/${traffic_script}

sudo ITGSend ${traffic_script} -l "${1}/ue1_ditg_send.log"
