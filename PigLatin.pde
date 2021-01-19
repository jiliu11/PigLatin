public String pigLatinate (String words){
  char[] vowels = {'a','e','i','o','u'};
  String output = "";
  String word = "";
  int index = 0;
  int index2 = 0;

  while (index < words.length()){
  //starts over here once the thing finds a pig latin word
  out:
  {
    //finds the words
    for(index2 = index; (index2 < words.length() && words.charAt(index2) != ' ' ); index2++)
    {
      word = words.substring(index,index2 + 1);
    }
    index = index2 + 1;	
    
    //puts the word in pig latin if it begins with qu
    if((word.charAt(0) == 'Q' || word.charAt(0) == 'q') && (word.charAt(1) == 'u' || word.charAt(1) == 'u')){
      output += word.substring(2, word.length()) + "quay";
      output += " ";
      break out;
    }
    
    //puts the word in pig latin if it begins with a vowel 
    for(int i = 0; i < vowels.length; i++)
    {  
      if(word.charAt(0) == vowels[i])
      {
        output += word + "way";
        output += " ";
        break out;
      }
    }
    
    //puts the word in pig latin if it has a voewl inside
    for(int i = 0; i < word.length(); i++)
    {
      for(int a = 0; a < vowels.length; a++)
      {
        if(word.charAt(i) == vowels[a])
        {
          output += word.substring(i, word.length()) + word.substring(0,i) + "ay";
          output += " ";
          break out;
        }
      }
    }
    //no vowels
    output += word + "ay";
    output += " ";
  }
  }
  return output; 
}
void setup(){
  System.out.println(pigLatinate("beast dough happy question star three eagle try"));
}
