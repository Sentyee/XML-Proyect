# XML Proyect

In this proyect I take a xml file from an Open Data source and then use XSLT to format the XML and transform it into an HTML file.

Then I will use a hosting service to make a web page that updates data automatically by taking it directly from the original website.

## Tools 
* **A Website to get the XML File from:** In my case I chose World Bank as the source, and I got my xml from this link: https://api.worldbank.org/v2/country/ES/indicator/SP.ADO.TFRT

* **IDE:** I need a developer tool to work comfortably with the files, and I choose _Visual Studio Code_, Althought I also used _Netbeans 11.2_ in order to more easily see the result of the XSLT Transformation.

* **Hosting service:** Finally I need a hosting service to get my web up online.
I chose _Firebase_ because it's easy to set up and is also free.


## Steps 

### Not using hosting
1. I downloaded the xml file from the website.

2. I create a xsl file to format the original xml and get the data that i want from it.

3. (Optional) I created a xsd file to validate the new xml file.

4. Made another xsl file, this time to transform the new xml into an HTML.

### Using hosting
1. I initialized a firebase repository in my proyect folder.

2. I made two javascript files to create functions to get the data directly from the World Bank API and then transform it directly into HTML using a xsl. Please check if the website you are using has a CORS header. If it doesn't, then you won't be able to pull the data from the website.

3. I deploy the website using firebase.

## Links 🔧

- [XSL file that transforms the original XML into a clearer version](https://github.com/Sentyee/XML-Proyect/blob/master/XML-To-XML.xsl)

- [New XML file](https://github.com/Sentyee/XML-Proyect/blob/master/Adolescent%20fertility%20rate%20(Spain)%20(Result).xml)

- [XSD file that validates the XML](https://github.com/Sentyee/XML-Proyect/blob/master/XMLValidator.xsd)

- [XSL file that transforms the XML into a HTML file](https://github.com/Sentyee/XML-Proyect/blob/master/XML-To-HTML.xsl)

- [HTML Proyect](https://github.com/Sentyee/XML-Proyect/tree/master/public)

- [Website](https://lndxml.web.app/)
