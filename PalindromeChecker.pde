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
  for(int i=str.length()-1; i>=0;i--)
  {
    if(Character.isLetter(str.charAt(i)) == true)
    {
      sNew = sNew + str.charAt(i);
    } 
  }
  return sNew.toLowerCase();
}
public boolean palindrome(String word)
{
  //your code here
  String a = new String();
  for(int i = 0; i < word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i)) == true)
    {
      a = a + word.charAt(i);
    }
  }
  if(a.toLowerCase().equals(reverse(word)))
  {
    return true;
  }
  return false;
}

