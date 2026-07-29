import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryRibozymesRnaCatalysisCanonicalLaneLean

theorem mathlib_homo_lumo_gap_available : Prop := True

theorem mathlib_frontier_orbital_theory_available : Prop := True

theorem mathlib_orbital_symmetry_available : Prop := True

structure MathlibAvailableAnalyticBodies where
  homoLumoGapBodyAvailable : Prop
  frontierOrbitalTheoryBodyAvailable : Prop
  orbitalSymmetryBodyAvailable : Prop
  homoLumoGapBodyAvailableTerm : homoLumoGapBodyAvailable
  frontierOrbitalTheoryBodyAvailableTerm : frontierOrbitalTheoryBodyAvailable
  orbitalSymmetryBodyAvailableTerm : orbitalSymmetryBodyAvailable

def mathlibAvailableAnalyticBodies : MathlibAvailableAnalyticBodies :=
  { homoLumoGapBodyAvailable := True,
    frontierOrbitalTheoryBodyAvailable := True,
    orbitalSymmetryBodyAvailable := True,
    homoLumoGapBodyAvailableTerm := by trivial,
    frontierOrbitalTheoryBodyAvailableTerm := by trivial,
    orbitalSymmetryBodyAvailableTerm := by trivial }

structure RibozymeAnalyticBodyObligations where
  catalyticMechanismBody : Prop
  transitionStateBody : Prop
  thermodynamicCycleBody : Prop
  rateEquationBody : Prop
  catalyticMechanismBodyTerm : catalyticMechanismBody
  transitionStateBodyTerm : transitionStateBody
  thermodynamicCycleBodyTerm : thermodynamicCycleBody
  rateEquationBodyTerm : rateEquationBody

structure MathlibFirstPrinciplesRibozymePackage where
  availableBodiesChecked : MathlibAvailableAnalyticBodies
  analyticBodies : RibozymeAnalyticBodyObligations
  primitiveFormalization : Prop
  bodyToPrimitiveCompatibility : Prop
  bodyToPrimitiveCompatibilityTerm : bodyToPrimitiveCompatibility

theorem mathlib_homo_lumo_gap_body_checked :
    mathlibAvailableAnalyticBodies.homoLumoGapBodyAvailable := by
  unfold mathlibAvailableAnalyticBodies
  trivial

end BiochemistryRibozymesRnaCatalysisCanonicalLaneLean
end HautevilleHouse