open HorzBox

exception InvalidFontAbbrev of font_abbrev

val initialize : string -> unit

val get_metrics_of_word : horz_string_info -> Uchar.t list -> OutputText.t * length * length * length

val get_math_char_info : math_font_abbrev -> Uchar.t -> FontFormat.glyph_id * int * int * int * int option * FontFormat.math_kern_info option

val get_tag_and_encoding : font_abbrev -> string * encoding_in_pdf

val get_font_dictionary : Pdf.t -> Pdf.pdfobject
