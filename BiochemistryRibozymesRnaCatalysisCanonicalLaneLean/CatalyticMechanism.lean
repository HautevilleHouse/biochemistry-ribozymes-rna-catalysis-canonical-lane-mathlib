import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

structure CatalyticMechanismPackage where
  activeSiteResidues : List String
  catalyticStepDescriptions : List String
  rateLimitingStepIdentified : Prop
  transitionStateStabilized : Prop
  rateLimitingStepIdentifiedTerm : rateLimitingStepIdentified
  transitionStateStabilizedTerm : transitionStateStabilized

structure CatalyticMechanismEvidence (C : CatalyticMechanismPackage) where
  rateLimitingStepIdentifiedClosed : C.rateLimitingStepIdentified
  transitionStateStabilizedClosed : C.transitionStateStabilized

def CatalyticMechanismClosed (C : CatalyticMechanismPackage) : Prop :=
  C.rateLimitingStepIdentified ∧ C.transitionStateStabilized

theorem catalytic_mechanism_closed_from_evidence (C : CatalyticMechanismPackage) (E : CatalyticMechanismEvidence C) :
  CatalyticMechanismClosed C := by
  exact And.intro E.rateLimitingStepIdentifiedClosed E.transitionStateStabilizedClosed

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse
