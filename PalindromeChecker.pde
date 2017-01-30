public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(noSpaces(noCapitals(lines[i])))==true)
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
      String paso = new String();
      if(paso.equals(reverse(paso)))
      {
        return true;
      }
     return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i=1; i < str.length()+1; i++)
      {
      sNew = sNew + str.charAt(str.length()-i);
      }
    return sNew;
}
public String noSpaces(String sWord){
    String sNew = new String();
    for(int i = 0; i < sWord.length(); i++)
     if(Character.isLetter(sWord.charAt(i)) == true)
    {
      sNew = sNew + sWord.charAt(i);
    }
    return sNew;
}
public String noCapitals(String sWord){
  return sWord.toLowerCase();
}


