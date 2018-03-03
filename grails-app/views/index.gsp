<%@ page import="com.johnmcloskey.YoungsLiteralTranslation; com.johnmcloskey.WorldEnglishBible; com.johnmcloskey.KingJamesVersion; com.johnmcloskey.BasicEnglishBible; com.johnmcloskey.DarbyBible; com.johnmcloskey.AmericanStandardVersion" %>
<!DOCTYPE html>
<html lang="en" class="no-js" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bibles</title>
    <link rel="stylesheet" type="text/css" href="http://johnmcloskey.com/css/default.css" />
    <link rel="stylesheet" type="text/css" href="http://johnmcloskey.com/css/component.css" />
    <script src="http://johnmcloskey.com/js/modernizr.custom.js"></script>

</head>
<body>
<g:set var="bookNamesList" value="${

    ["Genesis","Exodus","Leviticus","Numbers","Deuteronomy","Joshua","Judges","Ruth","1 Samuel","2 Samuel","1 Kings","2 Kings","1 Chronicles","2 Chronicles","Ezra","Nehemiah","Esther","Job","Psalms","Proverbs","Ecclesiastes","Song of Solomon","Isaiah","Jeremiah","Lamentations","Ezekiel","Daniel","Hosea","Joel","Amos","Obadiah","Jonah","Micah","Nahum","Habakkuk","Zephaniah","Haggai","Zechariah","Malachi","Matthew","Mark","Luke","John","Acts","Romans","1 Corinthians","2 Corinthians","Galatians","Ephesians","Philippians","Colossians","1 Thessalonians","2 Thessalonians","1 Timothy","2 Timothy","Titus","Philemon","Hebrews","James","1 Peter","2 Peter","1 John","2 John","3 John","Jude","Revelation"]

}" />
<g:set var="bookChaptersMap" value="${

    ["Genesis":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50],"Exodus":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40],"Leviticus":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27],"Numbers":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36],"Deuteronomy":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34],"Joshua":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24],"Judges":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21],"Ruth":[1,2,3,4],"1 Samuel":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],"2 Samuel":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24],"1 Kings":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22],"2 Kings":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25],"1 Chronicles":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29],"2 Chronicles":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36],"Ezra":[1,2,3,4,5,6,7,8,9,10],"Nehemiah":[1,2,3,4,5,6,7,8,9,10,11,12,13],"Esther":[1,2,3,4,5,6,7,8,9,10],"Job":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42],"Psalms":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150],"Proverbs":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],"Ecclesiastes":[1,2,3,4,5,6,7,8,9,10,11,12],"Song of Solomon":[1,2,3,4,5,6,7,8],"Isaiah":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66],"Jeremiah":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52],"Lamentations":[1,2,3,4,5],"Ezekiel":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48],"Daniel":[1,2,3,4,5,6,7,8,9,10,11,12],"Hosea":[1,2,3,4,5,6,7,8,9,10,11,12,13,14],"Joel":[1,2,3],"Amos":[1,2,3,4,5,6,7,8,9],"Obadiah":[1],"Jonah":[1,2,3,4],"Micah":[1,2,3,4,5,6,7],"Nahum":[1,2,3],"Habakkuk":[1,2,3],"Zephaniah":[1,2,3],"Haggai":[1,2],"Zechariah":[1,2,3,4,5,6,7,8,9,10,11,12,13,14],"Malachi":[1,2,3,4],"Matthew":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28],"Mark":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16],"Luke":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24],"John":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21],"Acts":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28],"Romans":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16],"1 Corinthians":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16],"2 Corinthians":[1,2,3,4,5,6,7,8,9,10,11,12,13],"Galatians":[1,2,3,4,5,6],"Ephesians":[1,2,3,4,5,6],Philippians:[1,2,3,4],"Colossians":[1,2,3,4],"1 Thessalonians":[1,2,3,4,5],"2 Thessalonians":[1,2,3],"1 Timothy":[1,2,3,4,5,6],"2 Timothy":[1,2,3,4],"Titus":[1,2,3],"Philemon":[1],"Hebrews":[1,2,3,4,5,6,7,8,9,10,11,12,13],"James":[1,2,3,4,5],"1 Peter":[1,2,3,4,5],"2 Peter":[1,2,3],"1 John":[1,2,3,4,5],"2 John":[1],"3 John":[1],"Jude":[1],"Revelation":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22]]

}" />
<div class="container">
    <div class="main">
        <ul id="americanStandardVersion" class="cbp-ntaccordion">
            <li>
                <h3 class="cbp-nttrigger">American Standard Version <a href="http://johnmcloskey.com/search/asv"><img src="http://johnmcloskey.com/search.png"></a><a href="http://johnmcloskey.com/bibles/americanStandardVersion/read"><img src="http://johnmcloskey.com/printer.png"></a></h3>
                <div class="cbp-ntcontent">
                    <ul class="cbp-ntsubaccordion">
                        <g:each var="bookName" in="${bookNamesList}">
                            <li>
                                <h3 class="cbp-nttrigger">${bookName.encodeAsHTML()} 
                                	<g:link target="_blank" controller="americanStandardVersion" action="search" params="[book: bookName]"><img src="http://johnmcloskey.com/search.png"></g:link>
                                </h3>
                                <div class="cbp-ntcontent">
                                    <ul class="cbp-ntsubaccordion">
                                        <g:each var="chapterNumber" in="${bookChaptersMap.get(bookName)}">
                                            <li>
                                                %{--target="_blank	Opens the linked document in a new window or tab"--}%
                                                <g:link target="_blank" controller="americanStandardVersion" action="chapterView" params="[book: bookName, chapter: chapterNumber]">
                                                    <h3>${bookName.encodeAsHTML()} Chapter ${chapterNumber}</h3>
                                                </g:link>

                                            %{--all in one approach--}%
                                            %{--<h3 class="cbp-nttrigger">${bookName.encodeAsHTML()} Chapter ${chapterNumber.encodeAsHTML()}</h3>--}%
                                            %{--<div class="cbp-ntcontent">--}%
                                            %{--<p>--}%
                                            %{--<g:each var="object" in="${AmericanStandardVersion.findAllWhere(book: bookName.toString(), chapter: chapterNumber.asType(Integer), [cache: true, readOnly: true])}">--}%
                                            %{--<b>${object.asType(AmericanStandardVersion).verse.encodeAsHTML()}</b> ${object.asType(AmericanStandardVersion).verseText.encodeAsHTML()}--}%
                                            %{--</g:each>--}%
                                            %{--</p>--}%
                                            %{--</div>--}%

                                            </li>
                                        </g:each>
                                    </ul>
                                </div>
                            </li>
                        </g:each>
                    </ul>
                </div>
            </li>
        </ul>
        <ul id="basicEnglishBible" class="cbp-ntaccordion">
            <li>
                <h3 class="cbp-nttrigger">Basic English Bible <a href="http://johnmcloskey.com/search/beb"><img src="http://johnmcloskey.com/search.png"></a><a href="http://johnmcloskey.com/bibles/basicEnglishBible/read"><img src="http://johnmcloskey.com/printer.png"></a></h3>
                <div class="cbp-ntcontent">
                    <ul class="cbp-ntsubaccordion">
                        <g:each var="bookName" in="${bookNamesList}">
                            <li>
                                <h3 class="cbp-nttrigger">${bookName.encodeAsHTML()}
                                	<g:link target="_blank" controller="basicEnglishBible" action="search" params="[book: bookName]"><img src="http://johnmcloskey.com/search.png"></g:link>
                                </h3>
                                <div class="cbp-ntcontent">
                                    <ul class="cbp-ntsubaccordion">
                                        <g:each var="chapterNumber" in="${bookChaptersMap.get(bookName)}">
                                            <li>
                                                <g:link controller="basicEnglishBible" action="chapterView" params="[book: bookName, chapter: chapterNumber]">
                                                    <h3>${bookName.encodeAsHTML()} Chapter ${chapterNumber}</h3>
                                                </g:link>
                                            </li>
                                        </g:each>
                                    </ul>
                                </div>
                            </li>
                        </g:each>
                    </ul>
                </div>
            </li>
        </ul>

        <ul id="darbyBible" class="cbp-ntaccordion">
            <li>
                <h3 class="cbp-nttrigger">Darby Bible <a href="http://johnmcloskey.com/search/db"><img src="http://johnmcloskey.com/search.png"></a><a href="http://johnmcloskey.com/bibles/darbyBible/read"><img src="http://johnmcloskey.com/printer.png"></a></h3>
                <div class="cbp-ntcontent">
                    <ul class="cbp-ntsubaccordion">
                        <g:each var="bookName" in="${bookNamesList}">
                            <li>
                                <h3 class="cbp-nttrigger">${bookName.encodeAsHTML()}
                                	<g:link target="_blank" controller="darbyBible" action="search" params="[book: bookName]"><img src="http://johnmcloskey.com/search.png"></g:link>
                                </h3>
                                <div class="cbp-ntcontent">
                                    <ul class="cbp-ntsubaccordion">
                                        <g:each var="chapterNumber" in="${bookChaptersMap.get(bookName)}">
                                            <li>
                                                <g:link link target="_blank" controller="darbyBible" action="chapterView" params="[book: bookName, chapter: chapterNumber]">
                                                    <h3>${bookName.encodeAsHTML()} Chapter ${chapterNumber}</h3>
                                                </g:link>
                                            </li>
                                        </g:each>
                                    </ul>
                                </div>
                            </li>
                        </g:each>
                    </ul>
                </div>
            </li>
        </ul>

        <ul id="kingJamesVersion" class="cbp-ntaccordion">
            <li>
                <h3 class="cbp-nttrigger">King James Version <a href="http://johnmcloskey.com/search/kjv"><img src="http://johnmcloskey.com/search.png"></a><a href="http://johnmcloskey.com/bibles/kingJamesVersion/read"><img src="http://johnmcloskey.com/printer.png"></a></h3>
                <div class="cbp-ntcontent">
                    <ul class="cbp-ntsubaccordion">
                        <g:each var="bookName" in="${bookNamesList}">
                            <li>
                                <h3 class="cbp-nttrigger">${bookName.encodeAsHTML()}
                                	<g:link target="_blank" controller="kingJamesVersion" action="search" params="[book: bookName]"><img src="http://johnmcloskey.com/search.png"></g:link>
                                </h3>
                                <div class="cbp-ntcontent">
                                    <ul class="cbp-ntsubaccordion">
                                        <g:each var="chapterNumber" in="${bookChaptersMap.get(bookName)}">
                                            <li>
                                                <g:link  link target="_blank" controller="kingJamesVersion" action="chapterView" params="[book: bookName, chapter: chapterNumber]">
                                                    <h3>${bookName.encodeAsHTML()} Chapter ${chapterNumber}</h3>
                                                </g:link>
                                            </li>
                                        </g:each>
                                    </ul>
                                </div>
                            </li>
                        </g:each>
                    </ul>
                </div>
            </li>
        </ul>

        <ul id="worldEnglishBible" class="cbp-ntaccordion">
            <li>
                <h3 class="cbp-nttrigger">World English Bible <a href="http://johnmcloskey.com/search/web"><img src="http://johnmcloskey.com/search.png"></a><a href="http://johnmcloskey.com/bibles/worldEnglishBible/read"><img src="http://johnmcloskey.com/printer.png"></a></h3>
                <div class="cbp-ntcontent">
                    <ul class="cbp-ntsubaccordion">
                        <g:each var="bookName" in="${bookNamesList}">
                            <li>
                                <h3 class="cbp-nttrigger">${bookName.encodeAsHTML()}
                                	<g:link target="_blank" controller="worldEnglishBible" action="search" params="[book: bookName]"><img src="http://johnmcloskey.com/search.png"></g:link>
                                </h3>
                                <div class="cbp-ntcontent">
                                    <ul class="cbp-ntsubaccordion">
                                        <g:each var="chapterNumber" in="${bookChaptersMap.get(bookName)}">
                                            <li>
                                                <g:link  link target="_blank" controller="worldEnglishBible" action="chapterView" params="[book: bookName, chapter: chapterNumber]">
                                                    <h3>${bookName.encodeAsHTML()} Chapter ${chapterNumber}</h3>
                                                </g:link>
                                            </li>
                                        </g:each>
                                    </ul>
                                </div>
                            </li>
                        </g:each>
                    </ul>
                </div>
            </li>
        </ul>

        <ul id="youngsLiteralTranslation" class="cbp-ntaccordion">
            <li>
                <h3 class="cbp-nttrigger">Young's Literal Translation <a href="http://johnmcloskey.com/search/ylt"><img src="http://johnmcloskey.com/search.png"></a><a href="http://johnmcloskey.com/bibles/youngsLiteralTranslation/read"><img src="http://johnmcloskey.com/printer.png"></a></h3>
                <div class="cbp-ntcontent">
                    <ul class="cbp-ntsubaccordion">
                        <g:each var="bookName" in="${bookNamesList}">
                            <li>
                                <h3 class="cbp-nttrigger">${bookName.encodeAsHTML()}
                                	<g:link target="_blank" controller="youngsLiteralTranslation" action="search" params="[book: bookName]"><img src="http://johnmcloskey.com/search.png"></g:link>
                                </h3>
                                <div class="cbp-ntcontent">
                                    <ul class="cbp-ntsubaccordion">
                                        <g:each var="chapterNumber" in="${bookChaptersMap.get(bookName)}">
                                            <li>
                                                <g:link  link target="_blank" controller="youngsLiteralTranslation" action="chapterView" params="[book: bookName, chapter: chapterNumber]">
                                                    <h3>${bookName.encodeAsHTML()} Chapter ${chapterNumber}</h3>
                                                </g:link>
                                            </li>
                                        </g:each>
                                    </ul>
                                </div>
                            </li>
                        </g:each>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://johnmcloskey.com/js/jquery.cbpNTAccordion.min.js"></script>
<script>
$( function() {
$( '#americanStandardVersion' ).cbpNTAccordion();
$( '#basicEnglishBible' ).cbpNTAccordion();
$( '#darbyBible' ).cbpNTAccordion();
$( '#kingJamesVersion' ).cbpNTAccordion();
$( '#worldEnglishBible' ).cbpNTAccordion();
$( '#youngsLiteralTranslation' ).cbpNTAccordion();
} );
</script>
</body>
</html>