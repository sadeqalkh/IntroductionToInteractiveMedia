//function that will draw the sky in the program
void Sky() 
{
    for  (int i = 1; i < 600; i = i+10)
    {
        fill( 49 + i * 0.165, 118 + i * 0.118, 181 + i * 0.075);
        rect(0, i, 800, i+10);
    }
}
