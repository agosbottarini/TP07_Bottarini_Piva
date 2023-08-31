function ElegirDificultad(id) 
{
    document.getElementById("dificultad").value = id;
    let dificultades =  document.getElementsByName("botondificultad");
    for (let i=0; i<dificultades.length ; i++)
    {
        dificultades[i].style.backgroundColor= "grey";
    }
    document.getElementById("dificultad" + id).style.backgroundColor = "red";
}

function ElegirCategoria(id)
{
    let categorias =  document.getElementsByName("botoncategoria");
    for (let i=0; i<categorias.length ; i++)
    {
        categorias[i].style.backgroundColor= "grey";
    }
    document.getElementById("categoria" + id).style.backgroundColor = "red";
}