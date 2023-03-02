class EnglishBullDog extends Dog
{
  int iq;
  EnglishBullDog(int iq_)
  {
    super();
    iq = iq_;
  }

  int getIq()
  {
    return iq;
  }

  void setIq(int enteredIq)
  {
    iq = enteredIq;
  }

  void bark()
  {
    System.out.println("bowwowww");
  }
}
