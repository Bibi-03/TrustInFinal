function ShowSelected() { /* Para obtener el valor */
    const cod = document.getElementById("busco").value;
    const txt = document.getElementById("lblbusco").value;
    /* Para obtener el texto */
    const combo = document.getElementById("busco");
    const selected = combo.options[combo.selectedIndex].value;
    if (selected == "parejaLargoPlazo") {
        document.getElementById('lblbusco').innerText = '💘 Pareja para largo plazo';
    }
    if (selected == "cortoPlazo") {
        document.getElementById('lblbusco').innerText = '💞 Corto plazo';
    }
    if (selected == "diversion") {
        document.getElementById('lblbusco').innerText = '🥂 Diversión';
    }
    if (selected == "amigos") {
        document.getElementById('lblbusco').innerText = '👋 Nuevos amigos';
    }
    else {
        document.getElementById('lblbusco').innerText = '🤔 Lo sigo pensando';
    }
}