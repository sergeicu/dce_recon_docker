# Start with the Matlab r2015b runtime container
FROM sergeicu/matlab-mcr:v96

# Copy shell script and MCR binary to /bin
COPY run_dce_recon.sh /bin/run_dce_recon
#COPY Gannet_v21 /bin/GannetRun
COPY dce_recon /bin/dce_recon

# change permissions 
RUN chmod +rx /bin/run_dce_recon
RUN chmod +x  /bin/dce_recon


