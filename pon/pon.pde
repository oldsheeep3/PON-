void setup() {
    size(1280,720);
    background(#ffffff);
}

boolean game = false;
float gy = 0;
float bx = width/2;
float by = height/2;
float ax = 8*random(0.7,1);
float ay = 5;
float mx = mouseX;

void draw() {
    if(keyPressed){
        game = true;
    }
    background(#ffffff); 
    fill(#ffffff);
    stroke(#000000);
    if(mouseX <= 10){
        mx = 10;
    }else if(mouseX >= width - 90){
        mx = width - 90;
    }else{
        mx = mouseX;
    }
    if(game){
        if (bx <= 0 || bx >= width){
            ax = -ax;
        }
        if(by >= height - 30 - 40/2){
            if(bx >= mouseX && bx <= mouseX + 80){
                ay = -ay;
            }else{
                game = false;
                gy = 0;
                bx= width/2;
                by = height/2;
                ax = 5;
                ay = 5;
            }
        }else if(by <= 0){
            ay = -ay;
        }
        bx = bx + ax;
        by = by + ay;
    }
    rect(mx, height - 30, 80, 10);
    fill(#005500);
    ellipse(bx, by, 40, 40);
}
