import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

structure TransitionStateClassificationPackage (P : ReactionKineticsPackage) where
  targetMolecule : Type u
  transitionStateGeometry : Prop
  energyBarrier : Prop
  catalyticMechanism : Prop
  rateEnhancement : Prop

structure TransitionStateClassificationEvidence (P : ReactionKineticsPackage) (T : TransitionStateClassificationPackage P) where
  transitionStateGeometryClosed : T.transitionStateGeometry
  energyBarrierClosed : T.energyBarrier
  catalyticMechanismClosed : T.catalyticMechanism
  rateEnhancementClosed : T.rateEnhancement

def TransitionStateClassificationClosed (P : ReactionKineticsPackage) (T : TransitionStateClassificationPackage P) : Prop :=
  T.transitionStateGeometry ∧ T.energyBarrier ∧ T.catalyticMechanism ∧ T.rateEnhancement

theorem transition_state_classification_closed_from_evidence (P : ReactionKineticsPackage) (T : TransitionStateClassificationPackage P) (E : TransitionStateClassificationEvidence P T) :
    TransitionStateClassificationClosed P T := by
  exact And.intro E.transitionStateGeometryClosed
    (And.intro E.energyBarrierClosed
      (And.intro E.catalyticMechanismClosed E.rateEnhancementClosed))

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse