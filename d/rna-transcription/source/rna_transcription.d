module rna_transcription;
import std.string;

string dnaComplement(const string dna) {
  const dchar[dchar] trans_table = ['G': 'C','C': 'G','T': 'A','A': 'U'];
  const long idx = indexOfNeither(dna, trans_table.keys);
  if(idx >= 0)
    throw new Exception(format!"Found illegal char '%c'"(dna[idx]));
  return translate(dna, trans_table);
}

unittest {
  import std.exception : assertThrown;

  const int allTestsEnabled = 1;

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
