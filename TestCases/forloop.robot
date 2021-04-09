

*** Test Cases ***
#For Loop 1
     #FOR    ${i}    IN RANGE    1   10
           # log to console  ${i}
     #END

#For Loop 2
     #FOR    ${i}    IN  1  2  3  4  5  6    #single space value print in same line , #Double space next line
        #log to console  ${i}
     #END
#For Loop 3 with List

   # @{items}    create list  1  2   3   4   5   6
   # FOR    ${i}    IN  @{items}
    #    log to console  ${i}
   # END

#For Loop 4
    #FOR    ${i}    IN  John    David    Urmila
       # log to console  ${i}
    #END


#For Loop 5
   # @{items}    create list  John    David    Urmila
   # FOR    ${i}    IN  @{items}
    #    log to console  ${i}
    #END


For Loop 6 with Exit
    @{items}    create list  1  2   3   4   5
    FOR     ${i}     IN     @{items}
        log to console  ${i}
        exit for loop if  ${i}==3
    END

