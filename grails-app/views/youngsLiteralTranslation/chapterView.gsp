<%@ page import="com.johnmcloskey.YoungsLiteralTranslation" %>
<g:set var="selectedBook" value="${chapterMapped.get(0).book}"/>
<g:set var="selectedChapter" value="${chapterMapped.get(0).chapter}"/>
<!DOCTYPE html>
<html lang="en" class="no-js" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${selectedBook.encodeAsHTML()} Chapter ${selectedChapter.encodeAsHTML()}</title>
    <link rel="stylesheet" type="text/css" href="http://johnmcloskey.com/css/default.css" />
    <link rel="stylesheet" type="text/css" href="http://johnmcloskey.com/css/component.css" />
</head>

<g:set var="nextBook" value="${chapterMapped.get(0).book}"/>
<g:set var="nextChapter" value="${selectedChapter.asType(Integer)+1}" />
<g:if test="${selectedBook == 'Genesis' && selectedChapter == 50}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Exodus" />
</g:if>
<g:if test="${selectedBook == 'Exodus' && selectedChapter == 40}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Leviticus" />
</g:if>
<g:if test="${selectedBook == 'Leviticus' && selectedChapter == 27}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Numbers" />
</g:if>
<g:if test="${selectedBook == 'Numbers' && selectedChapter == 36}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Deuteronomy" />
</g:if>
<g:if test="${selectedBook == 'Deuteronomy' && selectedChapter == 34}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Joshua" />
</g:if>
<g:if test="${selectedBook == 'Joshua' && selectedChapter == 24}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Judges" />
</g:if>
<g:if test="${selectedBook == 'Judges' && selectedChapter == 21}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Ruth" />
</g:if>
<g:if test="${selectedBook == 'Ruth' && selectedChapter == 4}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="1 Samuel" />
</g:if>
<g:if test="${selectedBook == '1 Samuel' && selectedChapter == 31}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="2 Samuel" />
</g:if>
<g:if test="${selectedBook == '2 Samuel' && selectedChapter == 24}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="1 Kings" />
</g:if>
<g:if test="${selectedBook == '1 Kings' && selectedChapter == 22}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="2 Kings" />
</g:if>
<g:if test="${selectedBook == '2 Kings' && selectedChapter == 25}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="1 Chronicles" />
</g:if>
<g:if test="${selectedBook == '1 Chronicles' && selectedChapter == 29}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="2 Chronicles" />
</g:if>
<g:if test="${selectedBook == '2 Chronicles' && selectedChapter == 36}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Ezra" />
</g:if>
<g:if test="${selectedBook == 'Ezra' && selectedChapter == 10}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Nehemiah" />
</g:if>
<g:if test="${selectedBook == 'Nehemiah' && selectedChapter == 13}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Esther" />
</g:if>
<g:if test="${selectedBook == 'Esther' && selectedChapter == 10}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Job" />
</g:if>
<g:if test="${selectedBook == 'Job' && selectedChapter == 42}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Psalms" />
</g:if>
<g:if test="${selectedBook == 'Psalms' && selectedChapter == 150}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Proverbs" />
</g:if>
<g:if test="${selectedBook == 'Proverbs' && selectedChapter == 31}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Ecclesiastes" />
</g:if>
<g:if test="${selectedBook == 'Ecclesiastes' && selectedChapter == 12}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Song of Solomon" />
</g:if>
<g:if test="${selectedBook == 'Song of Solomon' && selectedChapter == 8}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Isaiah" />
</g:if>
<g:if test="${selectedBook == 'Isaiah' && selectedChapter == 66}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Jeremiah" />
</g:if>
<g:if test="${selectedBook == 'Jeremiah' && selectedChapter == 52}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Lamentations" />
</g:if>
<g:if test="${selectedBook == 'Lamentations' && selectedChapter == 5}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Ezekiel" />
</g:if>
<g:if test="${selectedBook == 'Ezekiel' && selectedChapter == 48}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Daniel" />
</g:if>
<g:if test="${selectedBook == 'Daniel' && selectedChapter == 12}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Hosea" />
</g:if>
<g:if test="${selectedBook == 'Hosea' && selectedChapter == 14}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Joel" />
</g:if>
<g:if test="${selectedBook == 'Joel' && selectedChapter == 3}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Amos" />
</g:if>
<g:if test="${selectedBook == 'Amos' && selectedChapter == 9}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Obadiah" />
</g:if>
<g:if test="${selectedBook == 'Obadiah' && selectedChapter == 1}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Jonah" />
</g:if>
<g:if test="${selectedBook == 'Jonah' && selectedChapter == 4}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Micah" />
</g:if>
<g:if test="${selectedBook == 'Micah' && selectedChapter == 7}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Nahum" />
</g:if>
<g:if test="${selectedBook == 'Nahum' && selectedChapter == 3}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Habakkuk" />
</g:if>
<g:if test="${selectedBook == 'Habakkuk' && selectedChapter == 3}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Zephaniah" />
</g:if>
<g:if test="${selectedBook == 'Zephaniah' && selectedChapter == 3}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Haggai" />
</g:if>
<g:if test="${selectedBook == 'Haggai' && selectedChapter == 2}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Zechariah" />
</g:if>
<g:if test="${selectedBook == 'Zechariah' && selectedChapter == 14}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Malachi" />
</g:if>
<g:if test="${selectedBook == 'Malachi' && selectedChapter == 4}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Matthew" />
</g:if>
<g:if test="${selectedBook == 'Matthew' && selectedChapter == 28}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Mark" />
</g:if>
<g:if test="${selectedBook == 'Mark' && selectedChapter == 16}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Luke" />
</g:if>
<g:if test="${selectedBook == 'Luke' && selectedChapter == 24}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="John" />
</g:if>
<g:if test="${selectedBook == 'John' && selectedChapter == 21}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Acts" />
</g:if>
<g:if test="${selectedBook == 'Acts' && selectedChapter == 28}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Romans" />
</g:if>
<g:if test="${selectedBook == 'Romans' && selectedChapter == 16}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="1 Corinthians" />
</g:if>
<g:if test="${selectedBook == '1 Corinthians' && selectedChapter == 16}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="2 Corinthians" />
</g:if>
<g:if test="${selectedBook == '2 Corinthians' && selectedChapter == 13}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Galatians" />
</g:if>
<g:if test="${selectedBook == 'Galatians' && selectedChapter == 6}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Ephesians" />
</g:if>
<g:if test="${selectedBook == 'Ephesians' && selectedChapter == 6}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Philippians" />
</g:if>
<g:if test="${selectedBook == 'Philippians' && selectedChapter == 4}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Colossians" />
</g:if>
<g:if test="${selectedBook == 'Colossians' && selectedChapter == 4}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="1 Thessalonians" />
</g:if>
<g:if test="${selectedBook == '1 Thessalonians' && selectedChapter == 5}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="2 Thessalonians" />
</g:if>
<g:if test="${selectedBook == '2 Thessalonians' && selectedChapter == 3}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="1 Timothy" />
</g:if>
<g:if test="${selectedBook == '1 Timothy' && selectedChapter == 6}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="2 Timothy" />
</g:if>
<g:if test="${selectedBook == '2 Timothy' && selectedChapter == 4}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Titus" />
</g:if>
<g:if test="${selectedBook == 'Titus' && selectedChapter == 3}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Philemon" />
</g:if>
<g:if test="${selectedBook == 'Philemon' && selectedChapter == 1}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Hebrews" />
</g:if>
<g:if test="${selectedBook == 'Hebrews' && selectedChapter == 13}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="James" />
</g:if>
<g:if test="${selectedBook == 'James' && selectedChapter == 5}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="1 Peter" />
</g:if>
<g:if test="${selectedBook == '1 Peter' && selectedChapter == 5}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="2 Peter" />
</g:if>
<g:if test="${selectedBook == '2 Peter' && selectedChapter == 3}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="1 John" />
</g:if>
<g:if test="${selectedBook == '1 John' && selectedChapter == 5}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="2 John" />
</g:if>
<g:if test="${selectedBook == '2 John' && selectedChapter == 1}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="3 John" />
</g:if>	
<g:if test="${selectedBook == '3 John' && selectedChapter == 1}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Jude" />
</g:if>
<g:if test="${selectedBook == 'Jude' && selectedChapter == 1}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Revelation" />
</g:if>
<g:if test="${selectedBook == 'Revelation' && selectedChapter == 22}">
	<g:set var="nextChapter" value="1"/>
	<g:set var="nextBook" value="Genesis" />
