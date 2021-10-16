PFont font;
String message = "降温了，记得多穿衣！";

Letter[] letters;

void setup() {
  size(600, 300);

  font = createFont("YaHei Consolas Hybrid", 46);
  textFont(font);

  letters = new Letter[message.length()];

  int x = 50;
  for (int i = 0; i < message.length (); i ++ ) {
    // 输入字符的坐标信息和内容
    letters[i] = new Letter(x, height/2, message.charAt(i));
    x += textWidth(message.charAt(i));
  }
}

void draw() {
  background(255);
  textFont(font, 23);
  textFont(font);
  for (int i = 0; i < letters.length; i ++ ) {
    letters[i].display();

    if (mousePressed) {
      letters[i].shake();
    } else {
      letters[i].home();
    }
  }
}
