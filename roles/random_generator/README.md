The Documentum Server install guide recommends the following 

    Start the random generator as root: 
    /sbin/rngd -b -r /dev/urandom -o /dev/random

This role should achieve the same, but follows the approach *Use rngd to seed randomness from non-blocking source* from *Entropy in RHEL based cloud instances*. See: https://developers.redhat.com/blog/2017/10/05/entropy-rhel-based-cloud-instances