</g:if>

<body>
<div class="container">
    <header class="clearfix">
        <a href="/"><span>Bible</span>
        <h1>Youngs Literal Translation</a> 
		<g:link controller="youngsLiteralTranslation" action="read"> 
        	<img src="http://johnmcloskey.com/printer.png"></img>		
        </g:link>        
        </h1>
    </header>
    <div class="main">
        <ul id="cbp-ntaccordion" class="cbp-ntaccordion">
        
            <li>
                <h3 id="current" ><img src="http://johnmcloskey.com/readarrow.png"></img> ${selectedBook.encodeAsHTML()} 
                
                <%--<g:link target="_blank" controller="youngsLiteralTranslation" action="readBook" params="[book: bookName]"><img src="http://johnmcloskey.com/printer.png"></g:link>--%> 
                <g:link controller="youngsLiteralTranslation" action="readBook" params="[book: selectedBook]" > 
           			<img src="http://johnmcloskey.com/printer.png"></img>		
              	</g:link> 
                Chapter ${selectedChapter.encodeAsHTML()}
                <g:link controller="youngsLiteralTranslation" action="readChapter" params="[book: selectedBook, chapter: selectedChapter]" > 
           			<img src="http://johnmcloskey.com/printer.png"></img>		
              	</g:link> 
                </h3>
                <div class="cbp-ntcontent">
                <p>
                    <g:each var="object" in="${chapterMapped}">
                        <b>${object.asType(YoungsLiteralTranslation).verse.encodeAsHTML()}</b> ${object.asType(YoungsLiteralTranslation).verseText.encodeAsHTML()}
                    </g:each>
                </p>
                </div>
            </li>
            <li>           	
           			<h3>          			
           			<g:link controller="youngsLiteralTranslation" action="chapterView" params="[book: nextBook, chapter: nextChapter]" > 
            			<img src="http://johnmcloskey.com/arrow.png"></img>	
            		</g:link>
           			${nextBook.encodeAsHTML()}
           			<g:link controller="worldEnglishBible" action="readBook" params="[book: nextBook]" > 
           				<img src="http://johnmcloskey.com/printer.png"></img>		
              		</g:link>
           			Chapter ${nextChapter.encodeAsHTML()}
           			<g:link controller="worldEnglishBible" action="readChapter" params="[book: nextBook, chapter: nextChapter]" > 
           				<img src="http://johnmcloskey.com/printer.png"></img>		
              		</g:link>
           			</h3>		              	
            	<div class="cbp-ntcontent"></div>
            </li>
        </ul>
    </div>
</div>
</body>
</html>