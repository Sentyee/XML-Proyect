window.onload = initialize;
import {displayResult, loadXMLDoc} from "./display_result.js";

function initialize(){
    let xml = loadXMLDoc("https://api.worldbank.org/v2/country/ES/indicator/SP.ADO.TFRT");
    let xsl = loadXMLDoc("xml/onlineHTML.xsl");

    displayResult(xml, xsl);

}