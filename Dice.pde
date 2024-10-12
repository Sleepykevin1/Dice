void setup() {
    size(600, 600);
    noLoop();
}

void draw() {
    background(255);
    int total = 0;
    
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            Die die = new Die(i * 150 + 75, j * 150 + 75);
            die.show();
            total += die.value;
        }
    }
    
    fill(0);
    textSize(30);
    text("Total: " + total, 250, 580);
}

void mousePressed() {
    redraw();
}

class Die {
    int x, y, value;

    Die(int x, int y) {
        this.x = x;
        this.y = y;
        roll();
    }

    void roll() {
        value = (int)(Math.random() * 6) + 1;
    }

    void show() {
        fill(255);
        rect(x, y, 120, 120);
        
        fill(0);
        drawDots();
    }

    void drawDots() {
        if (value == 1) {
            ellipse(x + 60, y + 60, 15, 15);
        } else if (value == 2) {
            ellipse(x + 35, y + 35, 15, 15);
            ellipse(x + 85, y + 85, 15, 15);
        } else if (value == 3) {
            ellipse(x + 35, y + 35, 15, 15);
            ellipse(x + 60, y + 60, 15, 15);
            ellipse(x + 85, y + 85, 15, 15);
        } else if (value == 4) {
            ellipse(x + 35, y + 35, 15, 15);
            ellipse(x + 85, y + 35, 15, 15);
            ellipse(x + 35, y + 85, 15, 15);
            ellipse(x + 85, y + 85, 15, 15);
        } else if (value == 5) {
            ellipse(x + 35, y + 35, 15, 15);
            ellipse(x + 85, y + 35, 15, 15);
            ellipse(x + 60, y + 60, 15, 15);
            ellipse(x + 35, y + 85, 15, 15);
            ellipse(x + 85, y + 85, 15, 15);
        } else if (value == 6) {
            ellipse(x + 35, y + 35, 15, 15);
            ellipse(x + 85, y + 35, 15, 15);
            ellipse(x + 35, y + 60, 15, 15);
            ellipse(x + 85, y + 60, 15, 15);
            ellipse(x + 35, y + 85, 15, 15);
            ellipse(x + 85, y + 85, 15, 15);
        }
    }
}



