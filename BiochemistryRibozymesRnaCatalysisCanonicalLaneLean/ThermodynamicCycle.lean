import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

structure ThermodynamicCyclePackage (P : ReactionKineticsPackage) (T : TransitionStateClassificationPackage P) where
  freeEnergyDecomposition : Prop
  enthalpyContribution : Prop
  entropyContribution : Prop
  equilibriumConstant : Prop
  cycleConsistency : Prop

structure ThermodynamicCycleEvidence (P : ReactionKineticsPackage) (T : TransitionStateClassificationPackage P) (Cyc : ThermodynamicCyclePackage P T) where
  freeEnergyDecompositionClosed : Cyc.freeEnergyDecomposition
  enthalpyContributionClosed : Cyc.enthalpyContribution
  entropyContributionClosed : Cyc.entropyContribution
  equilibriumConstantClosed : Cyc.equilibriumConstant
  cycleConsistencyClosed : Cyc.cycleConsistency

def ThermodynamicCycleClosed (P : ReactionKineticsPackage) (T : TransitionStateClassificationPackage P) (Cyc : ThermodynamicCyclePackage P T) : Prop :=
  Cyc.freeEnergyDecomposition ∧ Cyc.enthalpyContribution ∧ Cyc.entropyContribution ∧ Cyc.equilibriumConstant ∧ Cyc.cycleConsistency

theorem thermodynamic_cycle_closed_from_evidence (P : ReactionKineticsPackage) (T : TransitionStateClassificationPackage P) (Cyc : ThermodynamicCyclePackage P T) (E : ThermodynamicCycleEvidence P T Cyc) :
    ThermodynamicCycleClosed P T Cyc := by
  exact And.intro E.freeEnergyDecompositionClosed
    (And.intro E.enthalpyContributionClosed
      (And.intro E.entropyContributionClosed
        (And.intro E.equilibriumConstantClosed E.cycleConsistencyClosed)))

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse