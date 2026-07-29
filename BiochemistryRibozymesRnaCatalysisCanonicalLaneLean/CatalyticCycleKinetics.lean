import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

structure CatalyticCyclePackage where
  substrateBindingStep : Prop
  chemicalStep : Prop
  productReleaseStep : Prop
  rateLimitingStep : Prop
  kcat : Prop
  Km : Prop

structure CatalyticCycleEvidence (C : CatalyticCyclePackage) where
  substrateBindingStepClosed : C.substrateBindingStep
  chemicalStepClosed : C.chemicalStep
  productReleaseStepClosed : C.productReleaseStep
  rateLimitingStepClosed : C.rateLimitingStep
  kcatClosed : C.kcat
  KmClosed : C.Km

def CatalyticCycleClosed (C : CatalyticCyclePackage) : Prop :=
  C.substrateBindingStep ∧ C.chemicalStep ∧ C.productReleaseStep ∧
  C.rateLimitingStep ∧ C.kcat ∧ C.Km

theorem catalytic_cycle_closed_from_evidence (C : CatalyticCyclePackage) (E : CatalyticCycleEvidence C) :
    CatalyticCycleClosed C := by
  exact And.intro E.substrateBindingStepClosed
    (And.intro E.chemicalStepClosed
      (And.intro E.productReleaseStepClosed
        (And.intro E.rateLimitingStepClosed
          (And.intro E.kcatClosed E.KmClosed))))

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse