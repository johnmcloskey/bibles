package com.johnmcloskey

class BasicEnglishBible {

	String book
	Integer chapter
	Integer verse
	String verseText
	static constraints = {
		book editable:false
		chapter editable:false
		verse editable:false
		verseText editable:false
	}
	static fetchMode = [book: 'eager', chapter: 'eager', verse: 'eager', verseText: 'eager']
	static mapping = {cache true}
	static searchable = {
		true
		mapping {
			spellCheck "include"
		}
	}
//	def String toString() { return "BasicEnglishBible "+book+" "+chapter+":"+verse+" "+verseText}
}
