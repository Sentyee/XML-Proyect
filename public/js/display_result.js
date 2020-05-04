var xhttp;

export function loadXMLDoc(filename) {
    if (window.ActiveXObject) {
        xhttp = new ActiveXObject("Msxml2.XMLHTTP");
    }
    else {
        xhttp = new XMLHttpRequest();
    }
    xhttp.open("GET", filename, false);
    try { xhttp.responseType = "msxml-document" } catch (err) { } // Helping IE11
    xhttp.send("");
    return xhttp.responseXML;
}

export function displayResult(xml, xsl) {
    // code for IE
    if (window.ActiveXObject || xhttp.responseType == "msxml-document") {
        document.getElementById("my-tbody").innerHTML = xml.transformNode(xsl);
    }
    // code for Chrome, Firefox, Opera, etc.
    else if (document.implementation && document.implementation.createDocument) {
        let xsltProcessor = new XSLTProcessor();
        xsltProcessor.importStylesheet(xsl);
        let resultDocument = xsltProcessor.transformToFragment(xml, document);
        document.getElementById("my-tbody").appendChild(resultDocument);
    }
}
