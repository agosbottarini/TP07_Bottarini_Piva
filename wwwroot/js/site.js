function ElegirDificultad(id)
{
    document.getElementById("dificultad").value = id;

    document.getElementById("dificultad"+id).style.backgroundColor = 'red';
}

function ElegirCategoria(id)
{
    document.getElementById("categoria" ).value = id;
    
    document.getElementById("categoria" + id).style.backgroundColor = 'red';
    
}