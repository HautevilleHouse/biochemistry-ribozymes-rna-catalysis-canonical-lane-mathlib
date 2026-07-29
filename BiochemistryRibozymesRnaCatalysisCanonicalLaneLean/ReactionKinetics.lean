import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

structure ReactionKineticsPackage where
  substrate : String
  product : String
  rateConstantForward : Float
  rateConstantReverse : Float
  michaelisConstant : Float
  catalyticRate : Float
  michaelisConstantCalculated : Prop
  catalyticRateCalculated : Prop
  michaelisConstantTerm : michaelisConstantCalculated
  catalyticRateTerm : catalyticRateCalculated

structure ReactionKineticsEvidence (K : ReactionKineticsPackage) where
  michaelisConstantCalculatedClosed : K.michaelisConstantCalculated
  catalyticRateCalculatedClosed : K.catalyticRateCalculated

def ReactionKineticsClosed (K : ReactionKineticsPackage) : Prop :=
  K.michaelisConstantCalculated ∧ K.catalyticRateCalculated

theorem reaction_kinetics_closed_from_evidence (K : ReactionKineticsPackage) (E : ReactionKineticsEvidence K) :
  ReactionKineticsClosed K := by
  exact And.intro E.michaelisConstantCalculatedClosed E.catalyticRateCalculatedClosed

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse
