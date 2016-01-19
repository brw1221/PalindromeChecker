public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String rWord = new String();
  for(int j=0; j<word.length(); j++)
  {
      if(word.charAt(j) == ' ')
      {
         word = word.substring(0,j) + word.substring(j+1);
      }
  }  
  for(int k=0; k<word.length(); k++)
  {
    char x = word.charAt(k);
    if(Character.isLetter(x) == false)
    {
      word = word.substring(0,k) + word.substring(k+1);
    }
  }
  word = word.toLowerCase();
  for(int i=word.length()-1; i>=0; i--)
  {
    rWord = rWord + word.charAt(i);
  }
  if(word.equals(rWord))
  {
    return true;
  }
  return false;
}

