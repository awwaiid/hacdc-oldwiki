
## File to take ham exam text files, turn then into a list of
## questions with only the right answers displayed.  

import re

for infileName in ["2010Tech", "2011General"]:

    infile = open("%s.txt" % infileName)
    outfile = open("%sQuestions.txt" % infileName, "w")
    exam = infile.readlines()
    infile.close()

    subElementRE = re.compile('^SUBELEMENT (.+?) - (.+)')
    questionRE = re.compile('^\w{5} \((.+?)\)')

    inQuestion = False
    rightAnswer = "Z"

    for number, line in enumerate(exam):
        line = line.strip()

        if inQuestion:
            if line.endswith("?"):
                if exam[number-1].strip():
                    outfile.write(exam[number-1].strip()+"\n")
                outfile.write(line+"\n")

            if line.startswith(rightAnswer + "."):
                outfile.write(line+"\n")
                if line.startswith("D. All"):
                    outfile.write(exam[number-1].strip()+"\n")
                    outfile.write(exam[number-2].strip()+"\n")
                    outfile.write(exam[number-3].strip()+"\n")
                if exam[number+1].startswith(" "):
                    outfile.write("   " + exam[number+1].strip()+"\n")
                inQuestion = False
                outfile.write("\n")


        if subElementRE.match(line):
            outfile.write("\n")
            outfile.write(line+"\n")
            outfile.write("\n")

        if questionRE.match(line):
#            outfile.write(line+"\n")
            rightAnswer = questionRE.findall(line)[0]
#            outfile.write(rightAnswer+"\n")
            inQuestion = True

    outfile.close()
