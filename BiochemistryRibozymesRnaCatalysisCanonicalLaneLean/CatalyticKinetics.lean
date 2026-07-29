import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

structure CatalyticKineticsPackage where
  substrateConcentration : Float
  productFormationRate : Float
  michaelisMentenModel : Prop
  rateConstant : Float
  steadyStateAssumption : Prop

structure CatalyticKineticsEvidence (K : CatalyticKineticsPackage) where
  substrateConcentrationClosed : K.substrateConcentration > 0.0
  productFormationRateClosed : K.productFormationRate > 0.0
  michaelisMentenModelClosed : K.michaelisMentenModel
  rateConstantClosed : K.rateConstant > 0.0
  steadyStateAssumptionClosed : K.steadyStateAssumption

def CatalyticKineticsClosed (K : CatalyticKineticsPackage) : Prop :=
  K.substrateConcentration > 0.0 ∧ K.productFormationRate > 0.0 ∧
  K.michaelisMentenModel ∧ K.rateConstant > 0.0 ∧ K.steadyStateAssumption

theorem catalytic_kinetics_closed (K : CatalyticKineticsPackage) (E : CatalyticKineticsEvidence K) :
    CatalyticKineticsClosed K := by
  exact And.intro E.substrateConcentrationClosed
    (And.intro E.productFormationRateClosed
      (And.intro E.michaelisMentenModelClosed
        (And.intro E.rateConstantClosed E.steadyStateAssumptionClosed)))

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse