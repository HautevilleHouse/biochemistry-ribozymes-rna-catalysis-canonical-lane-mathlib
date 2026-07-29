import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

structure ActiveSitePackage where
  metalIonCoordination : Prop
  catalyticResidues : Prop
  substrateBindingMode : Prop
  transitionStateStabilization : Prop

structure ActiveSiteEvidence (P : ActiveSitePackage) where
  metalIonCoordinationClosed : P.metalIonCoordination
  catalyticResiduesClosed : P.catalyticResidues
  substrateBindingModeClosed : P.substrateBindingMode
  transitionStateStabilizationClosed : P.transitionStateStabilization

def ActiveSiteClosed (P : ActiveSitePackage) : Prop :=
  P.metalIonCoordination ∧ P.catalyticResidues ∧ P.substrateBindingMode ∧ P.transitionStateStabilization

theorem active_site_closed_from_evidence (P : ActiveSitePackage) (E : ActiveSiteEvidence P) :
    ActiveSiteClosed P := by
  exact And.intro E.metalIonCoordinationClosed
    (And.intro E.catalyticResiduesClosed
      (And.intro E.substrateBindingModeClosed E.transitionStateStabilizationClosed))

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse