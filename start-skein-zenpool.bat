setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_USE_SYNC_OBJECTS 1

cgminer.exe --skein -o stratum+tcp://triplezen.tk:5029 -u DP2HaPBoAj19FcDqn5Vq3Cv9p6gQKYn5nz -p x --gpu-threads 2 --thread-concurrency 8192 -I 9 --scan-time 2 --queue 0 --no-submit-stale 