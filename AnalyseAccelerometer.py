## Takes in CSV file from the accelerometer, does cool stuff.

INFILE = "spaceblimp4_accelerometer.csv"

## These are defines that vary per-accelerometer, per g-scale
## Try throwing the thing a number of times to get good free-fall zeros
X_OFFSET = 128
Y_OFFSET = 128
Z_OFFSET = 128


import csv, pylab

dataFile = csv.reader(open(INFILE))
header = dataFile.next()

data = []

while(1):
    try:              # read in and convert to integers, remove offset
                      # why is this not easier to do?!?! 
        line = dataFile.next()
        line = [int(x) for x in line]
        line[0] = line[0] - X_OFFSET
        line[1] = line[1] - Y_OFFSET
        line[2] = line[2] - Z_OFFSET
        data.append(line)
    except StopIteration:
        print ("done")
        break
del(dataFile)


## Useful for eyeballing.  And I'm an eyeballer...
pylab.figure()
pylab.plot(data)
pylab.show()

maxAcceleration = []
for (x,y,z) in data:
    accelMax = max([abs(x), abs(y), abs(z)])
    maxAcceleration.append(accelMax)

pylab.figure()
pylab.plot(maxAcceleration)
