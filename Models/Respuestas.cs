using System;
public class Respuestas
{
    public int IdRespuesta{get;set;}
    public int IdPregunta{get;set;}
    public int Opcion{get;set;}
    public string Contenido{get;set;}
    public bool Correcta{get;set;}
    public string Foto{get;set;}

    public Respuestas()
    {

    }
    public Respuestas(int idrespuesta, int idpregunta, int opcion, string contenido, bool correcta, string foto)
    {
        IdRespuesta = idrespuesta;
        IdPregunta = idpregunta;
        Opcion = opcion;
        Contenido = contenido;
        Correcta = correcta;
        Foto = foto;
    }
}