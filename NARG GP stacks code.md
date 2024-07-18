Linked from [NARG](NARG).

Code by [User:obscurite](User:obscurite) for Brad's GP
workshop. This code generates random "programs". This will be further
modified to produce programs with desired traits and then to have them
evolve. Written for python 3.0.


    from random import choice
    from random import randint

    programList = []           # hold program elements (ints and operations)
    opStack = []               # temporarily hold operations as we handle them
    intStack = []              # hold ints as we handle them
    ops = ['add', 'mul']       # all possible operations


    ########################################################################
    # Stack stuff
    def popOp():               # pop operation from op stack
      return opStack.pop()

    def pushOp(op):            # push operation onto op stack
      opStack.append(op)

    def popProg():             # pop thing from programList
      return programList.pop()

    def pushProg(stuff):       # push thing onto programList
      programList.append(stuff)

    def popInt():              # pop int from int stack
      return intStack.pop()

    def pushInt(stuff):        # push int onto int stack
      intStack.append(stuff)

    ########################################################################
    # Random stuff
    def randOp():              # return a random choice of op (add/mul)
      return choice(ops)

    def randNum():             # return a random int from 0 to 10
      return randint(0, 10)

    def randThing():           # return a random int or random op randomly
      if randint(0, 1):
        return randNum()
      else:
        return randOp()

    ########################################################################
    # main function

    def main():

      numthings = 100 # num of things to generate

      # build up a random list of things (ops and ints)
      for i in range(1, numthings):
        pushProg(randThing())      # push a random thing into programList

      # Show what's in the full programList
      print("PROGRAM LIST:")
      print(programList)

      # For every thing in programList, handle it appropriately
      for i in range(1, numthings):
        thing = popProg()
        if isinstance(thing, int): # it's a number, push it to number stack!
          pushInt(thing)
        else:                      # it's an op, do something with numbers!
          if len(intStack) > 1:    # we have at least two ints on num stack
            if (thing == 'mul'):
              pushInt(popInt() * popInt())   # do the mul operation and push
            else:
              pushInt(popInt() + popInt())   # do the add operation and push

      # Show what's left in our op and int stacks
      print("OP STACK:")
      print(opStack)
      print("INT STACK:")
      print(intStack)


    ########################################################################
    # run the program!
    main();

[Category:NARG](Category:NARG)
