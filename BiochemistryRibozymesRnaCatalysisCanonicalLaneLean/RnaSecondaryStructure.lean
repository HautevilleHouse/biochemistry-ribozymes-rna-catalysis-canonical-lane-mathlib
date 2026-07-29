import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

structure RnaSecondaryStructurePackage where
  sequence : String
  basePairs : List (Nat × Nat)
  motifs : List String
  foldingEnergy : Float
  freeEnergyCalculated : Prop
  basePairsTerm : basePairs
  foldingEnergyTerm : foldingEnergy

structure RnaSecondaryStructureEvidence (R : RnaSecondaryStructurePackage) where
  freeEnergyCalculatedClosed : R.freeEnergyCalculated

def RnaSecondaryStructureClosed (R : RnaSecondaryStructurePackage) : Prop :=
  R.freeEnergyCalculated

theorem rna_secondary_structure_closed_from_evidence (R : RnaSecondaryStructurePackage) (E : RnaSecondaryStructureEvidence R) :
  RnaSecondaryStructureClosed R := by
  exact E.freeEnergyCalculatedClosed

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse
