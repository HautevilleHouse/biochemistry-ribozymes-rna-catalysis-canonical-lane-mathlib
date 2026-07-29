import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

structure HueckelMolecularOrbital where
  basisOrbitals : Type
  hamiltonianMatrix : Type
  overlapMatrix : Type
  secularEquationSolvable : Prop
  homoLumoGap : Prop
  aromaticStabilization : Prop

structure HueckelMolecularOrbitalEvidence (H : HueckelMolecularOrbital) where
  secularEquationSolvableClosed : H.secularEquationSolvable
  homoLumoGapClosed : H.homoLumoGap
  aromaticStabilizationClosed : H.aromaticStabilization

def HueckelMolecularOrbitalClosed (H : HueckelMolecularOrbital) : Prop :=
  H.secularEquationSolvable ∧ H.homoLumoGap ∧ H.aromaticStabilization

theorem hueckel_molecular_orbital_closed_from_evidence
    (H : HueckelMolecularOrbital) (E : HueckelMolecularOrbitalEvidence H) :
    HueckelMolecularOrbitalClosed H := by
  exact And.intro E.secularEquationSolvableClosed
    (And.intro E.homoLumoGapClosed E.aromaticStabilizationClosed)

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse