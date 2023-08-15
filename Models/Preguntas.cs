using System;
class Preguntas
{
    public int IdPregunta{get;set;}
    public int IdCategoria{get;set;}
    public int IdDificultad{get;set;}
    public string Enunciado{get;set;}
    public string Foto{get;set;}

    public Preguntas()
    {

    }  
    public Preguntas(int idpregunta, int idcategoria, int iddificultad, string enunciado, string foto)
    {
        IdPregunta = idpregunta;
        IdCategoria = idcategoria;
        IdDificultad = iddificultad;
        Enunciado = enunciado;
        Foto = foto;
    }

}