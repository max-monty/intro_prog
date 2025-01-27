/* Lecture Topics
 - conditional statements
 - if statements
 - boolean expressions
 - relational operators (<, >, <=, >=, ==, !=)
 - else
 - else if
 */
 
 /* Demo
 1) basic if
 2) add else
 3) add else if
 
*/

void setup() {
  size(640, 360);
}

void draw() { 
  background(0); 
  if(mouseX > 320) {
    background(255);
  }
  
  stroke(127);
  strokeWeight(4);
  line(320, 0, 320, 360);
}

/* ACTIVITY 1:
   - Change the condition to mouseX < 320 
   - What happens? Why?
   - Try other relational operators: >=, <=, ==
*/

/* ACTIVITY 2:
   - Add different shapes on each side
   - Change colors based on mouse position
*/

/* FINAL CHALLENGE (20-30 mins):
   - 4 horizontal sections
   - Different shape in each section
   - Shape only appears when mouse is in that section
   - Use line(), rect(), circle() and other shapes
   
   EXIT TICKET:
   Write 2-3 sentences explaining how if/else if/else 
   statements control what gets drawn to the screen
*/


  
  
