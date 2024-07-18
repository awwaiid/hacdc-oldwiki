The following code is capable of converging on a solution to Brad's
parabola problem, which can be found on the [NARG](NARG) page

    master_stack = {}
    function_table = {}
    type_array = {}
    type_stack = {}

    stack_size = 32

    num_types = 0

    num_x_samples = 5
    constant = {0,1,2,3,4}
    expected_result = {0, 4.75, 12.75, 23.98, 38.45, 56.15}
    function sleep(n)
        os.execute("sleep " .. tonumber(n))
    end

    function deepcopy(object)
        local lookup_table = {}
        local function _copy(object)
        if type(object) ~= "table" then
            return object
        elseif lookup_table[object] then
            return lookup_table[object]
        end
        local new_table = {}
        lookup_table[object] = new_table
        for index, value in pairs(object) do
            new_table[_copy(index)] = _copy(value)
        end
        return setmetatable(new_table, getmetatable(object))
        end
        return _copy(object)
    end


    function print_table(theTable, indent)
        
        local iString = ""
        for index = 1, indent do
            iString = iString .. "-"
        end

        -- walk all the topmost values in the table
        for k,v in pairs(theTable) do
            print(iString ,k ,v)
            if type(v) == "table" then
                print_table(v, indent + 1)
            end
        end

    end

    function print_program(theProgram)
        print("Program Stack Bottom")
        for counter = 1, table.getn(theProgram) do
            if (theProgram[counter].name == "real") then
                print(theProgram[counter].value)
            else
                print(theProgram[counter].name)
            end
        end
        print("Program Stack Top")
    end

    -- add the type to the type table
    function insert_function(functionName, functionCall, functionType, nArguments)
        -- ensure we haven't already inserted this function
        if function_table[functionName] ~= nil then
            print("function already defined: " .. functionName)
            return false
        end

        -- add this function to the function_table
        tempFunction = {}
        tempFunction.fName = functionCall
        tempFunction.fType = functionType
        tempFunction.nArgs = nArguments

        function_table[functionName] = tempFunction
        return true
    end

    function insert_type(typeName, fPointer, weight)
        -- walk the list of types and make sure this one hasn't already been defined
        for index = 1, table.getn(type_array) do
            if (type_array[index].name == typeName) then
                print("type already defined: " .. typeName)
                return false
            end
        end

        num_types = num_types + 1
        type_array[num_types] = {}
        type_array[num_types].name = typeName
        type_array[num_types].fPointer = fPointer
        type_array[num_types].weight = weight

        if fPointer == nil then
            -- establish the stack for this type
            type_stack[typeName] = {}
        end

        return true
    end

    function local_add(arguments)
        -- print("adding " .. arguments[1] .. " and " .. arguments[2])
        return arguments[1] + arguments[2]
    end

    function local_subtract(arguments)
        -- print("subtracting " .. arguments[1] .. " and " .. arguments[2])
        return arguments[1] + arguments[2]
    end

    function local_multiply(arguments)
        -- print("multiplying " .. arguments[1] .. " and " .. arguments[2])
        return arguments[1] * arguments[2]
    end

    function local_divide(arguments)
        -- print("dividing " .. arguments[1] .. " and " .. arguments[2])
        -- dragon
        if (arguments[2] == 0) then
                arguments[2] = 0.00001
        end
        return arguments[1] / arguments[2]
    end

    function some_constant()
        -- print("pushing constant onto stack:" .. constant[currentConstant])
        return constant[currentConstant]
    end

    function establish_types()
        -- add each of our types to the type_table
        insert_type("real", nil, 10)
        insert_type("+", local_add, 1)
        insert_type("*", local_multiply, 1)
        --insert_type("-", local_subtract, 1)
        --insert_type("/", local_divide, 1)
        insert_type("X", some_constant, 5)
    end

    function establish_functions()
        insert_function("+", local_add, "real", 2)
        insert_function("-", local_subtract, "real", 2)
        insert_function("*", local_multiply, "real",  2)
        insert_function("/", local_divide, "real",  2)
        insert_function("X", some_constant, "real", 0)
    end

    function generate_program(programSize )
        return_stack = {}
        
        for counter = 1, programSize do
            currentNode = {}
            ranVal = math.random(1,table.getn(type_array))
            currentNode.name = type_array[ranVal].name
            -- beware hardcoded stuffs
            if currentNode.name == "real" then
                currentNode.value = math.random()
            end

            table.insert(return_stack, currentNode)
        end

        return return_stack
    end

    function process_master()
        while table.getn(master_stack) ~= 0 do
        --  print("frame begin-------------------------------")
        --  print("current table:")
            -- print_table(type_stack["real"], 0)
            
            currentNode = table.remove(master_stack)
        --  print("curret node name: " .. currentNode.name )

            -- treat functions and values differently
            if currentNode.name == "real" then
            --  print("current node value: " .. currentNode.value)
                -- add this value to the 'real' stack
                table.insert(type_stack["real"], currentNode.value)
            else
                -- grab the num of params needed for this function
                nRequired = function_table[currentNode.name].nArgs
                theType = function_table[currentNode.name].fType

                -- make sure there are enough objects on the param stack to call this function
                -- print("name = " .. currentNode.name)
                -- print(function_table[currentNode.name].fType)
                -- print(type_stack["real"])
                if (table.getn(type_stack[function_table[currentNode.name].fType]) < nRequired) then
                    -- not enough params available, NOOP
                --  print("not enough params, NOOP")
                else
                    theArguments = {}
                    -- build an array for passing the params to the function
                    for counter = 1, nRequired do
                        theArguments[counter] = table.remove(type_stack[theType])
                    end

                    -- call the function
                    returnVal = function_table[currentNode.name].fName(theArguments)

                    -- push the return val to the appropriate stack
                    table.insert(type_stack[function_table[currentNode.name].fType], returnVal)

                end
            end
        --  print("frame end---------------------------------")
        end

    end

    function grab_result()
        -- print the top of the "real" stack
        if (table.getn(type_stack["real"]) == 0) then
            return 9999999
        end
        return table.remove(type_stack["real"])

    end

    --generate_master()

    --process_master()

    --print_result()


    function create_population()
        -- loop through each member in the population
        for count = 1, population_size do
            current_member = {}
            current_member._error = 99999
            
            -- generate the member's program data
            current_member.program = generate_program(initial_member_size)
            
            -- add this member to the population
            table.insert(population, current_member)
        end
    end

    function get_best_candidate()
        local best_error = 99999
        local best_index = 0

        for tIndex = 1, table.getn(candidates) do
            if candidates[tIndex]._error < best_error then
                best_index = tIndex
                best_error = candidates[tIndex]._error
            end
        end

        --print("candidate size: " .. table.getn(candidates) .. "\nbest error from candidates: " .. best_error)

        -- remove and return the *best* candidate
        return table.remove(candidates, best_index)
    end

    function mutate_child(origin, n_mutations)
        dest_node = deepcopy(origin)

        for counter = 1, n_mutations do
            -- random point inside this child
            index_mutate = math.random(1, table.getn(dest_node.program))
            
            ranVal = math.random(1,table.getn(type_array))
            dest_node.program[index_mutate].name = type_array[ranVal].name
            -- beware hardcoded stuffs
            if dest_node.program[index_mutate].name == "real" then
                dest_node.program[index_mutate].value = math.random()
            end
        end

        return dest_node
    end

    function crossover_parents(mommy, daddy)
        index_m = math.random(1, table.getn(mommy))
        --index_d = math.random(1, table.getn(daddy))

        the_child = {}

        -- add the first index_m elements of mommy to the_child
        for xxx = 1, index_m do
            table.insert(the_child, mommy[xxx])
        end

        -- add the elements index_d to #daddy of daddy to the_child
        for xxx = index_m+1, table.getn(daddy) do
            table.insert(the_child, daddy[xxx])
        end

        return the_child
    end

    -- initialize the population (1 program for each member in the population)
    establish_functions()
    establish_types()
    population = {}
    population_size = 10000
    initial_member_size = 24
    create_population()

    error_history = {}
    error_threshhold = 0.016


    max_num_iterations = 10000
    current_iteration = 1

    -- while we haven't reached our error threshhold
    while current_iteration <= max_num_iterations do

        print("iteration #" .. current_iteration)

        --print_table(population, 2)

        -- get the error for each of the members of our population
        for pcount = 1, population_size do

            --print_table(population[pcount], 1)

            -- initialize the error for this program
            population[pcount]._error = 0
            --print("pcount = " .. pcount)

            if (current_iteration == 2) then
                --print_table(population[pcount], 1)
            end


                -- for each value of X
                for icount = 1, num_x_samples do
                    -- establish the index to the current X/Y pair
                    currentConstant = icount

                --  print("population size: " .. table.getn(population))
                --  print("master_stack size: " .. table.getn(population[pcount].program))

                    -- make a copy of this guy's program
                    master_stack = deepcopy(population[pcount].program)

                    -- initialize the stacks for each data type
                    type_stack["real"] = {}
                    
                    -- evaluate the program
                    process_master()

                --  print("master_stack size: " .. table.getn(population[pcount].program))

                --  print("!!! - " .. table.getn(type_stack["real"]))

                    the_result = grab_result()

                    --print("the result = " .. the_result)

                    -- add the current error to the total error for this program
                    population[pcount]._error = population[pcount]._error + math.abs(the_result - expected_result[currentConstant])
                end
        end

        -- scan the population and find the lowest error
        total_error = 0
        best_error = 99999
        best_index = 0
        for pcount = 1, population_size do
            total_error = total_error + population[pcount]._error
            if (population[pcount]._error < best_error) then
                best_index = pcount
                best_error = population[pcount]._error
            end
        end

        average_error = total_error / population_size

        print("lowest error : " .. best_error)
        print("average error: " .. average_error)

        table.insert(error_history, best_error)

        -- if the error is under our threshhold, break out and report success
        if (best_error < error_threshhold) then
            break
        end


        --=======================================================================
        -- evolution FTW
        --=======================================================================

        children = {}
        child = {}
        candidates = deepcopy(population)

        -- find the top 10% of the population, keep them
        tnum = math.ceil(table.getn(population) / 100)
        for cpop = 1, tnum do
            table.insert(children, get_best_candidate())
        end


        --sleep(10)
        -- the next 25% should be mutations of the top 10%
        xnum = tnum + math.floor(tnum * 10)
        candidates = deepcopy(children) -- reset candidates
        -- print("we have " .. table.getn(candidates) .. " candidates to chose from")
        for cpop = (tnum+1), xnum do
            child = mutate_child(candidates[math.random(1, table.getn(candidates))], 5)
            table.insert(children, deepcopy(child))
            -- print("size of children: " .. table.getn(children))
        end

        -- the remainder should be crossovers of the full population
        for pcount = (xnum+1), population_size do

            -- take 7 random values from the population
            candidates = {}
            child = {}
            for ccount = 1, 7 do
                table.insert(candidates, deepcopy(population[math.random(1, table.getn(population))]))
            end

            -- print_table(candidates, 1)

            mom = get_best_candidate()
            dad = get_best_candidate()
            child.program = crossover_parents(mom.program, dad.program)

            -- write the child data to the list of children
            table.insert(children, child)
        end

        -- move the new population to their proper home
        population = deepcopy(children)

        current_iteration = current_iteration + 1
    end

    print("all done!")
    --print_table(population[best_index].program, 1)
    print_program(population[best_index].program)

[Category:NARG](Category:NARG)
