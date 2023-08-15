using System;
class Respuestas
{
    public int IdRespuesta;
    public int IdPregunta;
    public int Opcion;
    string Contenido;
    bool Correcta;
    string Foto;

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