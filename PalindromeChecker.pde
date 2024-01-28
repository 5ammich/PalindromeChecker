public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String a = new String();
  String b = new String();
  for (int j = 0; j < word.length(); j++){
    if (word.substring(j,j +1).equals(" ") == false && Character.isLetter(word.charAt(j))){
      String c = word.substring(j,j+1).toLowerCase();
      b = b + c;
    }
  }
  a = reverse(b);
  if (a.equals(b)){
    return true;
  }
  return false;
}
public String reverse(String str)
{
  String a = new String();
  for (int i = str.length(); i > 0; i--){
    a = a + str.substring(i-1,i);
  }
  return a;
}
