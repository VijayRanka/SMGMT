function addFields()
{
	// Number of inputs to create
	var number = document.getElementById("nSchool").value;
    // Container <div> where dynamic content will be placed
    var container = document.getElementById("container");
    
    var container1 = document.getElementById("container1");
    // Clear previous contents of the container
    while (container.hasChildNodes()) 
    {
        container.removeChild(container.lastChild);
    }
    
    while (container1.hasChildNodes()) 
    {
        container1.removeChild(container1.lastChild);
    }
    
    for (i=0;i<number;i++)
    {
        // Append a node with a random text
        container.appendChild(document.createTextNode("School " + (i+1)));
        // Create an <input> element, set its type and name attributes
        var input = document.createElement("input");
        input.type = "text";
        input.name = "member" + i;
        input.setAttribute("class", "form-control extra-small required");
        container.appendChild(input);
        
    }
    
    for (i=0;i<number;i++)
    {
    	var div = document.createElement("div");
        div.innerHTML="<div class='form-check form-check-inline'>" +
        		"<label class='custom-control custom-checkbox fill-colord'>" +
        		"<input type='checkbox' class='custom-control-input'>" +
        		"<span class='custom-control-indicator'></span>" +
        		"<span class='custom-control-description'>Option 1</span>" +
        		"</label></div>";
        
        container1.appendChild(div);
    }
}

