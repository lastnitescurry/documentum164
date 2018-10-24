### Why tweak and tune the defaults?

Personally I find the default settings are a hinderance in real world production

1. logging
    * some logs only have timestamp. Needs date and timestamp
1. dfc clients
    * DFC Clients should be named. Makes it easier to identify and privilege only the necessary clients later.
    * Each DFC Client should have its own *dfc.data.dir*.
    * Each DFC Client *dfc.data.dir* should be in a temp location. Hence the instruction to __clear dfc cache__ becomes a simple, delete contents of temp folder!
