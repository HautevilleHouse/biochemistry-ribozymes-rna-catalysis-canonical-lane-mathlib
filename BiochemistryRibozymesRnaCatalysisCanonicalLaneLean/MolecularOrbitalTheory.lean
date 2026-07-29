import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

structure MolecularOrbitalPackage where
  orbitalEnergies : List Float
  homoEnergy : Float
  lumoEnergy : Float
  bondOrders : List (String × Float)
  orbitalEnergiesCalculated : Prop
  homoEnergyDetermined : Prop
  lumoEnergyDetermined : Prop
  orbitalEnergiesTerm : orbitalEnergiesCalculated
  homoEnergyTerm : homoEnergyDetermined
  lumoEnergyTerm : lumoEnergyDetermined

structure MolecularOrbitalEvidence (M : MolecularOrbitalPackage) where
  orbitalEnergiesCalculatedClosed : M.orbitalEnergiesCalculated
  homoEnergyDeterminedClosed : M.homoEnergyDetermined
  lumoEnergyDeterminedClosed : M.lumoEnergyDetermined

def MolecularOrbitalClosed (M : MolecularOrbitalPackage) : Prop :=
  M.orbitalEnergiesCalculated ∧ M.homoEnergyDetermined ∧ M.lumoEnergyDetermined

theorem molecular_orbital_closed_from_evidence (M : MolecularOrbitalPackage) (E : MolecularOrbitalEvidence M) :
  MolecularOrbitalClosed M := by
  exact And.intro E.orbitalEnergiesCalculatedClosed (And.intro E.homoEnergyDeterminedClosed E.lumoEnergyDeterminedClosed)

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse
