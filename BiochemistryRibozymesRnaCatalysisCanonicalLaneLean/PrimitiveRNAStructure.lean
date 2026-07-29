import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

structure PrimitiveRNAStructure where
  sequence : String
  secondaryStructure : Type
  tertiaryInteractions : Prop
  foldingFreeEnergy : Float
  stability : Prop
  catalyticCore : Prop
  sequenceTerm : sequence.length > 0
  secondaryStructureTerm : secondaryStructure
  tertiaryInteractionsTerm : tertiaryInteractions
  foldingFreeEnergyTerm : foldingFreeEnergy < 0.0
  stabilityTerm : stability
  catalyticCoreTerm : catalyticCore

structure PrimitiveRNAStructurePackage where
  primarySequence : PrimitiveRNAStructure
  structureClosed : PrimitiveRNAStructure.stability ∧ PrimitiveRNAStructure.catalyticCore

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse