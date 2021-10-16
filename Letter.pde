class Letter {
  char letter;
  float x0, y0;  // 原始位置
  float x, y;  
  float alpha;  

  Letter(float x_, float y_, char letter_) {
    x0 = x = x_;
    y0 = y = y_;
    letter = letter_;
    x = random(width);
    y = random(height);
    alpha = random(radians(360));
  }

  void display() {
    fill(0);
    pushMatrix();
    translate(x, y);
    rotate(alpha);
    text(letter, 0, 0);
    popMatrix();
  }

  void shake() {
    x += random(-10, 10);
    y += random(-10, 10);
  }


  void home() { 
    float speed;
    speed=0.05;
    x = lerp(x, x0, speed);
    y = lerp(y, y0, speed);
    alpha = lerp(alpha, 0, speed);
  }
}
