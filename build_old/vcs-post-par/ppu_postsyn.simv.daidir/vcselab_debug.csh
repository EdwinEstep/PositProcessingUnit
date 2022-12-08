#!/bin/csh -f

cd /home/student/ece0004/Documents/cpe527/PositProcessingUnit/build/vcs-post-par

#This ENV is used to avoid overriding current script in next vcselab run 
setenv SNPS_VCSELAB_SCRIPT_NO_OVERRIDE  1

/apps/synopsys2022/vcs/T-2022.06-1/linux64/bin/vcselab $* \
    -o \
    ppu_postsyn.simv \
    -nobanner \

cd -

