function pagoOnChange(sel) {
    if (sel.value === "persona") {
        divA = document.getElementById("dni");
        divA.setAttribute("required", "true");
        divA.style.display = "";
        divB = document.getElementById("name");
        divB.setAttribute("required", "");
        divB.style.display = "";
        divC = document.getElementById("apaterno");
        divC.setAttribute("required", "");
        divC.style.display = "";
        divD = document.getElementById("amaterno");
        divD.setAttribute("required", "");
        divD.style.display = "";

        divE = document.getElementById("ruc");
        divE.style.display = "none";
        divF = document.getElementById("rsocial");
        divF.style.display = "none";
        divG = document.getElementById("tempresa");
        divG.style.display = "none";

    } else {

        divA = document.getElementById("dni");
        divA.style.display = "none";
        divB = document.getElementById("name");
        divB.style.display = "none";
        divC = document.getElementById("apaterno");
        divC.style.display = "none";
        divD = document.getElementById("amaterno");
        divD.style.display = "none";

        divE = document.getElementById("ruc");
        divE.style.display = "";
        divF = document.getElementById("rsocial");
        divF.style.display = "";
        divG = document.getElementById("tempresa");
        divG.style.display = "";
    }
}