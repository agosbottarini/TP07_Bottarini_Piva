using System;
class Dificultades
{
    public int IdDificultad{get;set;}
    public string Nombre{get;set}

    public Dificultades()
    {

    }

    public Dificultades(int iddificultad, string nombre)
    {
        IdDificultad = iddificultad;
        Nombre = nombre;
    }

}