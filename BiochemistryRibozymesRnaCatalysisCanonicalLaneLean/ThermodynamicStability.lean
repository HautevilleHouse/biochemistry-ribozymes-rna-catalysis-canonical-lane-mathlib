import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

structure ThermodynamicStabilityPackage where
  foldingFreeEnergy : Prop
  bindingFreeEnergy : Prop
  activationEnergy : Prop
  meltingTemperature : Prop
  equilibriumConstant : Prop

structure ThermodynamicStabilityEvidence (T : ThermodynamicStabilityPackage) where
  foldingFreeEnergyClosed : T.foldingFreeEnergy
  bindingFreeEnergyClosed : T.bindingFreeEnergy
  activationEnergyClosed : T.activationEnergy
  meltingTemperatureClosed : T.meltingTemperature
  equilibriumConstantClosed : T.equilibriumConstant

def ThermodynamicStabilityClosed (T : ThermodynamicStabilityPackage) : Prop :=
  T.foldingFreeEnergy ∧ T.bindingFreeEnergy ∧ T.activationEnergy ∧
  T.meltingTemperature ∧ T.equilibriumConstant

theorem thermodynamic_stability_closed_from_evidence (T : ThermodynamicStabilityPackage) (E : ThermodynamicStabilityEvidence T) :
    ThermodynamicStabilityClosed T := by
  exact And.intro E.foldingFreeEnergyClosed
    (And.intro E.bindingFreeEnergyClosed
      (And.intro E.activationEnergyClosed
        (And.intro E.meltingTemperatureClosed E.equilibriumConstantClosed)))

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse