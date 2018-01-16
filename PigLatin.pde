public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("johnny's line is");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}

  public int findFirstVowel(String sWord){
  for(int i = 0; i < sWord.length(); i++)
  {
    if (sWord.substring(i,i+1).equals("a") || sWord.substring(i,i+1).equals("e") ||sWord.substring(i).equals("i") || sWord.substring(i, i+1).equals("o") ||sWord.substring(i, i+1).equals("u"))
    {
      return i;
    }
  }
  return -1;
}


public String pigLatin(String sWord)
//precondition: ssWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of ssWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
  else if (findFirstVowel(sWord) == 0)
  {
    return sWord + "way";
  }
  else if(sWord.substring(0,1).equals("qu"))
  {
    return sWord.substring(2) +"quay";
  }
	else
	{
		return sWord.substring(1) + sWord.substring(0, 0+1) + "ay";
	}
}
