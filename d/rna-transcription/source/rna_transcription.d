module rna_transcription;
import std.string;



string dnaComplement(const string dna) {
  const dchar[dchar] trans_table = ['G': 'C','C': 'G','T': 'A','A': 'U'];
  return translate(dna, trans_table);
}

unittest {
  import std.exception : assertThrown;

  const int allTestsEnabled = 0;

  assert(dnaComplement("C") == "G");
  static if (allTestsEnabled) {
    assert(dnaComplement("G") == "C");
    assert(dnaComplement("T") == "A");
    assert(dnaComplement("A") == "U");

    assert(dnaComplement("ACGTGGTCTTAA") == "UGCACCAGAAUU");

    assertThrown(dnaComplement("U"));
    assertThrown(dnaComplement("XXX"));
    assertThrown(dnaComplement("ACGTXXXCTTAA"));
  }

}
