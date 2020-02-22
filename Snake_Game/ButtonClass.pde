class Button {
  //X and Y position of the button
  int xPos, yPos;
  //Width and Height of the button
  int wSize, hSize;
  //Background color of the button
  int bRed, bGreen, bBlue;
  //Stroke color of the button
  int strokeColor;
  //Color of the text in the button
  int textColor;
  //Text Size of the text
  int textSize;
  //Text alignment method for the text in button
  int textAlign;
  //Text that will be displayed on the button
  String buttonText;

  //Checks if a button has been pressed
  boolean isButtonPressed(int mouseXPos, int mouseYPos, boolean isMousePressed, Button button) {
    if (mouseXPos > button.xPos && mouseXPos < button.xPos+button.wSize && mouseYPos > button.yPos && mouseYPos < button.yPos+button.hSize) {
      if (isMousePressed == true) {
        return true;
      }
    }
    return false;
  }

  //Constructor for the button that includes all the variables. Needs to be placed in the same order as shown below when constructing a button.
  Button(int xPos, int yPos, int wSize, int hSize, int strokeColor, int textColor, String buttonText, int textSize, int textAlign, int bRed, int bGreen, int bBlue) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.wSize = wSize;
    this.hSize = hSize;
    this.strokeColor = strokeColor;
    this.textColor = textColor;
    this.buttonText = buttonText;
    this.textSize = textSize;
    this.textAlign = textAlign;
    this.bRed = bRed;
    this.bGreen = bGreen;
    this.bBlue = bBlue;
  }

  //Updates button
  void Update() {
    stroke(strokeColor);
    fill(bRed, bGreen, bBlue);
    rect(xPos, yPos, wSize, hSize);
    textSize(textSize);
    fill(textColor);
    if (textAlign == 0) {
      textAlign(CENTER, CENTER);
      text(buttonText, xPos + wSize/2, yPos + hSize/2);
    } else if (textAlign == 1) {
      textAlign(RIGHT, CENTER);
      text(buttonText, xPos + wSize, yPos + hSize/2);
    } else if (textAlign == 2) {
      textAlign(LEFT, CENTER);
      text(buttonText, xPos, yPos + hSize/2);
    }
  }
}
