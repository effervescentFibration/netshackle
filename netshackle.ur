table topic : {Id : int, Title : string, Created : time, Updated : time}
  PRIMARY KEY Id,
  CONSTRAINT Id UNIQUE Id

fun list () =
    rows <- queryX (SELECT * FROM topic)
            (fn row =>
		<xml>
		  <div>
		    <span><strong>{[row.Topic.Title]}</strong></span>
		    <span>Created: {[row.Topic.Created]}</span>
		    <span>Updated: {[row.Topic.Updated]}</span>
		  </div>
		</xml>
	    );
    return
	<xml>
	  <head>
	    <title>Netshackle: Topics</title>
	  </head>
	  <body>
	    <div>
	      {rows}
	    </div>
	  </body>
	</xml>
    
fun main () =
    xml <- list ();
    return
	<xml>
	  <head>
	    <title>Netshackle</title>
	  </head>
	  <body>
	    <h1>Netshackle!</h1>
	  </body>
	</xml>
