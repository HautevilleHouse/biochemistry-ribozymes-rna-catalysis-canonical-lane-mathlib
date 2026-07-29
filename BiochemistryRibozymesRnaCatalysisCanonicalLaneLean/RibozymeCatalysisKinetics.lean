import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

structure MichaelisMentenKinetics where
  substrateConcentration : Type
  productFormationRate : Type
  michaelisConstant : Prop
  turnoverNumber : Prop
  catalyticEfficiency : Prop
  transitionStateStabilization : Prop

structure MichaelisMentenKineticsEvidence (K : MichaelisMentenKinetics) where
  michaelisConstantClosed : K.michaelisConstant
  turnoverNumberClosed : K.turnoverNumber
  catalyticEfficiencyClosed : K.catalyticEfficiency
  transitionStateStabilizationClosed : K.transitionStateStabilization

def MichaelisMentenKineticsClosed (K : MichaelisMentenKinetics) : Prop :=
  K.michaelisConstant ∧ K.turnoverNumber ∧ K.catalyticEfficiency ∧ K.transitionStateStabilization

theorem michaelis_menten_kinetics_closed_from_evidence
    (K : MichaelisMentenKinetics) (E : MichaelisMentenKineticsEvidence K) :
    MichaelisMentenKineticsClosed K := by
  exact And.intro E.michaelisConstantClosed
    (And.intro E.turnoverNumberClosed
      (And.intro E.catalyticEfficiencyClosed E.transitionStateStabilizationClosed))

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse