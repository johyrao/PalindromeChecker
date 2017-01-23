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
public String reverse(String str)
{
    String sNew = new String();
    // int a = 0;
    // for (int i = 0; i < str.length(); i++)
    // {
    //   if(Character.isLetter(str.charAt(i))==false)
    //   {
    //     a = i;
    //   }
    // }
    for(int i=str.length()-1; i>=0;i--)
    {
      sNew = sNew + str.charAt(i);
    }
    return sNew;
}
public boolean palindrome(String word)
{
  //your code here
  if(word.equals(reverse(word)))
  {
    return true;
  }
  return false;
}

