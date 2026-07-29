import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  reactants : List String
  products : List String
  equilibriumConstant : Float
  deltaG : Float
  temperature : Float
  equilibriumConstantCalculated : Prop
  deltaGCalculated : Prop
  eqConstantTerm : equilibriumConstantCalculated
  deltaGTerm : deltaGCalculated

structure ChemicalEquilibriumEvidence (E : ChemicalEquilibriumPackage) where
  equilibriumConstantCalculatedClosed : E.equilibriumConstantCalculated
  deltaGCalculatedClosed : E.deltaGCalculated

def ChemicalEquilibriumClosed (E : ChemicalEquilibriumPackage) : Prop :=
  E.equilibriumConstantCalculated ∧ E.deltaGCalculated

theorem chemical_equilibrium_closed_from_evidence (E : ChemicalEquilibriumPackage) (Ev : ChemicalEquilibriumEvidence E) :
  ChemicalEquilibriumClosed E := by
  exact And.intro Ev.equilibriumConstantCalculatedClosed Ev.deltaGCalculatedClosed

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse
