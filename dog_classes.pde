Dog puppy;
EnglishBullDog bowser;
void setup()
{
  puppy = new Dog();
  bowser = new EnglishBullDog(67);
}

void draw()
{
  noLoop();
  System.out.println("Dog's Initial Height and Weight:");
  System.out.println(puppy.getHeight());
  System.out.println(puppy.getWeight());
  puppy.setHeight(10);
  puppy.setWeight(20.0);
  puppy.bark();
  System.out.println("Dog's New Height and Weight:");
  System.out.println(puppy.getHeight());
  System.out.println(puppy.getWeight());
  puppy.bark();
  System.out.println("Bulldog's Initial Height, Weight, and IQ:");
  System.out.println(bowser.getHeight());
  System.out.println(bowser.getWeight());
  System.out.println(bowser.getIq());
  bowser.bark();
  System.out.println("Bulldog's New Height, Weight, and IQ:");
  bowser.setHeight(30);
  bowser.setWeight(40.0);
  bowser.setIq(80);
  System.out.println(bowser.getHeight());
  System.out.println(bowser.getWeight());
  System.out.println(bowser.getIq());
  bowser.bark();
}
