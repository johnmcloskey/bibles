package com.johnmcloskey
import grails.converters.*
import groovy.json.JsonBuilder
//import groovy.time.TimeCategory
//import groovy.time.TimeDuration
class KingJamesVersionController {

	def final static books = ["Genesis","Exodus","Leviticus","Numbers","Deuteronomy","Joshua","Judges","Ruth","1 Samuel","2 Samuel","1 Kings","2 Kings","1 Chronicles","2 Chronicles","Ezra","Nehemiah","Esther","Job","Psalms","Proverbs","Ecclesiastes","Song of Solomon","Isaiah","Jeremiah","Lamentations","Ezekiel","Daniel","Hosea","Joel","Amos","Obadiah","Jonah","Micah","Nahum","Habakkuk","Zephaniah","Haggai","Zechariah","Malachi","Matthew","Mark","Luke","John","Acts","Romans","1 Corinthians","2 Corinthians","Galatians","Ephesians","Philippians","Colossians","1 Thessalonians","2 Thessalonians","1 Timothy","2 Timothy","Titus","Philemon","Hebrews","James","1 Peter","2 Peter","1 John","2 John","3 John","Jude","Revelation"]
	def final static chapters = ["Genesis":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50],"Exodus":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40],"Leviticus":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27],"Numbers":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36],"Deuteronomy":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34],"Joshua":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24],"Judges":[11,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21],"Ruth":[1,2,3,4],"1 Samuel":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],"2 Samuel":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24],"1 Kings":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22],"2 Kings":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25],"1 Chronicles":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29],"2 Chronicles":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36],"Ezra":[1,2,3,4,5,6,7,8,9,10],"Nehemiah":[1,2,3,4,5,6,7,8,9,10,11,12,13],"Esther":[1,2,3,4,5,6,7,8,9,10],"Job":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42],"Psalms":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150],"Proverbs":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31],"Ecclesiastes":[1,2,3,4,5,6,7,8,9,10,11,12],"Song of Solomon":[1,2,3,4,5,6,7,8],"Isaiah":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66],"Jeremiah":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52],"Lamentations":[1,2,3,4,5],"Ezekiel":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48],"Daniel":[1,2,3,4,5,6,7,8,9,10,11,12],"Hosea":[1,2,3,4,5,6,7,8,9,10,11,12,13,14],"Joel":[1,2,3],"Amos":[1,2,3,4,5,6,7,8,9],"Obadiah":[1],"Jonah":[1,2,3,4],"Micah":[1,2,3,4,5,6,7],"Nahum":[1,2,3],"Habakkuk":[1,2,3],"Zephaniah":[1,2,3],"Haggai":[1,2],"Zechariah":[1,2,3,4,5,6,7,8,9,10,11,12,13,14],"Malachi":[1,2,3,4],"Matthew":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28],"Mark":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16],"Luke":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24],"John":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21],"Acts":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28],"Romans":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16],"1 Corinthians":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16],"2 Corinthians":[1,2,3,4,5,6,7,8,9,10,11,12,13],"Galatians":[1,2,3,4,5,6],"Ephesians":[1,2,3,4,5,6],Philippians:[1,2,3,4],"Colossians":[1,2,3,4],"1 Thessalonians":[1,2,3,4,5],"2 Thessalonians":[1,2,3],"1 Timothy":[1,2,3,4,5,6],"2 Timothy":[1,2,3,4],"Titus":[1,2,3],"Philemon":[1],"Hebrews":[1,2,3,4,5,6,7,8,9,10,11,12,13],"James":[1,2,3,4,5],"1 Peter":[1,2,3,4,5],"2 Peter":[1,2,3],"1 John":[1,2,3,4,5],"2 John":[1],"3 John":[1],"Jude":[1],"Revelation":[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22]]
	def bibleMap = [:]
	//readChapter
	def readChapter() {
		if(getParams().book && getParams().chapter){ KingJamesVersion.findAllWhere(book: getParams().book.toString(),chapter: getParams().chapter.asType(Integer), [cache: true, readOnly: true]).verseText.each{render it}}
	}
	//readBook
	def readBook() {
		if(getParams().book){ KingJamesVersion.findAllWhere(book: getParams().book.toString(), [cache: true, readOnly: true]).verseText.each{render it}}
	}
	def read() {
//		Date start = new Date()
		if(getParams().book && getParams().chapter && getParams().verse){ KingJamesVersion.findAllWhere(book: getParams().book.toString(),chapter: getParams().chapter.asType(Integer),verse: getParams().verse.asType(Integer), [cache: true, readOnly: true]).verseText.each{render it}}
		else if(getParams().book && getParams().chapter && !getParams().verse){ KingJamesVersion.findAllWhere(book: getParams().book.toString(),chapter: getParams().chapter.asType(Integer), [cache: true], readOnly: true).verseText.each{render it}}
		else if(getParams().book && !getParams().chapter && !getParams().verse){ KingJamesVersion.findAllWhere(book: getParams().book.toString(), [cache: true], readOnly: true).verseText.each{render it}}
		else if(!getParams().book && !getParams().chapter && !getParams().verse){ KingJamesVersion.list().verseText.each{render it}}
//		Date stop = new Date()
//		TimeDuration td = TimeCategory.minus( stop, start )
//		render td
	}

	def chapterView() {
		[chapterMapped:KingJamesVersion.findAllWhere(book: getParams().book.toString(), chapter: getParams().chapter.asType(Integer), [cache: true, readOnly: true])]
	}

	def bibleView() {
		if (bibleMap.isEmpty()) {
			books.each { bookName->
				chapters.get(bookName.toString()).each { chapterNumber->
					bibleMap.put(bookName.toString() + chapterNumber.toString(), KingJamesVersion.findAllWhere(book: bookName,chapter: chapterNumber, [cache: true, readOnly: true])
					)
				}
			}
		}
		[bibleMapped:bibleMap]
	}
	def jsonMap() {
		if (bibleMap.isEmpty()) {
			books.each { bookName->
				chapters.get(bookName.toString()).each { chapterNumber->
					bibleMap.put(bookName.toString() + chapterNumber.toString(), KingJamesVersion.findAllWhere(book: bookName,chapter: chapterNumber, [cache: true, readOnly: true])
					)
				}
			}
		}		
		render bibleMap as JSON
	}
	def xmlMap() {
		if (bibleMap.isEmpty()) {
			books.each { bookName->
				chapters.get(bookName.toString()).each { chapterNumber->
					bibleMap.put(bookName.toString() + chapterNumber.toString(), KingJamesVersion.findAllWhere(book: bookName,chapter: chapterNumber, [cache: true, readOnly: true])
					)
				}
			}
		}
		render bibleMap as XML
	}
	def jsonList() {
		render KingJamesVersion.list() as JSON
	}
	def xmlList() {
		render KingJamesVersion.list() as XML
	}
//	def search() {
//		JsonBuilder json = new JsonBuilder ()
//		def searchList = KingJamesVersion.list().each { 
//			json {
//				url "/bibles/kingJamesVersion/chapterView?book=" + it.getBook().toString() + "&chapter=" + it.getChapter().toString(),
//				verse "<b>" + it.getBook().toString() + " " + it.getChapter().toString() + it.getVerse().toString() + ":" + "</b> " + it.getVerseText().toString(),
//				image "arrow.png"
//			}
//		}
//		
//		render searchList as JSON
//	}
	def searchList() {
		def all = []		
		if(getParams().book){
			def thisBook = []
			thisBook = KingJamesVersion.findAllWhere(book: getParams().book.toString(), [cache: true, readOnly: true])
			all.addAll(thisBook)
		} else {
			all.addAll(KingJamesVersion.list())
		}
		render all as JSON
	}
	def search() {
//		[searchMapped:AmericanStandardVersion.list()]
//		[searchMapped:BasicEnglishBible.list()]
//		[searchMapped:DarbyBible.list()]
		[searchMapped:KingJamesVersion.list()]
//		[searchMapped:WorldEnglishBible.list()]
//		[searchMapped:YoungsLiteralTranslation.list()]
	}
}
