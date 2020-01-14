import 'dart:math';

List<String> _quotes = [
  "“You have to think it before you can do it. The mind is what makes it all possible.”",
  "“No matter how slow you go, you are still lapping everybody on the couch.”",
  "“The successful warrior is the average man, with laser-like focus.”",
  "“Whether you think you can, or you think you can’t, you’re right.”",
  "“The pain you feel today, will be the trength you feel tomorrow.”",
  "“Remember this: Your body is your slave.  It works for you.”",
  "“When you feel like quitting, think about why you started.”",
  "“The difference between try and triumph is a little umph.”",
  "“All progress takes place outside the comfort zone.”",
  "“A champion is someone who gets up when they can’t.”",
  "“Nothing truly great ever came from a comfort zone.”",
  "“If it doesn’t challenge you, it won’t change you.”",
  "“You’re only one workout away from a good mood.”",
  "“You can have results or excuses, but not both.”",
  "“What hurts today makes you stronger tomorrow.”",
  "“Life begins at the end of your comfort zone.”",
  "“Unless you puke, faint, or die, keep going.”",
  "“No pain, no gain.”",
];

String getRandomQuote() {
  var rng = new Random();
  int rand = rng.nextInt(_quotes.length); // Generates random int between 0 and _quotes.length (minus one)
  return _quotes[rand];
}