public with sharing class Homework 
{
    // Create the method bodies as requested by the comments,  as shown in the
    // example below. 

    // EXAMPLE: Take a List of Integers, total them up and return the total
    public Integer total(List<Integer> values)
    {
        Integer result=0;
        for (Integer idx=0; idx<values.size(); idx++)
        {
            result+=values[idx];
        }

        return result;
    }

    // 1. Take a List of integers and return the largest value using a loop
    public Integer maxInListLoop(List<Integer> values)
    {
            Integer largestValue=0;
        for (Integer idx=0; idx<values.size(); idx++)
        {
            if(values[idx]>largestValue)
            {
                largestValue = values[idx];
            }
        }

        return largestValue;
    }

    // 2. Take a List of integers and return the largest value without using a loop.
    public Integer maxInList(List<Integer> values)
    {
        Integer largestValueNoLoop=0;

        largestValueNoLoop = math.max(values);

        return largestValueNoLoop;

    }

    // 3. Take a list of Integers and reverse the order
    public List<Integer> reverse(List<Integer> values)
    {
        List<Integer> reverseinLoop = new List<Integer>();

        for(Integer idx = values.size() -1; idx >=0; idx--)
        {
            reverseinLoop.add(values[idx]);

        }
    }

    // 4. Take a list of Strings and extract every third element into a new list that is returned. 
    //    Extra credit for handling that the list passed in may not be exactly divisible by 3.
    public List<String> everyThird(List<String> originals)
    {
        List<String> extractedList = new List<String>();

        for(Integer idx=0; idx<originals.size(); idx=idx+3)
        {
            extractedList.add(originals[idx]);
        }  
    }

    // 5. Take a String and return the number of unique characters in the String.
    public Integer uniqueCharacters(String value)
    {
        String uniquCharacters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
        List<Integer> charsToExtract = uniquCharacters.getChars();
        
        List<Integer> sourceChars = value.getChars();
        
        Set<Integer> charSet = new Set<Integer>(sourceChars);
        charSet.retainAll(charsToInclude);
        
        return charSet.size();
    }

    // 6. Take a String and return a map of characters and their position in the String. 
    //    Note that characters may occur more than once and you should identify the 
    //    position of all occurrences.
    public Map<String, List<Integer>> getPositionsByCharacter(String value)
    {

    }

    // 7. Take a map of type Map<Integer, String> and return a map of type Map<String, Integer> with the keys and values swapped
    public Map<String, Integer> swapOver(Map<Integer, String> inMap)
    {
            Map<Integer, String> reversedMap2 = new Map<Integer, String>();

            for(String key : inMap.keySet()){
                String inMap_value = inMap.get(key);
                if (!reversedMap2.contains(inMap_value)){
                    reversedMap2.put(inMap_value, new List<String>());
                }
                reversedMap2.get(inMap_value).add(key);
            }
            return reversedMap2;
        
    }

    // 8. Take a List of Strings representing playing cards - 
    //                   ‘Ace’, ‘Two’, ‘Three’, … , ‘Jack’, ‘Queen’, ‘King’. 
    //    Calculate the total value of the cards where :
    //             ‘Ace’ has the value 1
    //             ‘Two’ has the value 2, etc. 
    //              ‘Jack’, ‘Queen’, ‘King’ have the value 10.
    public Integer valueOfHand(List<String> cards)
    {
        List<String> cards=new List<String>{'Ace', 'Two', 'Three','Four','Five','Six','Seven','Eight','Nine','Ten','Jack','Queen','King'}
    
        Integer TotalValue = 0; 

  for (Integer idx=0; idx<cards.size(); idx++)
   {
    if(cards[idx]='Ace')
    {
        TotalValue = TotalValue + 2;
    }
    elseif(cards[idx]='Two')
    {
        TotalValue = TotalValue + 2;
    }
    elseif(cards[idx]='Three')
    {
    TotalValue = TotalValue + 3;
    }
    elseif(cards[idx]='Four')
    {
    TotalValue = TotalValue + 4;
    }
    elseif(cards[idx]='Five')
    {       
    TotalValue = TotalValue + 5;
    }
    elseif(cards[idx]='Six')
    {
    TotalValue = TotalValue + 6;
    }
    elseif(cards[idx]='Seven')
    {
    TotalValue = TotalValue + 7;
    }
    elseif(cards[idx]='Eight')
    {
    TotalValue = TotalValue + 8;
    }
    elseif(cards[idx]='Nine')
    {
    TotalValue = TotalValue + 9;
    }
    elseif(cards[idx]='Ten')
    {
    TotalValue = TotalValue + 10;
    }
    elseif(cards[idx]='Jack')
    {
    TotalValue = TotalValue + 10;
    }
    elseif(cards[idx]='Queen')
    {
    TotalValue = TotalValue + 10;
    }
    elseif(cards[idx]='King')
    {
    TotalValue = TotalValue + 10;
    }

    return TotalValue;
}
    
    }

    // 9. Take a List of 10 Integers and return a new List where Integers at position 8, 9 and 10 
    //    are moved to the front of the list. 
    //   For example, if the input list is 1,2,3,4,5,6,7,8,9,10, 
    //          the returned list would be 8,9,10,1,2,3,4,5,6,7
    public List<Integer> rotateFinalThree(List<Integer> values)
    {
        List<Integer> values=new List<Integer>{1,2,3,4,5,6,7,8,9,10}
// extract last 3 positions and remove from list
        Integer pos8 = values.get(7);
        Integer pos9 = values.get(8);
        Integer pos10 = values.get(9);
        values.remove(7);
        values.remove(8);
        values.remove(9);

        List<Integer> FinalThree = new List<Integer>{pos10,pos9,pos8};

        //reverse list to show 7,6,5,4,3,2,1
        List<Integer> reverseinLoop = new List<Integer>();
        for(Integer idx = values.size() -1; idx >=0; idx--)
        {
            reverseinLoop.add(values[idx]);
        }
// add last 3 values to make 7,6,5,4,3,2,1,10,9,8
        reverseinLoop.addAll(FinalThree);


        //reverse list again to show 8,9,10,1,2,3,4,5,6,7
        List<Integer> FinalListLoop = new List<Integer>();
        for(Integer idx = reverseinLoop.size() -1; idx >=0; idx--)
        {
            FinalListLoop.add(reverseinLoop[idx]);
        }

        return FinalListLoop;

    }

    // 10. Take a String containing a number of words separated by whitespace and remove any duplicates.
    //  Hint: String.split and String.join allow you to turn Strings into lists and vice versa. 
    //  You should be able to achieve this in around 6 lines without any loops.
    public String uniqueWords(String original)
    {
        List<String> uniqueList = new List<String>();
        Set<String> uniqueSet =  new Set(String);

        //put string vlaues in a list
        uniqueList = original.split(' ');
        //put in a set to remove duplicates
        uniqueSet.addAll(uniqueList);
        //put set back into the list
        uniqueList=addAll(uniqueSet);
        //put unique word list back into the string
        original = string.join(uniqueList,' ');        


    }
}

