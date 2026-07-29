import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

structure ThermodynamicsPackage where
  deltaG : Float
  deltaH : Float
  deltaS : Float
  temperature : Float
  equilibriumConstant : Float
  freeEnergyCalculated : Prop
  enthalpyCalculated : Prop
  entropyCalculated : Prop
  freeEnergyTerm : freeEnergyCalculated
  enthalpyTerm : enthalpyCalculated
  entropyTerm : entropyCalculated

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  freeEnergyCalculatedClosed : T.freeEnergyCalculated
  enthalpyCalculatedClosed : T.enthalpyCalculated
  entropyCalculatedClosed : T.entropyCalculated

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.freeEnergyCalculated ∧ T.enthalpyCalculated ∧ T.entropyCalculated

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
  ThermodynamicsClosed T := by
  exact And.intro E.freeEnergyCalculatedClosed (And.intro E.enthalpyCalculatedClosed E.entropyCalculatedClosed)

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse
