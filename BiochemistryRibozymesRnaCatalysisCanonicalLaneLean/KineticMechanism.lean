import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : Prop
  transitionStateTheory : Prop
  catalysisModel : Prop
  substrateBinding : Prop
  productFormation : Prop

structure ReactionKineticsEvidence (P : ReactionKineticsPackage) where
  rateLawClosed : P.rateLaw
  transitionStateTheoryClosed : P.transitionStateTheory
  catalysisModelClosed : P.catalysisModel
  substrateBindingClosed : P.substrateBinding
  productFormationClosed : P.productFormation

def ReactionKineticsClosed (P : ReactionKineticsPackage) : Prop :=
  P.rateLaw ∧ P.transitionStateTheory ∧ P.catalysisModel ∧ P.substrateBinding ∧ P.productFormation

theorem reaction_kinetics_closed_from_evidence (P : ReactionKineticsPackage) (E : ReactionKineticsEvidence P) :
    ReactionKineticsClosed P := by
  exact And.intro E.rateLawClosed
    (And.intro E.transitionStateTheoryClosed
      (And.intro E.catalysisModelClosed
        (And.intro E.substrateBindingClosed E.productFormationClosed)))

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse