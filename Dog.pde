class Dog
{
  int dogHeight;
  float dogWeight;
  Dog()
  {
    dogHeight = 5;
    dogWeight = 10.0;
  }
  Dog(int dogHeight_, float dogWeight_)
  {
    dogHeight = dogHeight_;
    dogWeight = dogWeight_;
  }
  int getHeight()
  {
    return dogHeight;
  }
  float getWeight()
  {
    return dogWeight;
  }
  void setHeight(int enteredHeight)
  {
    dogHeight = enteredHeight;
  }
  void setWeight(float enteredWeight)
  {
    dogWeight = enteredWeight;
  }

  void bark()
  {
    System.out.println("woof");
  }
}
