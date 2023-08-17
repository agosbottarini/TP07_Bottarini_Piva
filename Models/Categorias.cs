using System;
public class Categorias
{
    public int IdCategoria{get;set;}
    public string Nombre{get;set;}
    public string Foto{get;set;}

    public Categorias()
    {

    }
    public Categorias(int idcategoria, string nombre, string foto)
    {
        IdCategoria = idcategoria;
        Nombre = nombre;
        Foto = foto;
    }

}